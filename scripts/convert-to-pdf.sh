#!/bin/bash

# Script to convert Markdown lecture notes to PDF via Pandoc
# Handles SVG images by downloading and converting them to PDF

set -e

# Check if required tools are installed
command -v pandoc >/dev/null 2>&1 || { echo "Error: pandoc is required but not installed."; exit 1; }
command -v inkscape >/dev/null 2>&1 || command -v rsvg-convert >/dev/null 2>&1 || { echo "Error: inkscape or rsvg-convert is required but not installed."; exit 1; }
command -v curl >/dev/null 2>&1 || command -v wget >/dev/null 2>&1 || { echo "Error: curl or wget is required but not installed."; exit 1; }

# Get input file (default: Programmieren - Folien.md)
INPUT_FILE="${1:-Programmieren - Folien.md}"
OUTPUT_FILE="${INPUT_FILE%.md}.pdf"
TEMP_DIR=$(mktemp -d)
TEMP_MD="$TEMP_DIR/temp.md"
IMAGES_DIR="$TEMP_DIR/images"

mkdir -p "$IMAGES_DIR"

# Get the directory of the input file for resolving relative paths
INPUT_DIR=$(dirname "$INPUT_FILE")
INPUT_FILENAME=$(basename "$INPUT_FILE")

echo "Converting: $INPUT_FILE -> $OUTPUT_FILE"
echo "Temporary directory: $TEMP_DIR"

# Copy input file to temp location
cp "$INPUT_FILE" "$TEMP_MD"

# Find all image URLs in the markdown file (SVG, PNG, JPG, etc.)
echo "Searching for images..."

# Extract all image URLs
IMAGE_URLS=$(grep -oP '!\[.*?\]\(\K[^)]+(?=\))' "$INPUT_FILE" || true)

counter=1
declare -A url_map

