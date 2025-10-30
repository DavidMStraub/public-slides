---
marp: true
theme: hm
paginate: true
language: de
footer: Programmieren – D. Straub
headingDivider: 3
jupyter:
  jupytext:
    cell_metadata_filter: -all
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.17.3
  kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
---

# Programmieren

**Ingenieurinformatik Teil 1, Wintersemester 2025/26**

David Straub

## Gliederung

1. Einführung
2. [Grundlagen: Variablen, Datentypen, Verzweigungen](#grundlagen)
3. [Funktionen](#funktionen)
4. [Schleifen](#schleifen)
5. [Datenstrukturen](#datenstrukturen)
6. Module & Bibliotheken
7. Klassen
8. Dateien
9. Visualisierung
10. Numerik

## Einführung

1. ~~Warum Programmieren?~~
2. ~~Organisatorisches~~
3. Warum Python?
4. Python installieren


### Warum Python? Einfachheit


Python:

```python
print("Hallo Welt!")
```

Java:

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hallo Welt!");
    }
}
```

### Einfachheit: Liste der Quadrate der Zahlen von 0 bis 9

Python:

```python
quadrate = [x**2 for x in range(10)]
```

Fortran:

```fortran
program quadrate
implicit none
integer :: i
integer, dimension(10) :: quadrate
do i = 0, 9
    quadrate(i+1) = i**2
end do
end program quadrate
```

### Beliebtheit

![](https://i.postimg.cc/c4gkzN1w/image.png)

Quelle: [TIOBE](https://www.tiobe.com/tiobe-index/)

### Warum Beliebtheit wichtig ist

- Mehr Bibliotheken
- Mehr Dokumentation
- Mehr Jobs
- Bessere KI-Unterstützung

### Mythen über Python

Früher verbreitete Mythen über Python:

- Nur für Skripting
- Nur für Anfänger
- Langsam


Heute:

- Industriestandard für ML/AI
- Standard für wissenschaftliches Rechnen
- Weit verbreitet in Webentwicklung, Automatisierung, uvm.


### Zusammenfassung: Warum Python?

- Sehr einfach
- Extrem beliebt
- Weit verbreitet in Industrie und Wissenschaft
- Quelloffen & kostenlos

![bg right:40% 80%](https://www.python.org/static/community_logos/python-logo-generic.svg)

### Python installieren

- Anders als z.B. C++ ist Python eine *interpretierte* Programmiersprache, d.h. der Code wird zur Laufzeit Zeile für Zeile ausgeführt. 
- Das ausführende Programm heißt *Interpreter* und ist für alle gängigen Betriebssysteme verfügbar.

Anleitung:

- Windows: https://www.python.org/downloads/windows/ – herunterladen & installieren
    - oder einfach [WSL](https://learn.microsoft.com/de-de/windows/wsl/install)
- Ubuntu: `sudo apt install python3 python3-pip`
- MacOS: `brew install python`

Bitte *kein* Anaconda …

### Versionsgeschichte

| Version | Veröffentlichung    | EOL |
|---------|---------------------|-----|
| 3.9     | 2020-10             | **2025-10** |
| 3.10    | 2021-10             | 2026-10 |
| 3.11    | 2022-10             | 2027-10 |
| 3.12    | 2023-10             | 2028-10 |
| 3.13    | 2024-10             | 2029-10 |
| 3.14    | **2025-10**         | 2030-10 |

- Details: [Status of Python Versions](https://devguide.python.org/versions/)
- Diese Veranstaltung: Python 3.10 oder höher (3.12 oder 3.13 empfohlen)

### Konsole, Skript, Notebook

- Konsole: interaktive Eingabe von Python-Befehlen
    - nützlich als schneller Taschenrechner
- Skript: Python-Code in einer Datei mit der Endung `.py`
    - nützlich für längere Programme
- Jupyter Notebook: interaktive Umgebung für Datenanalyse und Visualisierung
    - nützlich für explorative Programmierung


### Python ausprobieren, ohne es zu installieren

- Python Online: https://pythononline.net/
- JupyterLite: https://jupyter.org/try
- FK07 DataHub (JupyterHub): https://datahub.cs.hm.edu/
- Github Codespaces: https://github.com/DavidMStraub/python-codespace


### One-Minute-Paper

Moodle: https://link.hm.edu/y4vj

- Schreiben Sie 3 Dinge auf, die Sie heute gelernt haben
- Was war am unklarsten?
- Gibt es etwas spezielles, das Sie in diesem Kurs lernen möchten?


## Grundlagen

1. Variablen
2. Einfache Datentypen (`int`, `bool`, `float`, `str`)
3. [Verzweigungen](#verzweigungen)

### Variablen

Variablen speichern Werte:

```python
x = 42
y = x
x = 100
print(y)
```

```python
print(x)
```

### Variablennamen: Fallstricke

```python
# class = "Mathematik"  # SyntaxError!
klass = "Mathematik"
print(klass)
```

```python
# Schlecht lesbar:
l = 1
I = 1  
O = 0
print(l, I, O)
```

### Namen: Konventionen

```python
# Variablen & Funktionen: snake_case 🐍
first_name = "Alice"
calculate_average()

# Konstanten: UPPER_SNAKE_CASE 📢
MAX_SIZE = 100
API_KEY = "secret"

# Klassen: PascalCase 🏛️
class UserAccount:
    pass

# Privat: führender Unterstrich 🔒
_internal_value = 42
__very_private = "secret"
```

### Ganze Zahlen (int)

Integers haben unbegrenzte Präzision:

```python
riesig = 2 ** 1000
print(len(str(riesig)))
```


```python
print(riesig % 1000)
```


### Division & Integers

```python
print(10 / 3)
```


```python
print(type(10 / 3))
```


```python
print(10 // 3)
```


```python
print(-10 // 3)
```



### Wahrheitswerte (bool)

Booleans sind eigentlich Integers:

```python
print(True + True)
```


```python
print(True * 42)
```


```python
print(False - True)
```

### Vergleichsoperatoren
```python
print(5 == 5)
```

```python
print(5 != 3)
```

```python
print(10 > 5)
```

```python
print(5 >= 5)
```

```python
print("Python" > "Java")  # Lexikografischer Vergleich
```


### Truthiness: Was ist wahr?

```python
print(bool(0))
```


```python
print(bool(42))
```


```python
print(bool(""))
```


```python
print(bool("0"))
```



### Vergleichsoperatoren: Chaining

```python
x = 5
print(1 < x < 10)
```


```python
print(10 < x < 20)
```


```python
print(1 < x > 3)
```

### Logische Operatoren

```python
print(True and False)
```

```python
print(True or False)
```

```python
print(not True)
```

```python
print(not False)
```

```python
print(not 0)
```

```python
print(not "")
```


### Kurzschlussauswertung

```python
print(False and 1/0)
```


```python
print(True or 1/0)
```


```python
print(0 and print("Hallo"))
```


### Gleitkommazahlen (float)

IEEE 754 Double Precision Fallstricke:

```python
print(0.1 + 0.1 + 0.1)
```


```python
print(0.1 + 0.1 + 0.1 == 0.3)
```


```python
x = 0.1
print(f"{x:.20f}")
```

### Vergleich von Gleitkommazahlen

```python
a = 0.1 + 0.1 + 0.1
b = 0.3
tolerance = 1e-10
print(abs(a - b) < tolerance)
```


### Extreme Werte

```python
print(1e308)
```


```python
print(1e309)
```


```python
print(1e-324)
```


```python
print(1e-325)
```


### Strings

```python
# Verschiedene Anführungszeichen
single = 'Hallo'
double = "Welt"
print(single + " " + double)
```

```python
triple = """Mehrzeiliger
String"""
print(triple)
```


### Strings und Unicode: Emoji

```python
# Strings unterstützen vollständig Unicode
message = "Python ist toll! 🐍✨"
print(message)
```

```python
# Emoji sind normale Zeichen
emoji_string = "🚀🌟💻"
print(len(emoji_string))
```


### Escape Sequences

```python
print("C:\new_folder\test.txt")
```


```python
print(r"C:\new_folder\test.txt")
```


```python
print("Zeile 1\nZeile 2\tTab")
```

### String-Formatierung mit f-Strings

```python
name = "Alice"
age = 25
print(f"Hallo, ich bin {name} und {age} Jahre alt")
```

Vorteile gegenüber älteren Methoden:
- Lesbar und intuitiv
- Direkte Variableneinbettung
- Schneller als `.format()` oder `%`-Formatierung
- Unterstützt Ausdrücke: `f"Das Ergebnis ist {x + y}"`



### f-String Formatierung

```python
number = 1234567.89
print(f"{number:,.2f}")
```


```python
print(f"{number:>15,.2f}")
```


```python
percent = 0.1234
print(f"{percent:.1%}")
```


### Aufgabe: Persönlicher Datenrechner

Schreibe ein Python-Skript, das persönliche Daten verarbeitet:

**Gegeben:**
- Name, Geburtsjahr, Größe (cm), Gewicht (kg)

**Berechne und gib aus:**
- Alter (aktuelles Jahr: 2025)
- BMI (Gewicht / (Größe in m)²)
- Personendaten als formatierte f-Strings
- Wahrheitswerte für: ist volljährig, ist normalgewichtig (BMI 18,5-24,9)


### Kontrollstrukturen: Übersicht

**Was sind Kontrollstrukturen?**
- Mechanismen zur Steuerung des Programmflusses
- Bestimmen die Reihenfolge der Befehlsausführung
- Ermöglichen komplexe Programmlogik

**Grundtypen:**
1. **Sequenz** – Befehle nacheinander (Standard)
2. **Verzweigung** – Bedingte Ausführung (`if`, `elif`, `else`)
3. **Wiederholung** – Schleifen (`for`, `while`)


### Verzweigungen

**Konzept:**
- Programme müssen Entscheidungen treffen
- Verschiedene Pfade basierend auf Bedingungen
- Ermöglicht adaptive und intelligente Programme

**Syntax-Muster:**
```python
if bedingung1:
    # Code wenn bedingung1 wahr
elif bedingung2:
    # Code wenn bedingung2 wahr  
else:
    # Code wenn keine Bedingung wahr
```

### Verzweigungen: Wichtige Konzepte

- Einrückung (Indentation) definiert Codeblöcke
- Bedingungen werden von oben nach unten geprüft
- Nur der erste wahre Zweig wird ausgeführt


### Verzweigungen: Truthiness in der Praxis

```python
name = ""
if name:
    print("Name ist vorhanden")
else:
    print("Kein Name angegeben")
```


```python
name = "Alice"
if name:
    print("Name ist vorhanden")
else:
    print("Kein Name angegeben")
```



### Komplexe Bedingungen

```python
age = 17
has_id = True
if age >= 18 and has_id:
    print("Einlass gewährt")
elif age >= 16:
    print("Einlass mit Begleitung")
else:
    print("Kein Einlass")
```


```python
age = 20
has_id = False
if age >= 18 and has_id:
    print("Einlass gewährt")
elif age >= 16:
    print("Einlass mit Begleitung") 
else:
    print("Kein Einlass")
```

### Aufgabe

Schreibe ein Python-Programm um zu entscheiden, ob eine Rakete starten darf.

**Eingaben:**
- Treibstoff (%), Temperatur (°C), Crew (ja/nein), Wetter

**Startbedingungen:**
- Treibstoff ≥ 70%, Temperatur < 100°C, Crew bereit, Wetter ≠ "storm"

**Ausgabe:**
- ✅ "🚀 Startfreigabe erteilt!" oder ❌ "Start abgebrochen!" + Grund

![bg right:30%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/SpaceX_Starship_ignition_during_IFT-5.jpg/960px-SpaceX_Starship_ignition_during_IFT-5.jpg)

## Funktionen

### Kapselung von Komplexität

&nbsp;

> The greatest limitation in writing software is our ability to understand the systems we are creating.
>
> …
>
>There are two general approaches to fighting complexity … The first is to eliminate complexity by making code **simpler and more obvious**. … The second is to **encapsulate it**, so that programmers can work on a system without being exposed to all of its complexity at once.

&nbsp;

John Ousterhout, “A Philosophy of Software Design”


### Warum Funktionen? 

Das DRY-Prinzip: **"Don't Repeat Yourself"**

```python
FOOT = 0.3048
NAUTICAL_MILE = 1852.0

altitude_ft = 35000
altitude_m = altitude_ft * FOOT  # Flughöhe
print(f"Flughöhe: {altitude_ft} ft = {altitude_m:.0f} m")

distance_nm = 450
distance_m = distance_nm * NAUTICAL_MILE  # Strecke
print(f"Strecke: {distance_nm} nm = {distance_m:.0f} m")

# usw. ...
```

Probleme: Code-Duplikation, Fehleranfällig, schwer zu ändern

### Funktionen: Kapselung (*encapsulation*) der Funktionalität

```python
def fuss_zu_meter(fuss):
    return fuss * 0.3048

def seemeilen_zu_meter(seemeilen):
    return seemeilen * 1852.0


# Jetzt einfach und wiederverwendbar:
print(f"Flughöhe: {fuss_zu_meter(35000):.0f} m")
print(f"Landebahn: {fuss_zu_meter(8000):.0f} m")
print(f"Reichweite: {seemeilen_zu_meter(3000):.0f} m")
```

**Vorteile:** Wiederverwendbar, lesbar, wartbar, weniger Fehler!

### Anatomie einer Funktion

```python
def funktionsname(parameter1, parameter2):
    """Optionaler Docstring zur Dokumentation"""
    # Funktions-Code hier
    ergebnis = parameter1 + parameter2
    return ergebnis  # Optional: Rückgabewert
```

**Aufbau:**
- `def` - Schlüsselwort für Funktionsdefinition
- `funktionsname` - Aussagekräftiger Name (snake_case 🐍)
- `()` - Parameter in runden Klammern
- `:` - Doppelpunkt zum Start des Funktionsblocks
- Eingerückter Code-Block
- `return` - Optionale Rückgabe

### Erste einfache Funktion

```python
def mission_start():
    print("🚀 Mission Control: Start-Sequenz initiiert")
    print("✅ Alle Systeme bereit für den Start!")

# Funktion aufrufen:
mission_start()
```

### Funktionen mit Parametern

```python
def mission_status(spacecraft):
    print(f"🛰️ {spacecraft} Status: Alle Systeme nominal")
    print("Bereit für nächste Manöver-Phase")

mission_status("ISS")
mission_status("Artemis I")
mission_status("Dragon Capsule")
```

### Mehrere Parameter

```python
def flugdaten_anzeigen(flugzeug_typ, hoehe_ft, geschwindigkeit_kn):
    hoehe_m = hoehe_ft * 0.3048
    geschwindigkeit_kmh = geschwindigkeit_kn * 1.852
    print(f"✈️ {flugzeug_typ}")
    print(f"Höhe: {hoehe_ft} ft ({hoehe_m:.0f} m)")
    print(f"Geschwindigkeit: {geschwindigkeit_kn} kn ({geschwindigkeit_kmh:.0f} km/h)")
    
# Verschiedene Aufrufe:
flugdaten_anzeigen("Airbus A380", 35000, 450)
flugdaten_anzeigen(hoehe_ft=25000, flugzeug_typ="Boeing 737", geschwindigkeit_kn=420)
```

### Rückgabewerte: return

```python
def berechne_orbital_geschwindigkeit(hoehe_km):
    # Vereinfachte Berechnung für kreisförmige Umlaufbahn
    erdradius = 6371  # km
    gravitationskonstante = 398600  # km³/s²
    r = erdradius + hoehe_km
    geschwindigkeit = (gravitationskonstante / r) ** 0.5
    return geschwindigkeit

# ISS-Orbitalgeschwindigkeit berechnen:
iss_hoehe = 408  # km
v_orbital = berechne_orbital_geschwindigkeit(iss_hoehe)
print(f"ISS Orbitalgeschwindigkeit: {v_orbital:.2f} km/s")
```


### Mehrere Rückgabewerte

```python
def triebwerk_analyse(schub_newton, treibstoff_verbrauch_kg_s):
    spezifischer_impuls = schub_newton / treibstoff_verbrauch_kg_s
    triebwerk_masse = 1000  # kg
    schub_gewichts_verhaeltnis = schub_newton / (triebwerk_masse * 9.81)
    return spezifischer_impuls, schub_gewichts_verhaeltnis

isp, twr = triebwerk_analyse(2200000, 700)
print(f"Spez. Impuls: {isp:.0f} N⋅s/kg, Schub/Gewicht: {twr:.1f}")
```

Mehr zu „Tupeln“ (`x, y`) in Kapitel 5 (Datenstrukturen)!


### Standardwerte für Parameter

```python
def mission_planung(ziel, startdatum="TBD", crew_groesse=3, notfall_backup=True):
    print(f"🚀 Mission zum {ziel}")
    print(f"Start: {startdatum}")
    print(f"Crew: {crew_groesse} Astronauten")
    if notfall_backup:
        print("✅ Notfall-Backup-Systeme aktiv")
        
# Verschiedene Missionen:
mission_planung("Mond")
mission_planung("Mars", "2026-07-15")
mission_planung("ISS", crew_groesse=6)
mission_planung("Europa", startdatum="2030-01-01", notfall_backup=False)
```

### Lokale vs. Globale Variablen
```python
# Globale Variable
temperatur = 20  # °C

def berechne_luftdichte(hoehe_m):
    # Lokale Variable (nur in der Funktion sichtbar)
    temperatur = -50  # °C in der Stratosphäre
    # Diese lokale Variable "überdeckt" die globale
    dichte = 1.225 * (1 - 0.0065 * hoehe_m / 288.15) ** 4.256
    return dichte

print(f"Bodentemperatur: {temperatur}°C")  # 20°C (global)

luftdichte = berechne_luftdichte(10000)
print(f"Luftdichte in 10km Höhe: {luftdichte:.3f} kg/m³")

print(f"Nach Funktionsaufruf: {temperatur}°C")  # Immer noch 20°C!
```


### Funktionen mit Verzweigungen

```python
def startfreigabe_pruefen(treibstoff_prozent, wetter, crew_bereit, systeme_ok):
    if treibstoff_prozent < 95:
        return False, "Treibstoff unzureichend"
    elif wetter != "gut":
        return False, f"Wetter ungünstig: {wetter}"
    elif not crew_bereit:
        return False, "Crew nicht bereit"
    elif not systeme_ok:
        return False, "Systeme nicht nominal"
    else:
        return True, "🚀 Startfreigabe erteilt!"

# Verschiedene Szenarien testen:
freigabe, grund = startfreigabe_pruefen(98, "gut", True, True)
print(f"Freigabe: {freigabe} - {grund}")

freigabe, grund = startfreigabe_pruefen(90, "gut", True, True)
print(f"Freigabe: {freigabe} - {grund}")
```
### Kompakte Startfreigabe-Funktion

```python
def schnelle_startpruefung(treibstoff, wetter, crew, systeme):
    return (treibstoff >= 95 and wetter == "gut" and 
            crew and systeme)

# Verschiedene Raketen einzeln prüfen:
falcon_heavy = schnelle_startpruefung(98, "gut", True, True)
sls = schnelle_startpruefung(92, "gut", True, True)
starship = schnelle_startpruefung(99, "windig", True, True)

print(f"Falcon Heavy: {'✅ GO' if falcon_heavy else '❌ NO-GO'}")
print(f"SLS: {'✅ GO' if sls else '❌ NO-GO'}")
print(f"Starship: {'✅ GO' if starship else '❌ NO-GO'}")
```

### Reine Funktionen und Nebeneffekte

**Reine Funktionen** haben zwei wichtige Eigenschaften:
1. **Determinismus**: Gleiche Eingabe → Gleiche Ausgabe
2. **Keine Nebeneffekte**: Ändern nichts außerhalb der Funktion

```python
# Reine Funktion
def addiere(a, b):
    return a + b

# Unreine Funktion (Nebeneffekt: print)
def addiere_mit_ausgabe(a, b):
    ergebnis = a + b
    print(f"Ergebnis: {ergebnis}")  # Nebeneffekt!
    return ergebnis
```

Weitere Beispiele für Nebeneffekte: Ändern globaler Variablen, Schreiben in Dateien, etc.

### Vorteile reiner Funktionen

- **Testbarkeit**: Einfach zu testen (vorhersagbare Ausgabe)
- **Debugging**: Fehler leichter zu finden
- **Wiederverwendbarkeit**: Funktionieren in jedem Kontext
- **Parallelisierung**: Können sicher parallel ausgeführt werden

```python
# Reine Funktion - immer testbar
def celsius_zu_fahrenheit(celsius):
    return celsius * 9/5 + 32

# Test ist einfach und zuverlässig
assert celsius_zu_fahrenheit(0) == 32
assert celsius_zu_fahrenheit(100) == 212
```

**Faustregel**: Schreiben Sie so viele Funktionen wie möglich als reine Funktionen!

### Aufgabe: Mitternachtsformel

Schreibe eine Funktion `mitternachtsformel(a, b, c)`, die die Lösungen der quadratischen Gleichung

$$ax^2 + bx + c = 0$$

berechnet. Verwende die Mitternachtsformel:

$$x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

Die Funktion soll drei Rückgabewerte haben:
1. Anzahl der Lösungen (0, 1 oder 2)
2. Erste Lösung (oder `None`, wenn keine Lösung)
3. Zweite Lösung (oder `None`, wenn keine Lösung)

## Schleifen

### Wozu Schleifen?

- Wiederholung von Anweisungen automatisieren
- Daten sequenziell verarbeiten (Listen, Strings, Dateien)
- Simulationen und iterative Verfahren umsetzen

Zwei Typen von Schleifen:
1. `while`-Schleifen: Wiederholung solange Bedingung wahr ist
2. `for`-Schleifen: Wiederholung über eine feste Anzahl oder Sammlung

## `while`-Schleifen


**Was ist eine `while`-Schleife?**
- Wiederholt Code solange eine Bedingung wahr ist
- Anzahl Wiederholungen ist vorher unbekannt
- Prüft Bedingung vor jedem Durchlauf

**Typische Anwendungsfälle:**
- **Benutzereingaben**: Solange bis gültige Eingabe
- **Konvergenz**: Bis gewünschte Genauigkeit erreicht
- **Suche**: Bis Element gefunden oder Ende erreicht
- **Simulation**: Bis Zielzustand oder Zeitlimit
- **Datenverarbeitung**: Bis Datei/Stream zu Ende


![bg right:40% 90%](https://i.postimg.cc/y8gTLNy6/Mermaid-Chart-Create-complex-visual-diagrams-with-text-2025-10-23-090839.png)

### while: Grundform

Die Schleife läuft solange `i < 3` wahr ist und zählt dabei von 0 bis 2.

```python
i = 0
while i < 3:
    print(i)
    i += 1
```

### Endlosschleife vermeiden

Wenn die Zählvariable nicht verändert wird, bleibt die Bedingung immer wahr und die Schleife läuft endlos.

```python
# Schlechte Idee: i wird nie verändert → Endlosschleife
i = 0
while i < 3:
    print(i)
    # i += 1  # vergessen!
```

### while: Zählschleife (wenn Bedingungen flexibler sein sollen)

Mehrere Bedingungen können kombiniert werden, um komplexere Abbruchkriterien zu definieren.

```python
schritte = 0
energie = 10
while energie > 0 and schritte < 5:
    print(f"Schritt {schritte}: Energie = {energie}")
    energie -= 3
    schritte += 1
```

### Sentinel-Schleife (lesen bis Ende)

Die Schleife liest Werte ein, bis ein spezieller Sentinel-Wert (hier: leerer String) eingegeben wird.

```python
zeile = input("Wert (leer beendet): ")
while zeile != "":
    print(f"Eingabe war: {zeile}")
    zeile = input("Wert (leer beendet): ")
```

### Iteration bis Toleranz (Konvergenz)

Die Schleife läuft, bis ein Zielwert mit einer definierten Genauigkeit erreicht ist.

```python
temp = 20.0
ziel = 22.0
schritt = 0.2
iters = 0
while abs(temp - ziel) > 0.1 and iters < 200:
    temp += schritt
    iters += 1
print(f"Endtemperatur {temp:.1f}°C nach {iters} Schritten")
```

### `break` und `continue` mit `while`

`continue` überspringt den Rest des aktuellen Durchlaufs, `break` beendet die Schleife sofort.

```python
# Suche die erste ungerade Zahl > 15 unter den Zahlen 1–20
nummer = 0
gefunden = None
while nummer <= 20:
    nummer += 1
    if nummer % 2 == 0:
        continue  # überspringen (gerade Zahlen)
    if nummer > 15:
        gefunden = nummer
        break     # abbrechen (erste ungerade > 15)
    print(f"Prüfe: {nummer}")
print(f"Gefunden: {gefunden}")
```

### Aufgabe: Geschwindigkeitsregelung

Entwirf eine Regelung, die eine Geschwindigkeit `v` auf `v_target` bringt.

- Start: $v_0$, Ziel: $v_\text{target}$, Proportionalfaktor ($0 < k ≤ 1$)
- Aktualisierung pro Schritt: $v_{i+1} = v_i + k  (v_\text{target} - v_i)$
- Stoppe, wenn $|v - v_\text{target}| < \varepsilon$ oder `max_steps` erreicht
- Ausgabe: Anzahl Schritte und Endwert $v$


## `for`-Schleifen

- Wiederholen Code für jedes Element einer Sammlung
- Anzahl Wiederholungen ist meist vorher bekannt
- Durchlaufen sequenziell alle Elemente

**Typische Anwendungsfälle:**
- **Feste Anzahl Wiederholungen**: z.B. 10× etwas ausführen
- **Berechnung über Sequenzen**: Summen, Mittelwerte, Transformationen
- **Über Sammlungen iterieren**: Siehe Kapitel Datenstrukturen

![bg right:40% 90%](https://i.postimg.cc/mgnTGm9M/Mermaid-Chart-Create-complex-visual-diagrams-with-text-2025-10-23-091355.png)

### `for`: Wiederholungen mit `range()`

`range(n)` erzeugt Zahlen von 0 bis n-1 und ermöglicht damit eine feste Anzahl von Wiederholungen.

```python
for i in range(5):  # 0, 1, 2, 3, 4
    print(f"Durchlauf {i}")
```

### `range()`: Integer-Folgen erzeugen

`range()` ist ein spezieller Typ, der Zahlenfolgen effizient erzeugt, ohne sie alle im Speicher zu halten.

```python
for i in range(5):  # 0,1,2,3,4
    print(i)
```

```python
print(range(5))  # range ist ein spezieller Typ
```

### `range(start, stop)` und `range(start, stop, step)`

Mit Start-, Stop- und Schrittweite können beliebige Zahlenfolgen erzeugt werden, auch rückwärts.

```python
for i in range(2, 7):  # 2,3,4,5,6
    print(i)
```

```python
for t in range(10, -1, -2):  # 10,8,6,4,2,0
    print(t)
```

### Über Strings iterieren

Strings können direkt mit `for` durchlaufen werden, um Zeichen für Zeichen zu verarbeiten.

```python
for ch in "ABCD":
    print(ch)
```

```python
wort = "NASA"
for buchstabe in wort:
    print(f"Buchstabe: {buchstabe}")
```

### Anwendung: Zeichen zählen

Eine Schleife über einen String ermöglicht das Zählen bestimmter Zeichen durch bedingte Inkrementierung.

```python
text = "Programmieren"
anzahl_e = 0
for zeichen in text:
    if zeichen == "e":
        anzahl_e += 1
print(f"Anzahl 'e': {anzahl_e}")
```

### `break` und `continue` in `for`-Schleifen

Auch in `for`-Schleifen können `continue` und `break` verwendet werden, um die Ausführung zu steuern.

```python
for zahl in range(1, 11):
    if zahl % 3 == 0:
        continue  # Überspringe Vielfache von 3
    if zahl > 7:
        break     # Stoppe bei Zahlen > 7
    print(zahl)
```

### Verschachtelte Schleifen: Multiplikationstabelle

Schleifen können ineinander verschachtelt werden, um über mehrdimensionale Strukturen zu iterieren.

```python
for i in range(1, 4):
    for j in range(1, 4):
        print(f"{i} × {j} = {i*j}")
    print("---")  # Trenner nach jeder Zeile
```


### Aufgabe: Quersumme berechnen

Schreibe eine Funktion, die die Quersumme einer positiven Ganzzahl berechnet.

- Wandle die Zahl in einen String um
- Iteriere über alle Zeichen
- Wandle jedes Zeichen zurück in `int` und addiere
- Teste mit verschiedenen Zahlen (z.B. 123 → 6, 9876 → 30)

### Aufgabe: Batterie-Lade-Simulation

- Batterie startet bei 3.0 V, Ziel: 4.2 V, Sicherheitslimit: 4.5 V  
- Spannung steigt pro Zyklus um 0.1 V, max. 50 Zyklen  

**Aufgaben:**  
1. Simuliere den Ladeprozess mit einer Schleife
2. Stoppe, wenn Zielspannung, Sicherheislimit oder max. Zyklen erreicht sind
3. Gib nur alle 5 Zyklen den Status aus
4. Am Ende: Endspannung und Anzahl Zyklen ausgeben  

![bg right:30% 80%](https://upload.wikimedia.org/wikipedia/commons/d/d7/Oxygen480-status-battery-charging-080.svg)


## Datenstrukturen

### Warum Datenstrukturen?

Bisher: einzelne Werte in Variablen

```python
messung_1 = 15.2
messung_2 = 16.1
messung_3 = 14.8
messung_4 = 15.9
# ...
```

**Problem:** Unhandlich bei vielen Werten!

**Lösung:** Datenstrukturen gruppieren zusammengehörige Daten

### Überblick: wichtigste Datenstrukturen in Python

| Typ | Geordnet | Veränderbar | Duplikate | Verwendung |
|-----|----------|-------------|-----------|------------|
| **Liste** | ✅ | ✅ | ✅ | Allgemeine Sammlung |
| **Tupel** | ✅ | ❌ | ✅ | Unveränderliche Daten |
| **Dictionary** | ✅ | ✅ | ❌ (Keys) | Key-Value-Paare |
| **Set** | ❌ | ✅ | ❌ | Eindeutige Elemente |
| **NumPy-Array** | ✅ | ✅ | ✅ | Numerische Berechnungen |


## Listen

### Was sind Listen?

- **Geordnete** Sammlung von Elementen
- **Veränderbar** (mutable): Elemente können hinzugefügt, entfernt, geändert werden
- Erlaubt **Duplikate**
- Kann **verschiedene Datentypen** enthalten

### Listen erstellen

Listen werden mit eckigen Klammern `[]` erstellt und können beliebig viele Elemente enthalten.

```python
# Leere Liste
messungen = []
print(messungen)
```

```python
# Liste mit Werten
temperaturen = [20.5, 21.2, 19.8, 22.1]
print(temperaturen)
```

### Listen aus anderen Objekten erstellen

Mit `list()` können andere Objekte in Listen umgewandelt werden.

```python
# Aus range() erstellen
gerade_zahlen = list(range(0, 10, 2))
print(gerade_zahlen)
```

```python
# Aus String erstellen
buchstaben = list("Python")
print(buchstaben)
```

### Auf Elemente zugreifen: Indexierung

Der Index startet bei 0. Negative Indizes zählen vom Ende her.

```python
planeten = ["Merkur", "Venus", "Erde", "Mars"]
print(planeten[0])  # Erstes Element
```

```python
print(planeten[2])  # Drittes Element
```

```python
print(planeten[-1])  # Letztes Element
```

### Slicing: Teilbereiche extrahieren

Mit `[start:stop:step]` können Teillisten extrahiert werden.

```python
zahlen = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(zahlen[2:5])  # Index 2 bis 4 (5 exklusiv)
```

```python
print(zahlen[:4])  # Vom Anfang bis Index 3
```

```python
print(zahlen[6:])  # Von Index 6 bis zum Ende
```

```python
print(zahlen[::2])  # Jedes zweite Element
```

### Länge einer Liste

Die Funktion `len()` gibt die Anzahl der Elemente zurück.

```python
sensoren = ["Temperatur", "Druck", "Beschleunigung"]
anzahl = len(sensoren)
print(f"Anzahl Sensoren: {anzahl}")
```

### Elemente hinzufügen

`append()` fügt am Ende hinzu, `insert()` an beliebiger Position.

```python
missionen = ["Apollo 11", "Apollo 13"]
print(f"Vorher: {missionen}")
```

```python
missionen.append("Artemis I")
print(f"Nach append: {missionen}")
```

```python
missionen.insert(1, "Apollo 12")
print(f"Nach insert: {missionen}")
```

### Elemente entfernen

`remove()` entfernt nach Wert, `pop()` entfernt an Position und gibt das Element zurück.

```python
werte = [10, 20, 30, 40, 50]
werte.remove(30)  # Entfernt das erste Vorkommen von 30
print(f"Nach remove: {werte}")
```

```python
letzter = werte.pop()  # Entfernt und gibt letztes Element zurück
print(f"Entfernt: {letzter}, Übrig: {werte}")
```



### Elemente suchen

Mit `in` prüfen, ob ein Element vorhanden ist.

```python
komponenten = ["Triebwerk", "Tank", "Avionik", "Tank"]
print("Avionik" in komponenten)  # Prüfen ob Element vorhanden
```

```python
print("Kabine" in komponenten)
```

### Listen sortieren

Die Methode `sort()` sortiert die Liste direkt.

```python
hoehen = [350, 120, 280, 95, 410]
hoehen.sort()
print(hoehen)
```



### Über Listen iterieren

Mit `for`-Schleifen können alle Elemente durchlaufen werden.

```python
treibstoffe = ["RP-1", "LOX", "LH2"]
for treibstoff in treibstoffe:
    print(f"Treibstoff: {treibstoff}")
```

### Aufgabe: Messdatenverarbeitung

**Gegeben:** Liste mit Temperaturen einer Woche in °C

```python
temperaturen = [15.2, 16.8, 14.5, 18.3, 17.1, 16.9, 15.8]
```

**Aufgaben:**
1. Berechne Durchschnittstemperatur
2. Finde Minimum und Maximum
3. Zähle Tage mit Temperatur > 16°C

## Tupel

### Was sind Tupel?

- **Geordnete** Sammlung von Elementen
- **Unveränderbar** (immutable): Nach Erstellung nicht mehr änderbar
- Erlaubt **Duplikate**
- Kann **verschiedene Datentypen** enthalten

**Verwendung:**
- Daten, die nicht geändert werden sollen
- Rückgabe mehrerer Werte aus Funktionen
- Dictionary-Keys (Listen nicht möglich!)
- Speichereffizienter als Listen

### Tupel erstellen

Tupel werden mit runden Klammern `()` erstellt.

```python
# Mit runden Klammern
koordinaten = (51.5, 0.1)
print(koordinaten)
```

```python
# Ohne Klammern (tuple packing)
position = 10.0, 20.0, 30.0
print(position)
```

### Auf Tupel-Elemente zugreifen

Tupel verwenden die gleiche Indexierung wie Listen.

```python
launch_daten = ("Falcon 9", "2023-10-05", 70.0, True)
print(launch_daten[0])
```

```python
print(launch_daten[-1])
```

### Tuple Unpacking

Tupel-Elemente können direkt mehreren Variablen zugewiesen werden.

```python
koordinaten = (48.1, 11.6)
latitude, longitude = koordinaten
print(f"Breitengrad: {latitude}, Längengrad: {longitude}")
```

```python
# Werte tauschen (sehr elegant in Python!)
a = 5
b = 10
a, b = b, a
print(f"a={a}, b={b}")
```

### Tupel sind unveränderbar

Nach der Erstellung können Tupel-Elemente nicht mehr geändert werden.

```python
punkt = (10, 20)
# punkt[0] = 15  # TypeError: 'tuple' object does not support item assignment
print(punkt)
```

### Tupel vs. Listen: Wann was?

**Listen verwenden:**
- Daten, die sich ändern können
- Sammlung gleichartiger Elemente
- Wenn Reihenfolge wichtig und veränderbar ist

**Tupel verwenden:**
- Daten, die konstant bleiben sollen
- Unterschiedliche Datentypen gruppieren (z.B. x, y, z)
- Rückgabe mehrerer Werte aus Funktionen
- Als Dictionary-Keys
- Geringfügig schneller und speichereffizienter

### Funktionen mit Tupel-Rückgabe

Funktionen können mehrere Werte als Tupel zurückgeben.

```python
def berechne_kreisflaeche(radius):
    pi = 3.14159
    flaeche = pi * radius ** 2
    umfang = 2 * pi * radius
    return flaeche, umfang  # Gibt Tupel zurück

# Unpacking bei Funktionsaufruf
a, u = berechne_kreisflaeche(5.0)
print(f"Fläche: {a:.2f}, Umfang: {u:.2f}")
```

## Dictionaries

### Was sind Dictionaries?

- **Key-Value-Paare**: Jedem Schlüssel (Key) ist ein Wert zugeordnet
- **Geordnet** (seit Python 3.7): Einfügereihenfolge wird beibehalten
- **Veränderbar**: Keys und Values können hinzugefügt/entfernt werden
- Keys müssen **eindeutig** und **unveränderbar** sein (z.B. Strings, Zahlen, Tupel)

**Verwendung:**
- Strukturierte Daten (z.B. Eigenschaften eines Objekts)
- Schnelles Nachschlagen von Werten
- Konfigurationen
- Zählen von Vorkommen

### Dictionary erstellen

Dictionaries werden mit geschweiften Klammern `{}` und Doppelpunkt `:` erstellt.

```python
# Mit Werten
astronaut = {
    "name": "Neil Armstrong",
    "mission": "Apollo 11",
    "alter": 38,
    "gestartet": True
}
print(astronaut)
```

### Auf Werte zugreifen

Werte werden über ihren Schlüssel (Key) abgerufen.

```python
print(astronaut["name"])
```

```python
# Mit get() - sicherer bei fehlenden Keys
print(astronaut.get("mission"))
```

```python
# Standardwert wenn Key nicht existiert
print(astronaut.get("geburtsort", "Unbekannt"))
```

### Werte hinzufügen und ändern

Neue Keys werden einfach hinzugefügt, bestehende werden überschrieben.

```python
rakete = {"name": "Falcon 9", "stufen": 2}
# Neuen Eintrag hinzufügen
rakete["hersteller"] = "SpaceX"
print(rakete)
```

```python
# Wert ändern
rakete["stufen"] = 3
print(rakete)
```





### Über Dictionaries iterieren

Mit `.items()` können Keys und Values gleichzeitig durchlaufen werden.

```python
sensoren = {"temp": 23.5, "druck": 1015, "luftf": 45}
# Über Key-Value-Paare
for key, value in sensoren.items():
    print(f"{key} = {value}")
```

### Verschachtelte Dictionaries

Dictionaries können andere Dictionaries enthalten – nützlich für strukturierte Daten.

```python
flugzeuge = {
    "A380": {
        "hersteller": "Airbus",
        "sitze": 853,
        "reichweite_km": 15200
    },
    "B787": {
        "hersteller": "Boeing",
        "sitze": 242,
        "reichweite_km": 14140
    }
}
print(flugzeuge["A380"]["sitze"])
```
### Live-Aufgabe: Wörterbuch-Statistik

Schreibe ein Programm, das zählt, wie oft jedes Wort in einem Text vorkommt.

**Gegeben:**
```python
text = "Python ist toll Python macht Spass toll toll"
```

**Aufgabe:** Erstelle ein Dictionary mit der Worthäufigkeit.

**Tipp:** Verwende `.split()` um den Text in Wörter zu teilen.

**Erwartetes Ergebnis:** `{"Python": 2, "ist": 1, "toll": 3, ...}`

## Sets

### Was sind Sets?

- **Ungeordnete** Sammlung einzigartiger Elemente
- **Keine Duplikate**: Jedes Element kommt nur einmal vor

**Verwendung:**
- Duplikate entfernen
- Mengenoperationen (Vereinigung, Schnitt, Differenz)

### Sets erstellen

Sets werden mit geschweiften Klammern `{}` erstellt und entfernen Duplikate automatisch.

```python
# Duplikate werden automatisch entfernt
zahlen = {1, 2, 2, 3, 3, 3, 4}
print(zahlen)
```

```python
# Aus Liste erstellen
liste = [1, 1, 2, 2, 3, 3]
eindeutig = set(liste)
print(eindeutig)
```

### Sets: Duplikate entfernen

Der häufigste Anwendungsfall: Duplikate aus Listen entfernen.

```python
messungen = [15.2, 16.1, 15.2, 17.3, 16.1, 14.8]
eindeutig = list(set(messungen))
print(eindeutig)
```

```python
# Sortiert
sortiert_eindeutig = sorted(set(messungen))
print(sortiert_eindeutig)
```

### Wann Sets verwenden?

**Sets verwenden:**
- Duplikate entfernen
- Schnelle Mitgliedschaftstests
- Mengenoperationen (Vereinigung, Schnitt, Differenz)

**Listen verwenden:**
- Reihenfolge wichtig
- Duplikate erlaubt

**Dictionaries verwenden:**
- Key-Value-Zuordnungen

## NumPy-Arrays

### Was ist NumPy?

**NumPy** (Numerical Python) ist die Standardbibliothek für numerische Berechnungen in Python.

**NumPy-Arrays:**
- Effiziente mehrdimensionale Arrays
- Viel schneller als Python-Listen für numerische Operationen
- Vektorisierte Operationen (keine Schleifen nötig!)
- Basis für wissenschaftliches Rechnen in Python

**Installation:** `pip install numpy`

### NumPy importieren und Arrays erstellen

NumPy-Arrays sind wie Listen, aber optimiert für numerische Berechnungen.

```python
import numpy as np
# Liste zu Array
messungen = np.array([15.2, 16.1, 14.8, 17.3])
print(messungen)
```

```python
print(type(messungen))
```

### Arrays vs. Listen: Der Unterschied

NumPy erlaubt vektorisierte Operationen – viel einfacher und schneller!

```python
# Listen: Element für Element
liste = [1, 2, 3, 4]
verdoppelt_liste = [x * 2 for x in liste]
print(f"Liste verdoppelt: {verdoppelt_liste}")
```

```python
# NumPy: Vektorisiert (alle auf einmal!)
array = np.array([1, 2, 3, 4])
verdoppelt_array = array * 2
print(f"Array verdoppelt: {verdoppelt_array}")
```

```python
# Operationen zwischen Arrays
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
print(f"Summe: {a + b}")
```

### Mathematische Funktionen

NumPy bietet viele mathematische Funktionen für Arrays.

```python
werte = np.array([1, 4, 9, 16, 25])
wurzel = np.sqrt(werte)
print(f"Wurzel: {wurzel}")
```

```python
quadrat = werte ** 2
print(f"Quadrat: {quadrat}")
```

### Statistische Funktionen

NumPy bietet Funktionen für statistische Berechnungen.

```python
temperaturen = np.array([15.2, 16.8, 14.5, 18.3, 17.1])
print(f"Mittelwert: {np.mean(temperaturen):.2f}")
```

```python
print(f"Min: {np.min(temperaturen)}, Max: {np.max(temperaturen)}")
```

### Mehrdimensionale Arrays

NumPy unterstützt auch mehrdimensionale Arrays (Matrizen).

```python
# 2D-Array (Matrix)
matrix = np.array([
    [1, 2, 3],
    [4, 5, 6]
])
print(matrix)
```

```python
print(f"Shape: {matrix.shape}")  # (Zeilen, Spalten)
```
### NumPy vs. Python-Listen: Zusammenfassung

|  | NumPy-Arrays | Python-Listen |
|--|--------------|---------------|
| **Geschwindigkeit** | ✅ Sehr schnell | ❌ Langsamer |
| **Speicher** | ✅ Effizient | ❌ Mehr Verbrauch |
| **Operationen** | ✅ Vektorisiert | ❌ Schleifen nötig |
| **Datentypen** | ❌ Nur gleiche | ✅ Gemischt möglich |
| **Größe** | ❌ Fix | ✅ Dynamisch |

**Faustregel:** NumPy für numerische Berechnungen, Listen für alles andere!

### Zusammenfassung: Datenstrukturen

| Typ | Verwendung | Beispiel |
|-----|------------|----------|
| **Liste** | Geordnete, veränderbare Sammlung | `[1, 2, 3]` |
| **Tupel** | Unveränderbare Daten, mehrere Rückgabewerte | `(x, y, z)` |
| **Dictionary** | Key-Value-Paare, strukturierte Daten | `{"name": "ISS", "crew": 7}` |
| **Set** | Eindeutige Elemente, Mengenoperationen | `{1, 2, 3}` |
| **NumPy-Array** | Numerische Berechnungen | `np.array([1, 2, 3])` |

**Wichtigste Entscheidung:** Welche Struktur passt zu meinen Daten?

### Aufgabe: Flugdatenanalyse

**Gegeben:** Messdaten von 5 Flügen

```python
fluege = {
    "LH123": {"distanz_km": 850, "dauer_min": 95, "passagiere": 145},
    "BA456": {"distanz_km": 1200, "dauer_min": 135, "passagiere": 180},
    "AF789": {"distanz_km": 650, "dauer_min": 80, "passagiere": 120},
    "KL321": {"distanz_km": 950, "dauer_min": 110, "passagiere": 155},
    "LX654": {"distanz_km": 720, "dauer_min": 85, "passagiere": 130}
}
```

**Aufgaben:**
1. Berechne Durchschnittsgeschwindigkeit jedes Flugs (km/h)
2. Finde den schnellsten Flug
3. Erstelle Liste aller Passagierzahlen und berechne Durchschnitt
4. Welche Flüge hatten mehr als 150 Passagiere?
