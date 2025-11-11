---
marp: true
theme: hm
paginate: true
language: de
footer: Programmieren/Praktikum – D. Straub
headingDivider: 3
math: katex
---
# Programmieren – Praktikum

**Ingenieurinformatik Teil 1, Wintersemester 2025/26**

David Straub

### Sicherheitsunterweisung für Benutzer der des Verbundlabors KCA



- **Fluchtwege** von jedem Raum links und rechts auf den Flur in das Treppenhaus
- an der Flurdecke sind **grüne beleuchtete Hinweisschilder** als Fluchtwegmarkierung angebracht
- die **Feuerlöscher** befinden sich im Flur und sind mit **roten Hinweisschildern** an den Seitenwänden gekennzeichnet
- die **Feuermelder** befinden sich in beiden Treppenhäusern
- im Brandfall **keinen Aufzug benützen**; Begründung: möglicher Stromausfall
- im Brandfall die **Fenster geschlossen halten**
- wichtige Informationen sind im Raum **ausgehängt**: Raumnutzungsordnung, …
- **Not-Aus-Schalter** sind in allen Räumen vorhanden

![bg 80% opacity:0.15](https://upload.wikimedia.org/wikipedia/commons/2/2f/ISO_Exit_-_Right.svg)

### Datentypen

- `int` (Integer, Ganzzahlen): 1, 42, -7
- `float` (Gleitkommazahlen): 3.14, -0.001, 2.0
- `str` (String, Zeichenkette): `"Hallo"`, `'a'`, `"123"`
- `bool` (Boolean, Wahrheitswert): `True`, `False`


### Typumwandlung

```python
# Eingabe ist immer ein String
alter_str = input("Wie alt bist du? ")
print(alter_str + 1)  # Fehler! # String + Integer geht nicht
alter = int(alter_str)  # Umwandlung in Integer
print(alter + 1)  # Jetzt geht's
```

### Operatoren

- Arithmetische Operatoren: `+`, `-`, `*`, `/`, `//` (Ganzzahldivision), `%` (Modulo), `**` (Exponentiation)
- Vergleichsoperatoren: `==`, `!=`, `<`, `>`, `<=`, `>=`
- Logische Operatoren: `and`, `or`, `not`


### Die `input`-Funktion

```python
name = input("Wie ist dein Name? ")
print("Hallo " + name)
```


### f-Strings

```python
name = "Alice"
alter = 30
print(f"Hallo {name}, du bist {alter} Jahre alt.")
```



### Verzweigungen

```python
temperatur = float(input("Wie ist die Temperatur draußen? (in °C): "))
if temperatur < 0:
    print("Kalt - Winterjacke anziehen!")
elif temperatur <= 20:
    print("Mild - Pullover reicht")
else:
    print("Warm - T-Shirt-Wetter!")
```


### Aufgabe 1: imperiale Einheiten

Schreiben Sie ein Programm, mit dem die in der Luftfahrt verbreiteten imperialen Einheiten Fuß, Seemeilen und Knoten in das metrische System (Meter, m/s) umgerechnet werden können.

Das Programm soll zunächst Fragen, welche der drei Einheiten umgerechnet werden soll. Anschließend soll der Wert der Einheit abgefragt werden, der umgerechnet werden soll. Das Programm soll dann den umgerechneten Wert ausgeben.

**Umrechnungswerte**

- 1 ft = 0.3048 m
- 1 NM = 1852 m
- 1 kn = 1 NM/h

### Aufgabe 2: Schwebedauer

Ein Multicopter benötigt im Schwebeflug eine Leistung von

$$P = \kappa\frac{T^{3/2}}{\sqrt{2 \rho A}}$$


$\kappa$: dimensionlose Effizienz < 1, $T=mg$: Schubkraft, $\rho$:  Luftdichte, $A=n \pi r^2$: Rotorfläche

$g=9{,}81 \frac{\text{m}}{\text{s}^2}$, $\rho_\text{München}\approx1{,}2 \frac{\text{kg}}{\text{m}^3}$

Der Multicopter hat einen Akku mit der Kapazität 3 Ah und einer durchschnittlichen Spannung von 11.1 V.

Schreiben Sie ein Programm, das die Schwebedauer des Multicopters in Abhängigkeit von der Masse $m$, der Anzahl $n$ und dem Durchmesser $2r$ der Rotoren berechnet. Nehmen sie $\kappa=0{,}5$ an.

![bg right:30%](https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Quadcopter_Drone_in_flight.jpg/1024px-Quadcopter_Drone_in_flight.jpg)

### Aufgabe 3: Gleitstreckenberechnung

- Schreiben Sie eine Funktion, die die maximale Gleitstrecke eines Segelflugzeugs berechnet. Die Funktion soll die Starthöhe in Metern, den Höhenverlust pro Kilometer Flugstrecke in Metern und die nötige Höhenreserve in Metern als Eingabeparameter erhalten und die maximale Gleitstrecke in Kilometern zurückgeben.
- Verwenden Sie eine separate Funktion zur Ausgabe der Gleitstrecke in einem lesbaren Format (z.B. "Die maximale Gleitstrecke beträgt X km") inklusive sinnvoller Rundung.
- Schreiben Sie eine Hauptfunktion `main()`, die den Benutzer nach der Starthöhe, dem Höhenverlust und der Höhenreserve fragt, die Funktionen aufruft und die Gleitstrecke ausgibt.

![bg right:30%](https://upload.wikimedia.org/wikipedia/commons/7/79/DG1000_glider_crop.jpg)

### Zusatzaufgabe: Test-Skript

- Schreiben Sie ein Test-Skript, das die Funktion zur Berechnung der Gleitstrecke mit verschiedenen Eingabewerten aufruft und die Ergebnisse überprüft.
- Verwenden Sie das `assert`-Statement, um sicherzustellen, dass die berechneten Gleitstrecken den erwarteten Werten entsprechen.

Beispiel:

```python
def test_negative_starthoehe():
    assert berechne_gleitstrecke(-1, 1, 1) == 0
```

### Zusatzaufgabe: Gleitwinkel

- Erweitern Sie die Funktion zur Berechnung der Gleitstrecke, um zusätzlich den Gleitwinkel in Grad zu berechnen und zurückzugeben.
- Der Gleitwinkel $\theta$ kann mit der Formel $\tan(\theta) = \frac{\text{Höhenverlust}}{\text{Flugstrecke}}$ berechnet werden.
- Passen Sie die Ausgabe-Funktion an, um auch den Gleitwinkel auszugeben.


### Aufgabe: Primzahlbestimmung Teil 1

Schreiben Sie eine Funktion `ist_prim`, die überprüft, ob eine Zahl eine Primzahl ist. Die Funktion soll `True` zurückgeben, wenn die Zahl eine Primzahl ist, und `False`, wenn nicht.

Hinweise:

- Eine Primzahl ist eine natürliche Zahl größer als 1, die nur durch 1 und sich selbst teilbar ist.
- Verwenden Sie eine Schleife, um die Teilbarkeit der Zahl durch alle Zahlen ab 2 zu überprüfen
- Überlegen Sie sich, warum es ausreichen würde, nur bis zur Quadratwurzel der Zahl zu prüfen
- Für die Teilbarkeit kann der Modulo-Operator `%` verwendet werden
- Schreiben Sie eine Testfunktion, die die Korrektheit Ihrer Primzahl-Funktion überprüft (z.B. dass sie `True` für 2, 3, 5, 7 und `False` für 1, 4, 6, 8, 9 zurückgibt).

### Primzahlbestimmung Teil 2

Schreiben Sie eine Funktion, die alle Primzahlen bis zu einer gegebenen Zahl `n` findet und in einer Liste zurückgibt.

Hinweise:

- Verwenden Sie Ihre Primzahl-Funktion aus Teil 1, um zu überprüfen, ob jede Zahl bis `n` eine Primzahl ist.

### Primzahlbestimmung: Zusatzaufgaben

- Summe der Primzahlen: Schreiben Sie eine Funktion, die die Summe aller Primzahlen bis n berechnet.
Beispiel: Für n = 10 → 2 + 3 + 5 + 7 = 17.

- Primzahldifferenzen: Erstellen Sie eine Liste mit den Abständen zwischen aufeinanderfolgenden Primzahlen bis n.
Beispiel: Zwischen 2, 3, 5, 7 → Differenzen: `[1, 2, 2]`.

- Primzahlzwillinge: Finden Sie alle Primzahlzwillinge (Paare von Primzahlen, die genau 2 auseinanderliegen, z. B. (3,5), (5,7), (11,13)) bis `n`.