while IFS= read -r url; do
    [[ -z "$url" ]] && continue
    
    echo "Processing: $url"
    
    # Get file extension
    ext="${url##*.}"
    ext_lower=$(echo "$ext" | tr '[:upper:]' '[:lower:]')
    
    if [[ $url == http* ]]; then
        # Download remote image
        downloaded_file="$IMAGES_DIR/image_$counter.$ext"
        
        # Try downloading with retries
        max_retries=3
        retry=0
        download_success=false
        
        while [[ $retry -lt $max_retries ]] && [[ $download_success == false ]]; do
            if command -v curl >/dev/null 2>&1; then
                curl -s -L --max-time 60 --connect-timeout 10 --retry 2 -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" "$url" -o "$downloaded_file"
                if [[ $? -eq 0 ]] && [[ -s "$downloaded_file" ]] && [[ $(wc -c < "$downloaded_file") -gt 100 ]]; then
                    download_success=true
                else
                    echo "  -> Retry $((retry + 1))/$max_retries"
                    rm -f "$downloaded_file"
                fi
            else
                wget -q --timeout=60 --tries=3 --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" -O "$downloaded_file" "$url"
                if [[ $? -eq 0 ]] && [[ -s "$downloaded_file" ]] && [[ $(wc -c < "$downloaded_file") -gt 100 ]]; then
                    download_success=true
                else
                    echo "  -> Retry $((retry + 1))/$max_retries"
                    rm -f "$downloaded_file"
                fi
            fi
            ((retry++))
        done
        
        if [[ $download_success == false ]]; then
            echo "  -> Failed to download after $max_retries attempts"
            continue
        fi
        
        # Convert SVG to PDF
        if [[ $ext_lower == "svg" ]]; then
            pdf_file="$IMAGES_DIR/image_$counter.pdf"
            
            if command -v inkscape >/dev/null 2>&1; then
                inkscape "$downloaded_file" --export-filename="$pdf_file" --export-type=pdf >/dev/null 2>&1
                if [[ $? -ne 0 || ! -f "$pdf_file" ]]; then
                    echo "  -> Failed to convert SVG with inkscape, trying rsvg-convert"
                    if command -v rsvg-convert >/dev/null 2>&1; then
                        if rsvg-convert -f pdf -o "$pdf_file" "$downloaded_file" && [[ -f "$pdf_file" ]]; then
                            url_map["$url"]="$pdf_file"
                            echo "  -> Downloaded and converted to: $pdf_file"
                        else
                            echo "  -> Failed to convert SVG"
                            continue
                        fi
                    else
                        echo "  -> Failed to convert SVG"
                        continue
                    fi
                else
                    url_map["$url"]="$pdf_file"
                    echo "  -> Downloaded and converted to: $pdf_file"
                fi
            else
                if rsvg-convert -f pdf -o "$pdf_file" "$downloaded_file" && [[ -f "$pdf_file" ]]; then
                    url_map["$url"]="$pdf_file"
                    echo "  -> Downloaded and converted to: $pdf_file"
                else
                    echo "  -> Failed to convert SVG"
                    continue
                fi
            fi
            
            counter=$((counter + 1))
        else
            # Keep non-SVG images as-is
            url_map["$url"]="$downloaded_file"
            echo "  -> Downloaded to: $downloaded_file"
            counter=$((counter + 1))
        fi
    else
        # Local image file
        # Try both as absolute and relative to input file
        local_path=""
        if [[ -f "$url" ]]; then
            local_path="$url"
        elif [[ -f "$INPUT_DIR/$url" ]]; then
            local_path="$INPUT_DIR/$url"
        fi
        
        if [[ -n "$local_path" ]]; then
            # Convert SVG to PDF
            if [[ $ext_lower == "svg" ]]; then
                pdf_file="$IMAGES_DIR/image_$counter.pdf"
                
                if command -v inkscape >/dev/null 2>&1; then
                    if inkscape "$local_path" --export-filename="$pdf_file" --export-type=pdf 2>/dev/null && [[ -f "$pdf_file" ]]; then
                        url_map["$url"]="$pdf_file"
                        echo "  -> Converted to: $pdf_file"
                    else
                        echo "  -> Failed to convert SVG"
                        continue
                    fi
                else
                    if rsvg-convert -f pdf -o "$pdf_file" "$local_path" && [[ -f "$pdf_file" ]]; then
                        url_map["$url"]="$pdf_file"
                        echo "  -> Converted to: $pdf_file"
                    else
                        echo "  -> Failed to convert SVG"
                        continue
                    fi
                fi
                
                counter=$((counter + 1))
            else
                # Copy non-SVG images
                copied_file="$IMAGES_DIR/image_$counter.$ext"
                cp "$local_path" "$copied_file"
                url_map["$url"]="$copied_file"
                echo "  -> Copied to: $copied_file"
                counter=$((counter + 1))
            fi
        else
            echo "  -> Warning: Local file not found: $url (tried $INPUT_DIR/$url)"
        fi
    fi
done <<< "$IMAGE_URLS"

# Replace SVG references with PDF references in the temp markdown file
for url in "${!url_map[@]}"; do
    pdf_path="${url_map[$url]}"
    # Escape special characters for sed
    escaped_url=$(echo "$url" | sed 's/[\/&]/\\&/g')
    escaped_pdf=$(echo "$pdf_path" | sed 's/[\/&]/\\&/g')
    sed -i "s/${escaped_url}/${escaped_pdf}/g" "$TEMP_MD"
done

echo "Converting Markdown to PDF with Pandoc..."

# Extract footer from YAML frontmatter before stripping
FOOTER=$(grep "^footer:" "$TEMP_MD" | sed 's/^footer: *//')

# Strip Marp-specific syntax from markdown but keep structure
sed -i '1,/^---$/d; /^---$/,/^---$/d' "$TEMP_MD"  # Remove YAML frontmatter more carefully
sed -i 's/!\[bg [^]]*\]/![]/g' "$TEMP_MD"  # Remove bg positioning directives

# Replace -> ligatures with Unicode arrow for LaTeX compatibility
sed -i 's/->/→/g' "$TEMP_MD"
sed -i 's/<!-- .* -->//g' "$TEMP_MD"  # Remove HTML comments

