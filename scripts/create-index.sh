#!/bin/bash

# Script to create an index.html file with links to all HTML files in the repo root
# Creates a table of contents with minimal elegant CSS styling

set -e  # Exit on any error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the repo root (parent directory of scripts)
REPO_ROOT="$(dirname "$SCRIPT_DIR")"

# Change to repo root
cd "$REPO_ROOT"

# Output file
INDEX_FILE="index.html"

echo "Creating table of contents in $INDEX_FILE..."

# Find all HTML and PDF files in the repo root
declare -A presentations

# Find HTML files (excluding index.html)
while IFS= read -r -d '' file; do
    if [[ "$(basename "$file")" != "index.html" ]]; then
        basename="${file%.html}"
        basename="${basename#./}"
        presentations["$basename"]="${presentations[$basename]:-}|html"
    fi
done < <(find . -maxdepth 1 -name "*.html" -print0 2>/dev/null)

# Find PDF files
while IFS= read -r -d '' file; do
    basename="${file%.pdf}"
    basename="${basename#./}"
    presentations["$basename"]="${presentations[$basename]:-}|pdf"
done < <(find . -maxdepth 1 -name "*.pdf" -print0 2>/dev/null)

# Start creating the HTML content
cat > "$INDEX_FILE" << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Presentations</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            line-height: 1.6;
            color: #333;
            background: white;
            max-width: 600px;
            margin: 3rem auto;
            padding: 0 2rem;
        }
        
        ul {
            list-style: none;
            padding: 0;
        }
        
        li {
            margin-bottom: 0.75rem;
        }
        
        a {
            text-decoration: none;
            color: inherit;
            transition: color 0.2s ease;
        }
        
        a:hover .format-badge {
            opacity: 0.8;
        }
        
        .format-badge {
            display: inline-block;
            font-size: 0.75rem;
            padding: 0.2rem 0.5rem;
            border-radius: 3px;
            margin-left: 0.5rem;
            font-weight: 500;
        }
        
        .format-html {
            background: #e3f2fd;
            color: #1976d2;
        }
        
        .format-pdf {
            background: #ffebee;
            color: #c62828;
        }
        
        .no-presentations {
            text-align: center;
            color: #666;
            font-style: italic;
            margin: 3rem 0;
        }
    </style>
</head>
<body>
EOF

# Check if any presentations exist
if [ ${#presentations[@]} -eq 0 ]; then
    echo "    <div class=\"no-presentations\">" >> "$INDEX_FILE"
    echo "        <p>No presentation files found.</p>" >> "$INDEX_FILE"
    echo "    </div>" >> "$INDEX_FILE"
else
    echo "    <ul>" >> "$INDEX_FILE"
    
    # Sort presentations by name and iterate
    while IFS= read -r basename; do
        formats="${presentations[$basename]}"
        title=$(echo "$basename" | sed 's/_/ /g')
        
        echo "        <li style=\"padding: 0.75rem 0; border-bottom: 1px solid #eee;\">" >> "$INDEX_FILE"
        echo "            <span>$title</span>" >> "$INDEX_FILE"
        
        # Add HTML badge/link if available
        if [[ "$formats" == *"html"* ]]; then
            echo "            <a href=\"./$basename.html\"><span class=\"format-badge format-html\">HTML</span></a>" >> "$INDEX_FILE"
        fi
        
        # Add PDF badge/link if available
        if [[ "$formats" == *"pdf"* ]]; then
            echo "            <a href=\"./$basename.pdf\"><span class=\"format-badge format-pdf\">PDF</span></a>" >> "$INDEX_FILE"
        fi
        
        echo "        </li>" >> "$INDEX_FILE"
    done < <(printf '%s\n' "${!presentations[@]}" | sort)
    
    echo "    </ul>" >> "$INDEX_FILE"
fi

# Add GitHub repository link at the bottom
cat >> "$INDEX_FILE" << 'EOF'
    
    <div style="margin-top: 3rem; padding-top: 2rem; border-top: 1px solid #eee; text-align: center;">
        <p style="font-size: 0.9rem; color: #666;">
            <a href="https://github.com/DavidMStraub/public-slides" style="color: #0066cc; text-decoration: none;">
                View source on GitHub
            </a>
        </p>
    </div>

</body>
</html>
EOF

if [ ${#presentations[@]} -eq 0 ]; then
    echo "Created $INDEX_FILE (no files found)"
else
    echo "Created $INDEX_FILE with ${#presentations[@]} presentation(s)"
fi

echo "✓ Table of contents generated successfully!"