# Fix common LaTeX equation issues
# Remove $$ around align environments (align already creates math mode)
sed -i 's/\$\$\\begin{align}/\\begin{align}/g' "$TEMP_MD"
sed -i 's/\\end{align}\$\$/\\end{align}/g' "$TEMP_MD"

# Create custom LaTeX header for image sizing and larger headings
LATEX_HEADER="$TEMP_DIR/header.tex"
cat > "$LATEX_HEADER" << 'HEREDOC'
% Make all images max 0.5\textwidth
\usepackage{graphicx}
\setkeys{Gin}{width=0.5\textwidth,keepaspectratio}

% Modern fonts: Fira Sans headings, Charter body, Fira Mono code
\usepackage{fontspec}
\usepackage{XCharter}
\setsansfont{FiraSans}[
    Path=/usr/share/texlive/texmf-dist/fonts/opentype/public/fira/,
    Extension=.otf,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    BoldItalicFont=*-BoldItalic
]
\setmonofont{FiraMono}[
    Path=/usr/share/texlive/texmf-dist/fonts/opentype/public/fira/,
    Extension=.otf,
    Scale=0.90,
    UprightFont=*-Regular,
    BoldFont=*-Bold
]

% Make headings much larger with more spacing and sans-serif
\usepackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}
\titleformat{\section}{\sffamily\LARGE\bfseries}{\thesection}{1em}{}
\titlespacing*{\section}{0pt}{24pt}{12pt}
\titleformat{\subsection}{\sffamily\Large\bfseries}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{20pt}{10pt}
\titleformat{\subsubsection}{\sffamily\large\bfseries}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{0pt}{16pt}{8pt}

% Make document title Fira Sans Bold and left-aligned
\usepackage{titling}
\pretitle{\begin{flushleft}\sffamily\bfseries\huge}
\posttitle{\end{flushleft}}
\preauthor{\begin{flushleft}}
\postauthor{\end{flushleft}}
\predate{\begin{flushleft}}
\postdate{\end{flushleft}}

% Page header with footer content
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small FOOTERPLACEHOLDER}
\fancyhead[R]{\small\itshape\nouppercase{\leftmark}}
\fancyfoot[C]{\small\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
% Empty style for title page
\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

% Increase paragraph spacing and line spacing
\usepackage{setspace}
\setstretch{1.3}
\setlength{\parskip}{0.8em}

% Use ragged right (left-aligned) instead of justified text
\raggedright

% More spacing around lists
\usepackage{enumitem}
\setlist{itemsep=0.5em,parsep=0.3em}

% Add moderate padding to code blocks
\usepackage{xcolor}
\definecolor{shadecolor}{RGB}{248,248,248}
\usepackage{fancyvrb}
\usepackage{framed}
\RecustomVerbatimEnvironment{Verbatim}{Verbatim}{fontsize=\small}
HEREDOC

# Replace placeholder with actual footer content (escape special sed characters)
ESCAPED_FOOTER=$(echo "$FOOTER" | sed 's/[\/&]/\\&/g')
sed -i "s/FOOTERPLACEHOLDER/$ESCAPED_FOOTER/g" "$LATEX_HEADER"

# Convert to PDF using Pandoc with LaTeX
pandoc "$TEMP_MD" \
    -o "$OUTPUT_FILE" \
    --pdf-engine=xelatex \
    --shift-heading-level-by=-1 \
    -V geometry:margin=1in \
    -V documentclass=article \
    -V fontsize=11pt \
    --include-in-header="$LATEX_HEADER" \
    --highlight-style=tango \
    2>&1 | tee /tmp/pandoc_output.log

# Check if PDF was actually created
if [[ -f "$OUTPUT_FILE" ]]; then
    echo "Success! PDF created: $OUTPUT_FILE"
else
    echo "ERROR: PDF creation failed. See /tmp/pandoc_output.log for details"
    # Clean up temporary directory
    rm -rf "$TEMP_DIR"
    exit 1
fi

# Clean up temporary directory
rm -rf "$TEMP_DIR"
echo "Cleaned up temporary files"
