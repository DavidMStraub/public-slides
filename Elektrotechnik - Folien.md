---
marp: true
theme: hm
paginate: true
language: de
footer: Elektrotechnik – Straub
headingDivider: 3
---
# Elektrotechnik

**Luft- und Raumfahrttechnik Bachelor, 1. Semester**

David Straub

### Organisatorisches

- 🎓 Moodle-Kurs: https://link.hm.edu/hnyu
- 💬 Matrix-Raum: https://link.hm.edu/83kf
- 🕥 Sprechstunde: Do. 10:30–11:30, Raum, B 374
- 📖 Literatur
    - Pregla – [OPAC](https://link.hm.edu/2c6h)
    - Hagmann – [OPAC](https://link.hm.edu/fvqd)
    - Hering u.a. – [online](https://link.springer.com/book/10.1007/978-3-662-67538-0)
    - Fischer – [online](https://link.springer.com/book/10.1007/978-3-658-25644-9)
- 🗒️ Vorlesungsskript Prof. Palme u.a.: https://palme.userweb.mwn.de/
- ✍️ Prüfung: schriftlich, 60 Minuten, keine Hilfsmittel


### Gliederung des Kurses

1. [Einführung](#einführung) (Physikalische Größen, Einheiten)
2. [Das elektrische Feld](#das-elektrische-feld) (Ladungen, Kräfte, Felder, Potential, Spannung, Kapazität, Kondensatoren)
3. [Gleichstrom](#gleichstrom) (Stromstärke, Widerstand, Stromkreisberechnungen, Energie, Leistung)
4. [Magnetismus](#magnetismus) (Feld in Vakuum und Materie, Kräfte, magnetischer Kreis)
5. [Elektromagnetische Induktion](#elektromagnetische-induktion) (Induktion, Selbstinduktion, Energie)
6. [Wechselstrom](#wechselstrom) (Komplexe Wechselstromrechnung, Wirk- und Blindleistung)
7. [Drehstrom](#drehstrom) (Dreiphasensystem)



## Einführung

1. Physikalische Größen
2. Internationales Einheitensystem (SI)


### Physikalische Größen

... sind messbare Eigenschaften eines Systems.

**Skalare Größen**: werden durch einen *Zahlenwert* und eine *Einheit* beschrieben.

$$x = \underbrace{\lbrace x \rbrace}_{\text{Zahlenwert}} \cdot \underbrace{[x]}_{\text{Einheit}}$$

Beispiele:

- $t = 10 \, \text{s}$ (Zeit)
- $m = 5 \, \text{kg}$ (Masse)
- $\Delta T = -20 \, \text{K}$ (Temperaturdifferenz)

### Rechnen mit Einheiten

- Nur Größen mit gleichen Einheiten können addiert oder subtrahiert werden

$$x = 2 \, \text{m} + 3 \, \text{m} = 5 \, \text{m}$$


- Bei Multiplikation/Division von Größen werden die Einheiten multipliziert/dividiert

$$v = \frac{s}{t} = \frac{10 \, \text{m}}{5 \, \text{s}} = 2 \, \frac{\text{m}}{\text{s}} = 7{,}2 \, \text{km/h}$$

Hinweis: im Textsatz werden Einheiten immer aufrecht geschrieben, Variablen *kursiv*.

### Vektorielle physikalische Größen

... sind physikalische Größen, die durch einen *Betrag* und eine *Richtung* beschrieben werden. Der Betrag wird durch einen *Zahlenwert* und eine *Einheit* beschrieben.

$$\vec{v}\equiv \mathbf{v} = \underbrace{|\vec{v}|}_{\text{Betrag}} \cdot \underbrace{\vec{e}_v}_{\text{Richtung}}$$

$$ |\vec{v}| \equiv v = \underbrace{\lbrace v \rbrace}_{\text{Zahlenwert}} \cdot \underbrace{[v]}_{\text{Einheit}}$$

Der Zahlenwert des Betrags ist immer positiv.

Beispiele:

- $\vec{v} = 10 \, \frac{\text{m}}{\text{s}} \cdot \vec{e}_x$ (Geschwindigkeit)
- $\vec{a} = 9{,}81 \, \frac{\text{m}}{\text{s}^2} \cdot (\vec{e}_{-z})$ (Beschleunigung)


### Das Internationale Einheitensystem (SI)


| Basisgröße                    | Größensymbol      | Dimensionssymbol         | Einheit   | Einheitenzeichen |
| ----------------------------- | ----------------- | ------------------------ | --------- | ---------------- |
| Zeit                          | $t$               | $\text{T}$               | Sekunde   | s                |
| Länge                         | $l$               | $\text{L}$               | Meter     | m                |
| Masse                         | $m$               | $\text{M}$               | Kilogramm | kg               |
| Elektrische Stromstärke       | $I$               | $\text{I}$               | Ampere    | A                |
| Thermodynamische Temperatur   | $T$               | $\Theta$                 | Kelvin    | K                |
| Stoffmenge                    | $n$               | $\text{N}$               | Mol       | mol              |
| Lichtstärke                   | $I_v$             | $\text{J}$               | Candela   | cd               |


### Naturkonstanten und SI-Einheiten
| Konstante    | Beschreibung                                         | Exakter Wert         | Einheit |
|--------------|------------------------------------------------------|----------------------|---------|
| $\Delta\nu_\mathrm{Cs}$ | Strahlung des Caesium-Atoms                       | 9 192 631 770        | Hz      |
| $c$            | Lichtgeschwindigkeit                                 | 299 792 458          | m/s     |
| $h$            | Planck-Konstante                                     | 6,62607015 × 10<sup>−34</sup>   | J·s     |
| $e$            | Elementarladung                                      | 1,602176634 × 10<sup>−19</sup>  | C       |
| $k_\mathrm{B}$ | Boltzmann-Konstante                                 | 1,380649 × 10<sup>−23</sup>     | J/K     |
| $N_\mathrm{A}$ | Avogadro-Konstante                                  | 6,02214076 × 10<sup>23</sup>    | mol⁻¹   |
| $K_\mathrm{cd}$ | Photometrisches Strahlungsäquivalent               | 683                  | lm/W    |

### Abgeleitete Einheiten

Von den Basisgrößen lassen sich durch mathematische Operationen abgeleitete Einheiten bilden.
Beispiele für abgeleitete Einheiten:

- **Kraft**: $\vec{F} = m \cdot \vec{a}$
    $[F] = [m] \cdot [\vec{a}]= \text{kg} \cdot \frac{\text{m}}{\text{s}^2} = \text{N}$ (Newton)

- **Energie/Arbeit**: $W = F \cdot s$
    $[W]  = \text{N} \cdot \text{m} = \frac{\text{kg} \cdot \text{m}^2}{\text{s}^2}= \text{J}$ (Joule)

- **Leistung**: $P = \frac{\Delta W}{\Delta t}$
$[P]  = \frac{[W]}{[t]} = \frac{\text{J}}{\text{s}} = \frac{\text{kg} \cdot \text{m}^2}{\text{s}^3}= \text{W}$ (Watt)



### Dimensionsanalyse

Jede physikalische Größe hat – unabängig von Einheit oder Zahlenwert – eine **Dimension**, die beschreibt, wie die Größe aus den Grundgrößen zusammengesetzt ist. 

Beispiele:
- Geschwindigkeit: $\text{dim}[v] = \frac{\text{L}}{\text{T}}$
- Kraft: $\text{dim}[F] = \text{M} \cdot \frac{\text{L}}{\text{T}^2}$
- Winkel: $\text{dim}[\varphi] = \frac{\text{L}}{\text{L}} = 1$ (dimensionslos)

Beide Seiten einer Gleichung müssen dieselbe Dimension haben!

### SI-Präfixe (alltäglich)

|    Faktor      | Name   | Präfix | Faktor      | Name   | Präfix             |
| ----------- | -------- | ---------------- | ----------- | -------- | ---------------- |
| $10^{-1}$   | Dezi     | d                | $10^{1}$    | Deka     | da               |
| $10^{-2}$   | Zenti    | c                | $10^{2}$    | Hekto    | h                |
| $10^{-3}$   | Milli    | m                | $10^{3}$    | Kilo     | k                |
| $10^{-6}$   | Mikro    | µ                | $10^{6}$    | Mega     | M                |
| $10^{-9}$   | Nano     | n                | $10^{9}$    | Giga     | G                |
| $10^{-12}$  | Piko     | p                | $10^{12}$   | Tera     | T                |

### SI-Präfixe (nicht alltäglich)

|    Faktor      | Name   | Präfix | Faktor      | Name   | Präfix             |
| ----------- | -------- | ---------------- | ----------- | -------- | ---------------- |
| $10^{-15}$  | Femto    | f                | $10^{15}$   | Peta     | P                |
| $10^{-18}$  | Atto     | a                | $10^{18}$   | Exa      | E                |
| $10^{-21}$  | Zepto    | z                | $10^{21}$   | Zetta    | Z                |
| $10^{-24}$  | Yokto    | y                | $10^{24}$   | Yotta    | Y                |
| $10^{-27}$  | Ronto    | r                | $10^{27}$   | Ronna    | R                |
| $10^{-30}$  | Quecto   | q                | $10^{30}$   | Quetta   | Q                |


### µ & °C: praktische Tipps

- Mikro: µ (griechischer Buchstabe "My")
    - Deutsches Tastaturlayout: `AltGr` + `m`

- Grad Celsius: °C (Gradzeichen + Großbuchstabe C)
    - Deutsches Tastaturlayout: `Shift` + `^` + `C`

Nur in Systemen, die diese Schriftzeichen nicht unterstützen (ASCII) laut  DIN 66030:2002-05:

- µ -> u
- °C -> Cel


### ⚠️ Nicht-SI-Einheiten in der Luftfahrt ✈️

Immer noch weit verbreitet:

- Flughöhe in **Fuß** 🦶
    - 1 ft = 0,3048 m
- Entfernung in **Seemeilen** 🚢
    - 1 NM = 1852 m
- Geschwindigkeit in **Knoten** 🪢
    - 1 kt = 1 NM/h = 1,852 km/h

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/5/57/3-Pointer_Altimeter.svg)

### Mars Climate Orbiter

https://www.youtube.com/watch?v=MfavzjbZzl8

## Das elektrische Feld

1. Elektrische Ladung
2. Coulomb’sches Gesetz
3. Elektrisches Feld im Vakuum
4. [Feldlinien und Gauß’sches Gesetz](#feldlinien)
5. Elektrisches Feld in Materie
6. Potential, Spannung, Arbeit
7. Homogenes Feld und Kondensatoren


### Die vier fundamentalen Wechselwirkungen

1. **Gravitation** 🪐
    - Hält das Sonnensystem zusammen – wirkt auf Masse
2. **Elektromagnetismus** ⚡
    - Hält Atome und Moleküle zusammen – wirkt auf elektrische Ladung
3. **Starke Wechselwirkung** 🎨
    - Hält Atomkerne zusammen
4. **Schwache Wechselwirkung** ☢️
    - Verantwortlich für radioaktiven Zerfall

### 

![bg](https://upload.wikimedia.org/wikipedia/commons/8/83/Lightning_in_Dallas_2015.jpg)
![bg](https://upload.wikimedia.org/wikipedia/commons/8/8b/Chalcopyrite-Magnetite-cktsr-10c.jpg)

### Elektrische Ladung (*electric charge*)

- Alle Materie besteht aus Elementarteilchen, von denen einige elektrische Ladungen tragen
- Elektrische Ladungen treten in zwei Arten auf: positive und negative Ladungen (Vorzeichen: Konvention!)
- Gleichnamige Ladungen stoßen sich ab, ungleichnamige ziehen sich an


### Aufbau der Materie

- Atome bestehen aus positiv geladenen Protonen, neutralen Neutronen und negativ geladenen Elektronen
- Protonen und Neutronen bilden den Atomkern
- Elektronen bewegen sich in der Atomhülle um den Atomkern

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Atom-schematic_de.svg/1280px-Atom-schematic_de.svg.png)

### Elementarladung

- Elektrische Ladungen sind immer ganzzahlige Vielfache der Elementarladung $e= 1{,}602176634 \cdot 10^{-19} \, \text{C}$ (Definition des Coulombs)
    - Elektron: $Q = -e$ (!)
    - Proton: $Q = +e$
    - Up-Quark: $Q = +\frac{2}{3}e$, Down-Quark: $Q = -\frac{1}{3}e$
- Man sagt, die Ladung sei *quantisiert*

![bg 80% right:25%](https://upload.wikimedia.org/wikipedia/commons/b/b7/Proton_quark_structure.svg)


### Coulumb’sches Gesetz – Experiment

https://www.youtube.com/watch?v=9mFlELwuctI

### Coulomb’sches Gesetz (*Coulomb’s law*)

- Experimente haben gezeigt, dass die Kraft zwischen zwei Punktladungen $Q_1$ und $Q_2$ proportional zur Größe der Ladungen und umgekehrt proportional zum Quadrat ihres Abstands $r$ ist
- Mathematisch wird dies durch das Coulomb’sche Gesetz beschrieben:

$$|\vec{F}_{12}| = k \cdot \frac{Q_1 \cdot Q_2}{r^2}$$

$k$ ist abhängig vom Einheitensystem. Im SI-System gilt: $k = \frac{1}{4 \pi \varepsilon_0}$, wobei $\varepsilon_0$ die elektrische Feldkonstante ist, $\varepsilon_0 \approx 8{,}854 \cdot 10^{-12} \, \frac{\text{C}^2}{\text{N} \cdot \text{m}^2}$.

### Analogie zur Schwerkraft

Newtonsches Gravitationsgesetz: Kraft zwischen zwei Himmelskörpern

$$|\vec{F}_{12}| = G \cdot \frac{m_1 \cdot m_2}{r^2}$$

$G$: Gravitationskonstante, $G \approx 6{,}6743 \cdot 10^{-11} \, \frac{\text{kg}^2}{\text{N} \cdot \text{m}^2}$

### Beispiel: Relative Stärke von Coulomb- und Gravitationskraft

- Proton: $m_p \approx 1{,}67 \cdot 10^{-27} \, \text{kg}$, $Q_p = +e$
- Elektron: $m_e \approx 9{,}11 \cdot 10^{-31} \, \text{kg}$, $Q_e = -e$
- $|\vec{F}_{12,\text{Coulomb}}| = \frac{1}{4 \pi \varepsilon_0} \cdot \frac{Q_1 \cdot Q_2}{r^2}$
- $\epsilon_0 \approx 8{,}854 \cdot 10^{-12} \, \frac{\text{As}}{\text{Vm}}$
- $|\vec{F}_{12,\text{Gravitation}}| = G \cdot \frac{m_1 \cdot m_2}{r^2}$
- $G \approx 6{,}6743 \cdot 10^{-11} \, \frac{\text{m}^3}{\text{kg} \cdot \text{s}^2}$


### Elektromagnetismus im Alltag

Fast alle alltäglichen physikalischen Phänomene werden von der elektromagnetischen Wechselwirkung bestimmt!

Die Gravitation spielt nur eine Rolle, da

- es keine negativen Massen gibt -> immer anziehend
- die elektrischen Ladungen von Elektronen und Protonen exakt aufheben

### Elektrische Feldstärke (*electric field [strength]*)

- Ein elektrisch geladenes Teilchen übt eine Kraft auf andere elektrisch geladene Teilchen aus
- Diese Kraft ist umso größer, je größer die Ladung der Probeteilchen ist
- Elektrische Feldstärke: Kraft pro Ladungseinheit, die auf eine Probeladung wirkt

$$\vec{E} = \frac{\vec{F}}{Q} \Leftrightarrow \vec{F} = Q \cdot \vec{E}$$

Feld = ortsabhängige physikalische Größe (Vektorfeld/Skalarfeld)

$[\vec{E}] = \frac{\text{N}}{\text{C}}$

### Elektrisches Feld einer Punktladung

Die elektrische Feldstärke $\vec{E}$ im Abstand $r=|\vec{r}|$ einer Punktladung $Q$ ist:

$$\vec{E}(\vec r) = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot r^2} \cdot \frac{\vec{r}}{r} = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot r^2} \cdot \vec{e}_r$$

### Feldlinien

- Die Feldlinien eines elektrischen Feldes sind Linien, die die Richtung und Stärke des Feldes darstellen
- Sie verlaufen von positiven zu negativen Ladungen und zeigen die Richtung der Kraft an, die auf eine positive Probeladung wirken würde
- Die Dichte der Feldlinien ist proportional zur Stärke des elektrischen Feldes: Je dichter die Linien, desto stärker das Feld


### Superpositionsprinzip

Das elektrische Feld mehrerer (diskreter) Ladungen ist die Vektorsumme der Felder der einzelnen Ladungen

$$\vec{E}(\vec{r}) = \sum_{i} \vec{E}_i(\vec{r})$$
$$= \sum_{i} \frac{Q_i}{4 \pi \varepsilon_0 \cdot |\vec{r}-\vec{r}_i|^2} \cdot \frac{\vec{r}-\vec{r}_i}{|\vec{r}-\vec{r}_i|}$$

Übergang zu kontinuierlicher Ladungsverteilung: Integral

$$\vec{E}(\vec{r}) = \int_{V} \frac{\rho(\vec{r}') \cdot dV'}{4 \pi \varepsilon_0 \cdot |\vec{r}-\vec{r}'|^2} \cdot \frac{\vec{r}-\vec{r}'}{|\vec{r}-\vec{r}'|}$$



### Feldlinien: Beispiele

- Punktladung
- Zwei gegensätzliche Punktladungen (Dipol)
- Zwei gleichnamige Punktladungen
- Positiv geladene Ebene
- Zwei entgegengesetzt geladene Platten (Plattenkondensator)


### Elektrische Flussdichte (*electric flux density*)

$$\vec{D} = \varepsilon_0 \cdot \vec{E}$$

$$[\vec{D}] = [\varepsilon_0] \cdot [\vec{E}] = \frac{\text{C}^2}{\text{N} \cdot \text{m}^2} \cdot \frac{\text{N}}{\text{C}} = \frac{\text{C}}{\text{m}^2}$$

Fluss durch eine Fläche $A$:

$$\Psi = \int_{A} \vec{D} \cdot d\vec{A}$$

![bg right:40% 80%](https://upload.wikimedia.org/wikipedia/commons/1/1f/Electric-flux.jpg)


### Elektrische Flussdichte einer Punktladung

Die elektrische Flussdichte $\vec{D}$ im Abstand $r$ einer Punktladung $Q$ ist:

$$\vec{D}(r) = \frac{Q}{4 \cdot \pi \cdot r^2} \cdot \frac{\vec{r}}{r} = \frac{Q}{A(r)} \cdot \vec{e}_r$$

Für eine konstante Flussdichte $D$ auf der Fläche $A$ gilt:  $Q = D(r) \cdot A(r)$

### Fluss durch geschlossene Oberflächen


### Satz von Gauß (*Gauss’s law*)

Der elektrische Fluss durch eine geschlossene Oberfläche ist gleich der eingeschlossenen Ladung:

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$$




### Beispiel: Kugelsymmetrische Ladungsverteilung

Für eine Punktladung $Q$ im Zentrum einer Kugel mit Radius $r$ gilt:

$$\oint_{A} \vec{D} \cdot d\vec{A} = D(r) \cdot 4\pi r^2 = Q$$

Daraus folgt:

$$D = \frac{Q}{4\pi r^2}$$

### Beispiel: Unendlich langer, gerader Leiter

Für einen unendlich langen Leiter mit Linienladungsdichte $\lambda$ verwenden wir eine zylindrische Oberfläche (Radius $r$, Länge $l$).

**Symmetrie:** $\vec{D}$ ist radial und konstant auf der Mantelfläche

$$\oint_{A} \vec{D} \cdot d\vec{A} = D(r) \cdot 2\pi r l = \lambda l$$

**Ergebnis:**
$$D(r) = \frac{\lambda}{2\pi r}, \quad E(r) = \frac{\lambda}{2\pi \varepsilon_0 r}$$



### Elektrisches Feld in Materie

- In nicht oder schwach leitenden Materialien können elektrische Felder zu **Polarisation** führen.
- Bei der Polarisation richten sich die positiven und negativen Ladungen innerhalb des Materials unter dem Einfluss des elektrischen Feldes neu aus.
- Dies führt zu einer Verschiebung der Ladungszentren und erzeugt ein internes elektrisches Feld, das dem äußeren Feld entgegenwirkt.
- Solche polarisierbaren Materialien nennt man **Dielektrika**.

### Abschwächung des elektrischen Feldes in Dielektrika

Definition:

$$\vec{E}_\text{Materie} = \underbrace{\vec{E}_\text{Vakuum}}_{\text{freie Ladungen}} - \underbrace{\vec{E}_\text{Polarisation}}_{\text{gebundene Ladungen}} = \frac{1}{\varepsilon_r} \cdot \vec{E}_\text{Vakuum}$$

mit $\varepsilon_r \geq 1$ Permittivitätszahl (auch relative Permittivität). Beispiele:

| Material     | $\varepsilon_r$ |
|--------------|------------------|
| Luft         | 1,00059          |
| Gummi        | 2,5–3,5          |
| Glas         | 5–7              |
| Destilliertes Wasser | 81       |

### Elektrische Flussdichte in Dielektrika

**Konvention**: man vereinbart, dass die elektrische Flussdichte sich immer auf das durch die freien Ladungen erzeugte Feld bezieht.

$$\vec{D} =\varepsilon_0 \vec{E}_\text{Materie} + \vec{P} = \varepsilon_0 \varepsilon_r \vec{E}_\text{Materie} = 
\varepsilon \vec{E}_\text{Materie} = \varepsilon_0 \cdot \vec{E}_\text{Vakuum}$$

Polarisation $\vec{P}= -\varepsilon_0 \vec{E}_\text{Polarisation}$

$\vec{D}$ heißt daher auch (veraltet) **Elektrische Verschiebungsdichte** (*electric displacement field*).

Vorteil: der Satz von Gauß gilt unverändert, wenn man nur die freien Ladungen berücksichtigt:

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen, frei}}$$

### Elektrische Arbeit

Bewegung einer positiven Probeladung $Q_P$ im Feld einer positiven Punktladung $Q^+$

$P_1 \rightarrow P_2$:  $W > 0$ : Arbeit wird freigesetzt
$P_2 \rightarrow P_1$ :  $W < 0$ : Arbeit muss aufgebracht werden

Vgl. Mechanik:  $W = \vec{F} \cdot \vec{s}$

Hier:  $\vec{F}$  ist abhängig von $r$!

$$W_{12} = \sum_{i} \Delta W_{i} = \sum_{i} F_{i} \cdot \Delta r$$

### Elektrische Arbeit und Potential

$$W_{12} = \sum_{i} \Delta W_{i} = \sum_{i} F_{i} \cdot \Delta r$$


Integral:  $\Delta r \rightarrow 0$

$$W_{12} = \int_{r_1}^{r_2} F(r) \cdot dr = Q_P \cdot \int_{r_1}^{r_2} E(r) \cdot dr
= Q_P \cdot \int_{r_1}^{r_2} \frac{Q^+}{4 \cdot \pi \cdot \varepsilon \cdot r^2} dr$$
$$= Q_P \cdot \left[ \frac{Q^+}{4 \cdot \pi \cdot \varepsilon} \cdot \frac{1}{r_1} - \frac{Q^+}{4 \cdot \pi \cdot \varepsilon} \cdot \frac{1}{r_2} \right]$$
$$= Q_P \cdot (\varphi_1 - \varphi_2)$$

### Elektrisches Potential einer Punktladung

Das elektrisches Potential $\varphi$ im Abstand $r$ von einer Punktladung $Q$:

$$\varphi(r) = \frac{Q}{4 \cdot \pi \cdot \varepsilon_0 \cdot \varepsilon_r \cdot r}$$

Einheit: $[\varphi] = \frac{\text{J}}{\text{C}} = \text{V}$ (Volt)

Punkte gleichen Potentials bilden Äquipotentialflächen.

### Analogie: Gravitationspotential

Potentielle Energie bzgl. Referenzhöhe:

$$E_\text{pot} = m \cdot g \cdot h = m \cdot \varphi_g(h)$$

- Höhenlinien sind Äquipotentiallinien
- Die Kraft wirkt immer in Richtung des stärksten Gefälles (senkrecht zu den Äquipotentiallinien)
- Die „Feldlinien“ sind nie in sich geschlossen

### Potentialfelder

Elektrostatische Felder sind **Potentialfelder** oder auch **wirbelfreie Felder**. Für sie gilt:

- Feldlinien beginnen und enden auf Ladungen („Quellen“ oder „Senken“)
- Feldlinien sind nie in sich geschlossen
- Das Feld lässt sich als Gradient (Richtungsableitung) eines Skalarfeldes (Potential) darstellen

Weitere Beispiele für Potentialfelder:

- Schwerkraft auf der Erdoberfläche (2D)
- Schwerkraft zwischen Himmelskörpern (3D)
- Wärmefluss in Festkörpern (1D, 2D, 3D)
- Grundwasserstrom (3D) (nur solange die Strömung wirbelfrei ist!)

### Spannung & Arbeit

#### Elektrische Spannung (*electric voltage*)

Die elektrische Spannung ist definiert als Potentialdifferenz:

$$U_{12} = \varphi_1 - \varphi_2$$

Einheit: $[U] = \text{V}$ (Volt)

#### Elektrische Arbeit (*electric field work*)

Die elektrische Arbeit ist das Produkt aus Ladung und Spannung:

$$W_{12} = \int_{P_1}^{P_2} \vec{F} \cdot d\vec{s} = Q \cdot (\varphi_1 - \varphi_2) = Q \cdot U_{12}$$

Einheit: $[W] = \text{J}$ (Joule)

Die elektrische Arbeit ist unabhängig vom Weg!




### Beziehung zwischen elektrischem Feld und Spannung

$$W_{12} = \int_{P_1}^{P_2} \vec{F} \cdot d\vec{s} = Q \cdot (\varphi_1 - \varphi_2) = Q \cdot U_{12}$$

Für die elektrische Spannung gilt allgemein:

$$U_{12} = \int_{P_1}^{P_2} \vec{E} \cdot d\vec{s} = \varphi_1 - \varphi_2$$

### Homogenes elektrisches Feld

Ein homogenes elektrisches Feld ist durch konstante Feldstärke und parallele Feldlinien gekennzeichnet.

Wichtige Eigenschaften:
- Konstante Feldstärke $E$ in Betrag und Richtung
- Parallele Feldlinien
- Äquipotentialflächen stehen senkrecht zu den Feldlinien
- Die Spannung zwischen zwei Punkten ist $U = E \cdot d$, wobei $d$ der Abstand in Feldrichtung ist

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Field_lines_equipotentials_parallel_plates.svg/1920px-Field_lines_equipotentials_parallel_plates.svg.png)



### Homogenes Feld mit dem Satz von Gauß: linke Seite

Unendlich ausgedehnte, gleichmäßig geladene Ebene mit Flächenladungsdichte $\sigma$

**Gesucht:** Elektrische Feldstärke $E$ im Abstand $d$ von der Ebene

**Ansatz:** Anwendung des Satzes von Gauß mit einem zylindrischen Gauß'schen Volumen

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$$

**Gauß'sche Fläche:** Zylinder mit Grundfläche $A$ und Achse senkrecht zur geladenen Ebene

- Mantelfläche: $\vec{D} \perp d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = 0$
- Grundflächen: $\vec{D} \parallel d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = D \cdot dA$

$$\oint_{A} \vec{D} \cdot d\vec{A} = D \cdot A + D \cdot A = 2 \cdot D \cdot A$$


### Homogenes Feld mit dem Satz von Gauß: rechte Seite

**Eingeschlossene Ladung:** $Q_{\text{innen}} = \sigma \cdot A$

**Satz von Gauß:**
$$2 \cdot D \cdot A = \sigma \cdot A$$

$$D = \frac{\sigma}{2} \quad \Rightarrow \quad E = \frac{\sigma}{2 \varepsilon_0 \varepsilon_r}$$

**Ergebnis:** Das Feld ist homogen und unabhängig vom Abstand zur Ebene.


### Kondensatoren (*capacitors*)

Kondensatoren sind elektrische Bauelemente, die elektrische Ladung speichern können.

Die gespeicherte Ladung für eine gegebene Spannung wird bezeichnet als:


**Kapazität (*capacitance*)**

$$C := \frac{Q}{U} $$


Einheit: $[C] = \frac{\text{C}}{\text{V}} = \text{F}$ (Farad)

![bg 80% right:40%](https://upload.wikimedia.org/wikipedia/commons/b/b9/Capacitors_%287189597135%29.jpg)


### ⚠️ Kapazität ≠ Kapazität

Die Kapazität (*capacity*) einer Batterie ist eine Ladungsmenge!

z.B.: $\text{mAh} = 10^{-3} \, \text{A} \cdot 3600 \, \text{s} = 3{,}6 \, \text{C}$

Nicht zu verwechseln mit der Kapazität (*capacitance*) eines Kondensators in Farad!

### Plattenkondensator


$$E =\frac{Q}{\varepsilon_0 \varepsilon_r A} ,\qquad U = E \cdot d = \frac{Q}{\varepsilon_0 \varepsilon_r A} \cdot d$$

$$C=\frac{Q}{U} = \frac{\varepsilon_0 \varepsilon_r A}{d}=\frac{\varepsilon A}{d}$$

Kapazität steigt mit:
- Fläche $A$ der Platten
- relativer Permittivität $\varepsilon_r$ des Dielektrikums
- Abnahme des Plattenabstands $d$

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/2/20/Plate_CapacitorII.svg)

### Kugelkondensator

Ein Kugelkondensator besteht aus zwei konzentrischen leitenden Kugelschalen mit den Radien $R_i$ (innen) und $R_a$ (außen).

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/3/3f/Spherical_Capacitor.svg)
### Kugelkondensator: Herleitung mit dem Satz von Gauß

**Elektrisches Feld (Satz von Gauß):**

$$\oint \vec{D} \cdot d\vec{A} = Q$$

$$D(r) \cdot 4\pi r^2 = Q \Rightarrow D(r) = \frac{Q}{4\pi r^2}$$

$$E(r) = \frac{D(r)}{\varepsilon} = \frac{Q}{4\pi \varepsilon r^2}$$

### Kapazität des Kugelkondensators

**Spannung zwischen den Kugeln:**

$$U = \int_{R_1}^{R_2} E(r)\,dr = \frac{Q}{4\pi \varepsilon} \int_{R_1}^{R_2} \frac{1}{r^2}\,dr$$

$$U = \frac{Q}{4\pi \varepsilon} \left( \frac{1}{R_1} - \frac{1}{R_2} \right)$$

**Kapazität:**

$$C = \frac{Q}{U} = 4\pi \varepsilon \frac{R_1 R_2}{R_2 - R_1}$$


### Zylinderkondensator

Ein Zylinderkondensator besteht aus zwei koaxialen leitenden Zylindern mit den Radien $R_1$ (innen) und $R_2$ (außen) und der Länge $l$.

![bg 80% right:33%](https://upload.wikimedia.org/wikipedia/commons/b/b8/Cylindrical_CapacitorII.svg)

### Zylinderkondensator: Herleitung mit dem Satz von Gauß

**Gesucht:** Elektrisches Feld zwischen den Zylindern

**Ansatz:** Satz von Gauß mit zylindrischer Gauß'scher Fläche (Radius $r$, Länge $l$)

$$\oint \vec{D} \cdot d\vec{A} = Q_{\text{eingeschlossen}}$$

**Symmetrie:** Das Feld zeigt radial nach außen, konstant auf Zylinderflächen

- Mantelfläche: $\vec{D} \parallel d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = D \cdot dA$
- Grundflächen: $\vec{D} \perp d\vec{A} \Rightarrow \vec{D} \cdot d\vec{A} = 0$

$$\oint \vec{D} \cdot d\vec{A} = D(r) \cdot 2\pi r l = Q$$

### Zylinderkondensator: Elektrisches Feld

**Aus dem Satz von Gauß:**

$$D(r) \cdot 2\pi r l = Q$$

$$D(r) = \frac{Q}{2\pi r l}$$

$$E(r) = \frac{D(r)}{\varepsilon} = \frac{Q}{2\pi \varepsilon r l}$$

**Ergebnis:** Das elektrische Feld nimmt mit $\frac{1}{r}$ ab.

### Zylinderkondensator: Spannung und Kapazität

**Spannung zwischen den Zylindern:**

$$U = \int_{R_1}^{R_2} E(r)\,dr = \frac{Q}{2\pi \varepsilon l} \int_{R_1}^{R_2} \frac{1}{r}\,dr$$

$$U = \frac{Q}{2\pi \varepsilon l} \cdot \ln\frac{R_2}{R_1}$$

**Kapazität:**

$$C = 2 \cdot \pi \cdot \varepsilon_0 \cdot \varepsilon_r \cdot \frac{l}{\ln\frac{R_2}{R_1}}$$

### Energie im Kondensator

Im elektrischen Feld eines Kondensators ist Energie gespeichert, die bei Entladung wiedergewonnen werden kann.

Während des Aufladevorgangs nimmt die Spannung mit der Ladung kontinuierlich zu:

$$U(Q) = \frac{Q}{C}$$

Die beim Aufladen gespeicherte Energie berechnet sich zu:

$$W = \int_{0}^{Q} U(q) \cdot dq = \int_{0}^{Q} \frac{q}{C} \cdot dq = \frac{Q^2}{2C}= \frac{1}{2}  Q  U = \frac{1}{2}  C  U^2$$


$$[W] = [U] \cdot [Q] = \text{V} \cdot \text{C} = \text{V} \cdot \text{A} \cdot \text{s} = \text{W} \cdot \text{s} = \text{J}$$

### Parallelschaltung von Kondensatoren

Bei der Parallelschaltung von Kondensatoren addieren sich die Kapazitäten:

$$C_{\text{ges}} = C_1 + C_2 + \dots + C_n = \sum_{i=1}^n C_i$$

Eigenschaften:
- Gleiche Spannung an allen Kondensatoren
- Die Gesamtladung ist die Summe der Einzelladungen

$$U_{\text{ges}} = U_1 = U_2 = \dots = U_n$$

![bg 100% right:50%](https://upload.wikimedia.org/wikipedia/commons/e/ee/Kondensator_C1_plus_C2.svg)

### Reihenschaltung von Kondensatoren

Bei der Reihenschaltung von Kondensatoren addieren sich die Kehrwerte der Kapazitäten:

$$\frac{1}{C_{\text{ges}}} = \frac{1}{C_1} + \frac{1}{C_2} + \dots + \frac{1}{C_n} = \sum_{i=1}^n \frac{1}{C_i}$$

Eigenschaften:
- Gleiche Ladung auf allen Kondensatoren $Q_1 = Q_2 = \dots = Q_n = Q_{\text{ges}}$
- Die Gesamtspannung ist die Summe der Einzelspannungen

$$U_{\text{ges}} = U_1 + U_2 + \dots + U_n = \sum_{i=1}^n U_i$$



$$C_{\text{ges}} = \frac{Q_{\text{ges}}}{U_{\text{ges}}} = \frac{Q_{\text{ges}}}{U_1 + U_2 + \dots + U_n} =  \frac{Q_{\text{ges}}}{Q_{\text{ges}} \cdot \left(\frac{1}{C_1} + \frac{1}{C_2} + \dots + \frac{1}{C_n}\right)} = \frac{1}{\frac{1}{C_1} + \frac{1}{C_2} + \dots + \frac{1}{C_n}}$$

### Kondensatoren mit inhomogenen Dielektrika 1


Wenn ein Plattenkondensator aus zwei Bereichen mit unterschiedlichen Dielektrika besteht, berechnet sich die Gesamtkapazität als:

$$C = C_1 + C_2 = \frac{\varepsilon_0}{d} \cdot \left(\varepsilon_{r1} \cdot A_1 + \varepsilon_{r2} \cdot A_2\right)$$

Dies entspricht einer Parallelschaltung von zwei Teilkondensatoren.

### Kondensatoren mit inhomogenen Dielektrika 2

Wenn ein Plattenkondensator aus zwei hintereinander liegenden Schichten mit unterschiedlichen Dielektrika besteht, berechnet sich die Gesamtkapazität als:

$$C = \frac{\varepsilon_0 \cdot \varepsilon_{r1} \cdot \varepsilon_{r2} \cdot A}{\varepsilon_{r2} \cdot d_1 + \varepsilon_{r1} \cdot d_2}$$

Dies entspricht einer Reihenschaltung von zwei Teilkondensatoren.


### Übersicht: Größen im elektrischen Feld

Größe | Definition | Einheit
--- | --- | ---
Elektrische Ladung (*electric charge*) | $Q$ | $[Q] = \text{C}$
Spannung (*voltage*) | $U = \Delta \varphi$ | $[U] = \text{V}$
Kapazität (*capacitance*) | $C = \frac{Q}{U}$ | $[C] = \text{F} = \frac{\text{C}}{\text{V}}$
Elektrische Feldstärke (*electric field [strength]*) | $\vec{E} = \frac{\vec{F}}{Q}$ | $[\vec{E}] = \frac{\text{V}}{\text{m}}=\frac{\text{N}}{\text{C}}$
Elektrische Flussdichte (*electric flux density*) = [Di-]Elektrische Verschiebungsdichte (*electric displacement field*) | $\vec{D} = \varepsilon_0 \varepsilon_r \vec{E}$ | $[\vec{D}] = \frac{\text{C}}{\text{m}^2}$
Elektrische Feldkonstante (*electric constant*) = Permittivität des Vakuums (*vacuum permittivity*) | $\varepsilon_0$ | $[\varepsilon_0] = \frac{\text{C}^2}{\text{N} \cdot \text{m}^2}$
[Absolute] Permittivität (*[absolute] permittivity*) = ~~Dielektrizitätskonstante~~ | $\varepsilon$ | $[\varepsilon] = \frac{\text{C}^2}{\text{N} \cdot \text{m}^2}$
Relative Permittivität (*relative permittivity*) = ~~Relative Dielektrizitätskonstante~~  | $\varepsilon_r = \frac{\varepsilon}{\varepsilon_0}$ | dimensionslos

## Quiz: Das Elektrische Feld

### Warum spielt die Gravitation im atomaren Maßstab praktisch keine Rolle?
- A) Weil Protonen und Elektronen keine Masse besitzen  
- B) Weil die elektromagnetischen Kräfte viel stärker sind als die Gravitationskräfte  
- C) Weil Gravitation nur zwischen Himmelskörpern wirkt  
- D) Weil sie durch Quantenmechanik verboten wird  

### Warum sind Atome trotz geladener Bestandteile nach außen elektrisch neutral?
- A) Weil sich Protonen und Neutronen ausgleichen  
- B) Weil sich die gleiche Anzahl an Protonen (positiv) und Elektronen (negativ) kompensiert  
- C) Weil Elektronen keine Ladung haben  
- D) Weil neutrale Teilchen überwiegen  

### Was bedeutet, dass elektrische Ladung „quantisiert“ ist?
- A) Ladung existiert nur bei Quarks  
- B) Ladung tritt nur in ganzzahligen Vielfachen einer kleinsten Einheit auf  
- C) Ladung kann beliebige Werte annehmen  
- D) Ladung hängt vom Beobachter ab  

### Was passiert mit der Kraft zwischen zwei Punktladungen nach dem Coulomb-Gesetz, wenn der Abstand halbiert wird?
- A) Sie halbiert sich  
- B) Sie vervierfacht sich  
- C) Sie verdoppelt sich  
- D) Sie bleibt gleich  

### Was zeigt die Richtung einer elektrischen Feldlinie an?
- A) Die Bewegung einer negativen Probeladung  
- B) Die Richtung der Kraft auf eine positive Probeladung  
- C) Die Richtung der Polarisation  
- D) Die Richtung minimaler Energie  

### Wann ist der Einsatz des Gaußschen Gesetzes besonders sinnvoll?
- A) Bei beliebigen Ladungsverteilungen  
- B) Bei jeder einzelnen Punktladung  
- C) Bei Systemen mit hoher Symmetrie (z. B. Kugel, Zylinder, Ebene)  
- D) Nur bei negativ geladenen Objekten  

### Warum schwächt ein Dielektrikum das elektrische Feld?
- A) Weil es freie Elektronen enthält  
- B) Weil es durch Polarisation ein Gegenfeld erzeugt  
- C) Weil es Ladung vollständig abschirmt  
- D) Weil es die Permittivität verringert  

### Warum ist die elektrische Arbeit beim Bewegen einer Ladung im elektrostatischen Feld wegunabhängig?
- A) Weil das Feld nur innerhalb von Leitern existiert  
- B) Weil Feldlinien immer geschlossen sind  
- C) Weil es sich um ein Potentialfeld handelt 
- D) Weil die Kraft immer konstant ist  

### Was beschreibt das elektrische Potential physikalisch?
- A) Die Anzahl der Feldlinien  
- B) Die potenzielle Energie pro Ladung  
- C) Die Feldstärke unabhängig vom Ort  
- D) Die Stärke der Polarisation  



## Gleichstrom

1. Stromstärke und Stromdichte
2. Widerstand und Ohm’sches Gesetz
3. [Stromkreisberechnungen](#stromkreisberechnungen) (Kirchhoff’sche Regeln)
4. Zweipoltheorie
5. Arbeit & Leistung


### Elektrischer Strom (*electric current*)

Strom ist der gerichtete Fluss von elektrischer Ladung

- Stromdichte $\vec{J} = \rho \cdot \vec{v}$
    - $\vec{v}$: Geschwindigkeit *positiver* Ladungsträger
- Stromstärke $I = \int_A \vec{J} \cdot d\vec{A} = \dfrac{dQ}{dt}$
- $[I] = \text{A} = \dfrac{\text{C}}{\text{s}}$
- $[\vec{J}] = \dfrac{\text{A}}{\text{m}^2}$

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/f/f0/Stromdichte.svg)


### Stromrichtung & Ladungsträger

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/3/3f/ElectricCurrent.gif)

- $\vec{J} = \rho \cdot \vec{v}$ zeigt in die Richtung, in die sich *positive* Ladung bewegt – egal ob die tatsächlichen Ladungsträger positiv oder negativ sind!
- Das ist auch die *Zählrichtung* der Stromstärke $I$


### Stromleitung in Metallen

- In Metallen gibt jedes Atom Elektronen ab, die sich frei im Gitter der positiv geladenen Atomrümpfe bewegen können („Elektronengas“)
- Die Ladungsdichte der Elektronen ist jederzeit konstant, da eine Ansammlung ein elektrisches Feld erzeugen würde, dass durch Abstoßung der Elektronen wieder ausgeglichen wird -> der Leiter ist überall elektrisch neutral


![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/4/41/Nuvola_di_elettroni.svg)


### Metalle im elektrischen Feld

Klassisches Bild: erfährt das Elektronengas ein elektrisches Feld, werden  die Elektronen beschleunigt, nach kurzer Zeit aber durch Stöße mit dem Metallgitter wieder abgebremst. Im Mittel ergibt sich dadurch eine konstante mittleren Geschwindigkeit $\vec{v}_d$, die Driftgeschwindigkeit. Sie geht *entgegen* der Feldrichtung $\vec{v}_d = \vec{J}/\rho$, $\rho =- ne$.


![bg right:35% 80%](https://physikbuch.schule/media/drude-model.svg)

### Zahlenbeispiel: Driftgeschwindigkeit im Kupferdraht

Kupfer, $A=1 \, \text{mm}^2$, $I=1 \, \text{A}$:

- Dichte freier Elektronen: $n \approx 8{,}5 \cdot 10^{28} \, \frac{1}{\text{m}^3}$
- Ladungsträgerdichte: $\rho = -n \cdot e \approx -1{,}36 \cdot 10^{10} \, \frac{\text{C}}{\text{m}^3}$
- Stromdichte: $|\vec{J}| = \frac{I}{A} = \frac{1 \, \text{A}}{1 \cdot 10^{-6} \, \text{m}^2} = 1 \cdot 10^{6} \, \frac{\text{A}}{\text{m}^2}$
- Driftgeschwindigkeit: $|\vec{v_d}| = \frac{|\vec{J}|}{|\rho|} \approx 7{,}35 \cdot 10^{-5} \, \frac{\text{m}}{\text{s}} \approx 0{,}26 \, \frac{\text{m}}{\text{h}}$ 🐌


### Elektrische Leitfähigkeit von Metallen (*electric conductivity*)

- Erfährt das Elektronengas ein elektrisches Feld, bewegen sich die Elektronen *entgegen* der Feldrichtung
- Für ein gegebenes Material ist die Stromdichte umso höher, je höher das elektrische Feld ist
- Der Proportionalitätsfaktor ist die elektrische Leitfähigkeit $\sigma$ des Materials

$$\vec{J} = \sigma \cdot \vec{E}$$

= Ohm’sches Gesetz (*Ohm’s law*)

Achtung: die proportionale Beziehung gilt nur für *lineare Leiter* (z.B. Metalle bei konstanter Temperatur)

### Ohm’sches Gesetz im linearen Leiter

$$\vec{J} = \sigma \cdot \vec{E}$$

- Stromdichte muss konstant sein
- Elektrisches Feld muss konstant sein
- Potential $\varphi$ muss linear abfallen
    - $\Phi(l) = \phi(0) - E \cdot l$
    - $U = \phi(0) - \phi(l) = E \cdot l$

$$I = J \cdot A = \sigma \cdot E \cdot A = \sigma \cdot \frac{U}{l} \cdot A = \frac{U}{R}$$

- Elektrischer Widerstand $R = \frac{l}{\sigma \cdot A}$ (*electric resistance*)

![bg right:30% 90%](https://physikbuch.schule/media/resistivity-geometry.svg)

### Widerstand und Leitwert

Der elektrische Widerstand $R$ ist definiert durch das Ohm’sche Gesetz:

$$R = \frac{U}{I}$$

Einheit: $[R] = \frac{\text{V}}{\text{A}} = \Omega$ (Ohm)

Der elektrische Leitwert $G$ ist der Kehrwert des Widerstands:

$$G = \frac{1}{R} = \frac{I}{U}$$

Einheit: $[G] = \frac{\text{A}}{\text{V}} = \text{S}$ (Siemens)

### Materialeigenschaften vs. Bauteilgrößen

**Materialeigenschaften** (intensiv, unabhängig von Geometrie):
- **Spezifischer Widerstand** $\rho$: Widerstand pro Längeneinheit bei Einheitsquerschnitt
- **Leitfähigkeit** $\sigma = \frac{1}{\rho}$: Leitfähigkeit des Materials

**Bauteilgrößen** (extensiv, abhängig von Geometrie):
- **Widerstand** $R = \rho \frac{l}{A}$: Widerstand eines konkreten Leiters
- **Leitwert** $G = \frac{1}{R} = \sigma \frac{A}{l}$: Leitwert eines konkreten Leiters

**Beispiel:** Kupfer hat immer die gleiche Leitfähigkeit $\sigma_{\text{Cu}} = 58 \text{ MS/m}$, aber ein dickeres Kabel hat einen kleineren Widerstand $R$.

![bg right:20% 100%](https://physikbuch.schule/media/resistivity-geometry.svg)


### Übersicht der Größen im linearen Leiter

Größe | Definition | Einheit | Name
--- | --- | --- | ---
Spannung (*voltage*) | $U = \Delta \varphi$ | $[U] = \text{V}$ | Volt
Stromstärke (*current*) | $I = \frac{\Delta Q}{\Delta t}$ | $[I] = \text{A}$ | Ampere
Widerstand (*resistance*) | $R = \frac{U}{I}$ | $[R] = \Omega$ | Ohm
Leitwert (*conductance*) | $G = \frac{1}{R}$ | $[G] = \text{S} = \frac{1}{\Omega}$ | Siemens
spezifischer Widerstand (*resistivity*) | $\rho = R \frac{A}{l}$ | $[\rho] = \Omega \cdot \text{m}$ | Ohm-Meter
Leitfähigkeit (*conductivity*) | $\sigma = \frac{1}{\rho}$ | $[\sigma] = \text{S/m}$ | Siemens pro Meter



### Temperaturabhängigkeit des Widerstands

Bei den meisten Materialien ändert sich der Widerstand mit der Temperatur.

Kleinsignalverhalten (lineare Näherung):

$$R(T) = R(T_0) \cdot [1 + \alpha \cdot (T - T_0)]$$

Dabei ist:
- $\alpha$ der Temperaturkoeffizient des Widerstands (Einheit: $[\alpha] = \frac{1}{\text{K}}$)
- $T_0$ die Bezugstemperatur (üblicherweise 20°C oder 0°C)
- $T$ die aktuelle Temperatur


### Elektrische Leitfähigkeit verschiedener Materialien

Bei Leitern nimmt der Widerstand mit steigender Temperatur zu (positiver Temperaturkoeffizient α > 0).

Typische Werte für einige Leitermaterialien bei 20°C:
| Leitermaterial | Spez. Widerstand $\rho$ (µΩ·m) | Leitfähigkeit $\sigma$ (MS/m) | Temperaturkoeffizient $\alpha$ (1/K) |
|----------------|--------------------------------------|-------------------------|--------------------------------------|
| Silber         | 0,016                               | 63                    | 3,8 · 10<sup>−3</sup>                |
| Kupfer         | 0,017                               | 58                    | 3,9 · 10<sup>−3</sup>                |
| Aluminium      | 0,027                               | 38                    | 4,3 · 10<sup>−3</sup>                |
| Messing        | 0,062                                | 16                    | 2,0 · 10<sup>−3</sup>                |

$R(T) = R(T_0) \cdot [1 + \alpha \cdot (T - T_0)]$


### Metalle als Temperatursensoren

Die Temperaturabhängigkeit des Widerstands macht Metalle zu präzisen Temperatursensoren.

**Platin-Widerstandsthermometer (Pt100):**
- Pt100: $R(0°\text{C}) = 100 \, \Omega$
- Temperaturkoeffizient: $\alpha_{\text{Pt}} = 3{,}85 \cdot 10^{-3} \, \text{K}^{-1}$


**Vorteile von Platin-Sensoren:**
- Hohe Langzeitstabilität
- Breiter Messbereich (-200°C bis +850°C)
- Gute Linearität
- Chemische Beständigkeit

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/b/b3/Pt100_Resistors.jpg)



## Stromkreisberechnungen

1. Die Kirchhoff’schen Gesetze
2. Zweipoltheorie
3. Arbeit und Leistung im Gleichstromkreis

### Knotenpunktregel (1. Kirchhoff’sches Gesetz)

In einem Knotenpunkt kann weder Ladung gespeichert noch erzeugt werden. Die Summe aller zufließenden Ströme ist gleich der Summe aller abfließenden Ströme:

$$\sum_{k} I_{k} = 0$$

![bg right:22% 70%](https://upload.wikimedia.org/wikipedia/commons/5/51/Stromknoten.svg)

### Mathematische Analogie

In einer stationären (zeitlich unveränderlichen) Stromverteilung ist die elektrische Ladung überall konstant. Der gesamte Strom durch jede geschlossene Oberfläche ist Null:

$$\oint_{A} \vec{J} \cdot d\vec{A} = - \frac{dQ_{\text{innen}}}{dt} = 0$$

Vgl. Satz von Gauß in Abwesenheit von eingeschlossener Ladung:

$$\oint_{A} \vec{D} \cdot d\vec{A} = Q_{\text{innen}} = 0$$

(NB: die obige Gleichung folgt *nicht* aus der unteren – die mathematische Analogie gilt, da sowohl das elektrostatische Feld als auch die stationäre Stromdichte **quellenfreie Vektorfelder** sind.)


### Maschenregel (2. Kirchhoff’sches Gesetz)

Die Summe aller in einer Masche auftretenden Spannungen ist Null:

$$\sum_{k} U_{k} = 0$$


![bg right:42% 70%](https://upload.wikimedia.org/wikipedia/commons/4/41/Masche_und_Knoten.svg)

### Reihenschaltung von Widerständen


$$R_\text{ges} = R_1 + R_2 + R_3 + \dots + R_n = \sum_{i=1}^{n} R_i$$

- Gleicher Strom durch alle Widerstände: $I = I_1 = I_2 = \dots = I_n$
- Die Gesamtspannung ist die Summe der Einzelspannungen: $U_\text{ges} = U_1 + U_2 + \dots + U_n$
- Gesamtwiderstand ist größer als der größte Einzelwiderstand

![bg right:30% 70%](https://upload.wikimedia.org/wikipedia/commons/2/27/Reihenschaltung_Widerst%C3%A4nde.svg)

### Spannungsteiler

Bei einer Reihenschaltung teilt sich die Gesamtspannung im Verhältnis der Widerstände auf:

$$I = \frac{U}{R_\text{ges}} = \frac{U_1}{R_1} = \frac{U_2}{R_2}$$

![bg right:30% 70%](https://upload.wikimedia.org/wikipedia/commons/9/91/Spannungsteiler.svg)


### Parallelschaltung von Widerständen

Bei einer Parallelschaltung von Widerständen addieren sich die Leitwerte zum Gesamtleitwert:

$$\frac{1}{R_\text{ges}} = \frac{1}{R_1} + \frac{1}{R_2} + \dots + \frac{1}{R_n} = \sum_{i=1}^{n} \frac{1}{R_i}$$

Oder mit Leitwerten:

$$G_\text{ges} = G_1 + G_2 + \dots + G_n = \sum_{i=1}^{n} G_i$$


- Der Gesamtstrom ist die Summe der Einzelströme: $I_\text{ges} = I_1 + I_2 + \dots + I_n$
- Gleiche Spannung an allen Widerständen: $U = U_1 = U_2 = \dots = U_n$
- Der Gesamtwiderstand ist kleiner als der kleinste Einzelwiderstand


![bg right:25% 90%](https://upload.wikimedia.org/wikipedia/commons/a/ab/Parallelschaltung_Widerst%C3%A4nde.svg)

### Parallelschaltung: Herleitung

Wegen der Knotenregel gilt:

$$I_\text{ges} = I_1 + I_2 + \dots + I_n = \frac{U}{R_1} + \frac{U}{R_2} + \dots + \frac{U}{R_n}$$

Außerdem per Definition:

$$I_\text{ges} = \frac{U}{R_\text{ges}}$$

Es folgt:

$$\Rightarrow\frac{U}{R_\text{ges}} = U \cdot \left(\frac{1}{R_1} + \frac{1}{R_2} + \dots + \frac{1}{R_n}\right)$$

$$\Rightarrow\frac{1}{R_\text{ges}} = \frac{1}{R_1} + \frac{1}{R_2} + \dots + \frac{1}{R_n}$$

### Stromteilerregel

Bei einer Parallelschaltung teilt sich der Gesamtstrom im umgekehrten Verhältnis der Widerstände bzw. im direkten Verhältnis der Leitwerte auf:

$$\frac{I}{G_\text{ges}} = \frac{I_1}{G_1} = \frac{I_2}{G_2}= \dots = \frac{I_n}{G_n}$$

![bg right:30% 50%](https://upload.wikimedia.org/wikipedia/commons/e/e5/Stromteiler-allgemein.svg)


## Zweipoltheorie

Ein Zweipol (*two-pole*) oder Eintor (*one-port*) ist ein elektrisches Bauteil mit zwei zugänglichen Anschlüssen

![bg right:30% 80%](https://upload.wikimedia.org/wikipedia/commons/c/ce/One_Port_Circuit_de.svg)


**Gliederung**

1. Passive lineare Zweipole
2. Aktive lineare Zweipole
    1. Ideale Spannungsquelle
    2. Ideale Stromquelle
    3. Reale Spannungsquelle
    4. Reale Stromquelle
    5. Äquivalenz von realer Spannungs- und Stromquelle

### Passive lineare Zweipole

- Passiv: Zweipol gibt keine Energie ab
- Linear: Strom-Spannungs-Kennlinie ist eine Gerade

Passive lineare Zweipole können zu einem Ersatzwiderstand zusammengefasst werden

$$U = R \cdot I$$


### Ideale Spannungsquelle

Eine ideale Spannungsquelle liefert eine konstante Spannung $U_0$ unabhängig von der Belastung.

Eigenschaften:
- Konstante Klemmenspannung $U = U_0$
- Innenwiderstand $R_i = 0$
- Beliebiger Strom $I$ möglich

![bg right:25% 70%](https://upload.wikimedia.org/wikipedia/commons/5/56/Quelle_U-Schaltzeichen.svg)

### Ideale Stromquelle

Eine ideale Stromquelle liefert einen konstanten Strom $I_0$ unabhängig von der Belastung.

Eigenschaften:
- Konstanter Strom $I = I_0$
- Innenwiderstand $R_i = \infty$
- Beliebige Spannung $U$ möglich

![bg right:30% 70%](https://upload.wikimedia.org/wikipedia/commons/3/3a/Quelle_I-Schaltzeichen.svg)

### Reale Spannungsquelle

Eine reale Spannungsquelle kann als Reihenschaltung einer idealen Spannungsquelle $U_0$ mit einem Innenwiderstand $R_i$ dargestellt werden.

Eigenschaften:
- Klemmenspannung nimmt mit zunehmendem Strom ab: $U = U_0 - R_i \cdot I$
- Bei Leerlauf: $U = U_0$ (maximale Spannung)
- Bei Kurzschluss: $I = \frac{U_0}{R_i}$ (maximaler Strom)

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/1/11/Quelle_U-Ersatz.svg)

### Reale Stromquelle

Eine reale Stromquelle kann als Parallelschaltung einer idealen Stromquelle $I_0$ mit einem Innenwiderstand $R_i$ dargestellt werden.

Eigenschaften:
- Strom nimmt mit zunehmender Spannung ab: $I = I_0 - \frac{U}{R_i}$
- Bei Leerlauf: $U = I_0 \cdot R_i$ (maximale Spannung)
- Bei Kurzschluss: $I = I_0$ (maximaler Strom)

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/c/cd/Quelle_I-Ersatz.svg)

### Äquivalenz von realer Spannungs- und Stromquelle

Die reale Spannungsquelle und reale Stromquelle sind äquivalent, wenn folgende Beziehungen gelten:

$$U_0 = I_0 \cdot R_i$$

$$I_0 = \frac{U_0}{R_i}$$

**Umrechnung:**
- Spannungsquelle → Stromquelle: $I_0 = \frac{U_0}{R_i}$
- Stromquelle → Spannungsquelle: $U_0 = I_0 \cdot R_i$

Beide Darstellungen beschreiben dieselbe I-U-Kennlinie: $U_\text{kl} = U_0 - R_i \cdot I$

![bg right:30% vertical 90%](https://upload.wikimedia.org/wikipedia/commons/1/11/Quelle_U-Ersatz.svg)

![bg right:30% vertical 90%](https://upload.wikimedia.org/wikipedia/commons/c/cd/Quelle_I-Ersatz.svg)

### Reihenschaltung von aktiven, linearen Zweipolen

Bei der Reihenschaltung von realen Spannungsquellen addieren sich die Leerlaufspannungen und die Innenwiderstände:

$$U_{0,\text{ges}} = U_{0,1} + U_{0,2} + \dots + U_{0,n}$$

$$R_{i,\text{ges}} = R_{i,1} + R_{i,2} + \dots + R_{i,n}$$

**Anwendung:** Batteriepacks in Taschenlampen, Elektroautos
**Vorteil:** Höhere Gesamtspannung
**Nachteil:** Höherer Innenwiderstand, bei Ausfall einer Quelle fällt das gesamte System aus

### Parallelschaltung von aktiven, linearen Zweipolen

Bei der Parallelschaltung von realen Spannungsquellen mit gleicher Leerlaufspannung $U_0$ addieren sich die Leitwerte der Innenwiderstände:

$$\frac{1}{R_{i,\text{ges}}} = \frac{1}{R_{i,1}} + \frac{1}{R_{i,2}} + \dots + \frac{1}{R_{i,n}}$$

Die gemeinsame Leerlaufspannung bleibt $U_0$.

**Anwendung:** Notstromversorgung, Batteriepacks für höhere Ströme
**Vorteil:** Geringerer Innenwiderstand, höhere verfügbare Ströme
**Nachteil:** Nur bei gleichen Spannungen sinnvoll, Ausgleichsströme bei unterschiedlichen Quellen



## Arbeit und Leistung in Gleichstromkreisen

1. Elektrische Arbeit
2. Elektrische Leistung

### Elektrische Arbeit (Energie)

Die elektrische Arbeit ist definiert als das Produkt aus Spannung, Strom und Zeit:

$$W = U \cdot I \cdot t = I^2 \cdot R \cdot t = \frac{U^2}{R} \cdot t$$

Einheit: $[W] = \text{V} \cdot \text{A} \cdot \text{s} =\text{W} \cdot \text{s} = \text{J}$ (Joule)

### Elektrische Leistung

Die elektrische Leistung ist definiert als elektrische Arbeit pro Zeiteinheit:

$$P = \frac{dW}{dt} = U \cdot I = I^2 \cdot R = \frac{U^2}{R}$$

Einheit: $[P] = \text{W}$ (Watt)



## Leistungsanpassung

Die Leistungsanpassung beschäftigt sich mit der Frage, bei welchem Verbraucherwiderstand $R$ die maximale Leistung aus einer Quelle entnommen werden kann.

Für eine reale Spannungsquelle mit der Leerlaufspannung $U_0$ und dem Innenwiderstand $R_i$ beträgt die Leistung am Verbraucher:

$$P = R \cdot I^2 = U_0^2 \cdot \frac{R}{(R_i + R)^2}$$

Diese Leistung wird maximal, wenn der Verbraucherwiderstand gleich dem Innenwiderstand der Quelle ist:

$$R = R_i$$

Die maximale Leistung beträgt dann:

$$P_\text{max} = \frac{U_0^2}{4 \cdot R_i}$$

### Anpassungsverhältnis und Wirkungsgrad

Das Anpassungsverhältnis $\alpha$ ist definiert als:

$$\alpha = \frac{R}{R_i}$$

Der Wirkungsgrad $\eta$ gibt das Verhältnis der am Verbraucher umgesetzten Leistung zur Gesamtleistung der Quelle an:

$$\eta = \frac{P}{P_0} = \frac{R}{R_i + R} = \frac{\alpha}{1 + \alpha}$$

Bei optimaler Leistungsanpassung ($\alpha = 1$) beträgt der Wirkungsgrad nur $\eta = 0,5$ (50%).


### Betriebszustände einer aktiven Quelle

|             | Last            | Leistung Quelle $P_0$                                | Leistung Last $P$               | Wirkungsgrad $\eta$ |
|-----------------|----------------------|------------------------------------------------------|---------------------------------|---------------------|
| Kurzschluß      | $R = 0$              | $P_0 = \frac{U_0^2}{R_i}$                            | $P = 0$                         | $\eta = 0$          |
| Unteranpassung  | $R < R_i$            | $P_0 = \frac{U_0^2}{R_i} \cdot \frac{R}{R+R_i}$      | $0 < P < P_\text{max}$          | $0 < \eta < 0{,}5$    |
| Anpassung       | $R = R_i$            | $P_0 = \frac{U_0^2}{2R_i}$                           | $P = \frac{U_0^2}{4R_i}$        | $\eta = 0{,}5$        |
| Überanpassung   | $R > R_i$            | $P_0 = \frac{U_0^2}{R_i} \cdot \frac{R}{R+R_i}$      | $0 < P < P_\text{max}$          | $0{,}5 < \eta < 1$    |
| Leerlauf        | $R \to \infty$       | $P_0 = 0$                                            | $P = 0$                         | $\eta = 1$          |



## Magnetismus

1. Magnetisches Feld
2. Magnetisches Feld in Materie
3. Kräfte im magnetischen Feld
4. [Magnetischer Kreis](#der-magnetische-kreis)

### Elektrizität & Magnetismus

... sind untrennbar verbunden. Eine Konsistente Naturbeschreibung erfordert beide

Grenzfälle:

- Ruhende Ladungen -> **Elektrostatik**
- Konstante Stromverteilungen -> **Magnetostatik**
- Langsam bewegte Ladungen & langsam veränderliche Ströme -> **Quasistatik**
- Allgemeiner Fall -> **Elektrodynamik**

### Magnetpole

- Magnete besitzen immer zwei Pole: Nordpol (N) und Südpol (S)
    - Nordpol = Pol, der auf der Erde nach Norden zeigt
- Gleichnamige Pole stoßen sich ab, ungleichnamige Pole ziehen sich an

![bg right:40% 70%](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Geomagnetic_field_and_magnet_analogy.png/640px-Geomagnetic_field_and_magnet_analogy.png)

### Kräfte zwischen elektrischen Leitern

Zwei parallele, stromdurchflossene Leiter üben eine Kraft aufeinander aus

$$\frac{|\vec{F_{12}}|}{l} = 2k_A \cdot \frac{I_1 I_2}{d}$$


Magnetfelder entstehen durch bewegte elektrische Ladungen (Ströme)

Im SI-System gilt $k_A = \frac{\mu_0}{4\pi}$ mit $\mu_0 \approx 4\pi \cdot 10^{-7} \frac{\text{N}}{\text{A}^2}$

![bg right:30% 80%](https://upload.wikimedia.org/wikipedia/commons/b/bc/MagneticWireAttraction.svg)


### Wichtiger Unterschied zur Elektrostatik

- In der Elektrostatik haben wir die Feldstärke über die Kraft definiert: $\vec{E} = \frac{\vec{F}}{Q}$
- In der Magnetostatik geht das nicht so einfach, da die Kraft senkrecht zur Bewegungsrichtung der Ladung wirkt
- Wir können experimentell die Feldlinien durch die Ausrichtung eines Permanentmagneten (Kompassnadeln) sichtbar machen

### Magnetische Feldlinien


![width:20cm](https://upload.wikimedia.org/wikipedia/commons/a/af/VFPt_cylindermagnet_field-representations.svg)

- Magnetische Feldlinien zeigen in die Richtung, in die sich der Nordpol eines kleinen Testmagneten ausrichten würde: N -> S außerhalb des Magneten
- Magnetische Feldlinien sind immer geschlossen (keine magnetischen Monopole) oder unendlich lang
- Die Dichte der Feldlinien ist ein Maß für die Stärke des Magnetfeldes

### Magnetische Flussdichte $\vec{B}$

Die magnetische Flussdichte $\vec{B}$ zeigt entlang der magnetischen Feldlinien. Ihr Betrag ist proportional zur Dichte der Feldlinien.

![bg right:33% 70%](https://upload.wikimedia.org/wikipedia/commons/0/0c/VFPt_cylindrical_magnet_thumb.svg)

### Rechte-Faust-Regel

- Ein gerader, stromdurchflossener Leiter erzeugt ein ringförmiges Magnetfeld. Wenn der Daumen der Faust in Stromrichtung zeigt, zeigen die gekrümmten Finger in Feldrichtung
- Alternativ: eindrehen einer Schraube in Stromrichtung -> Drehrichtung der Schraube entspricht der Feldlinienrichtung

![bg right:40% 70%](https://upload.wikimedia.org/wikipedia/commons/3/3e/Manoderecha.svg)



### Magnetische Flussdichte eines stromdurchflossenen Leiters

Im Abstand $r$ von einem geraden, unendlich langen Leiter:

$$|\vec{B}| = \frac{\mu_0}{2\pi} \cdot \frac{I}{r}$$

Einheit: das Tesla

$$[\vec{B}] = [\mu_0] \cdot \frac{[I]}{[r]} = \frac{\text{N}}{\text{A}^2} \cdot \frac{\text{A}}{\text{m}} = \frac{\text{N}}{\text{A}\cdot\text{m}}  = \frac{\text{N}}{\text{C} \cdot \frac{\text{m}}{\text{s}}} = \text{T} $$


### Einheit Tesla: numerisches Beispiel

Historische Definition des Amperes: Zwei parallele, unendlich lange Leiter im Abstand von 1 m, durch die jeweils 1 A fließen, üben eine Kraft von $2 \cdot 10^{-7} \frac{\text{N}}{\text{m}}$ aufeinander aus -> $\mu_0 = 4\pi \cdot 10^{-7} \frac{\text{N}}{\text{A}^2}$

Wieviel Ampere müssen durch einen Leiter fließen, um ein Magnetfeld von 1 T in 1 m Abstand zu erzeugen?


### Größenordnung der Magnetischen Flussdichte

| Magnet                | Magnetische Flussdichte *B* |
|-----------------------------------|------------------------------------------|
| Erdmagnetfeld                     | 30 µT – 60 µT                            |
| Kühlschrankmagnet                 | 1 mT – 10 mT                             |
| Magnetstreifen (Kreditkarte)      | 10 mT – 100 mT                           |
| Lautsprechermagnet                | 100 mT – 1 T                             |
| MRT-Gerät            | 1 T – 3 T                             |
| Large Hadron Collider (LHC)  | 8 T                                      |
| Fusionskraftwerk  | 5–15 T


### Permanenter Magnetismus: Ursprung im Elektronenspin

**Elektronenspin** (intrinsische Eigenschaft):
- Das Elektron besitzt einen **Spin** – eine quantenmechanische Eigenschaft ähnlich einem Drehimpuls
- Man kann sich (vereinfacht) vorstellen: Elektron verhält sich *als ob* es um die eigene Achse rotiert

**Konsequenz:**
- Jedes Elektron ist ein winziger **Permanentmagnet**
- Makroskopische Magnete entstehen durch **Ausrichtung** vieler Elektronenspins

![bg right:35% 90%](https://upload.wikimedia.org/wikipedia/commons/7/7f/Electron-spin-classical-model-symbols-simplified.svg)


### Kräfte im magnetischen Feld

**Lorentzkraft auf bewegte Ladung:**

$$\vec{F} = Q \cdot (\vec{v} \times \vec{B})$$

**Kraft auf stromdurchflossenen Leiter:**

$$\vec{F} = I \cdot (\vec{\ell} \times \vec{B})$$

- Skalar (wenn $\vec{\ell} \perp \vec{B}$): $F = I \cdot \ell \cdot B$
- **Rechte-Hand-Regel:** Daumen = Stromrichtung, Zeigefinger = Feldrichtung, Mittelfinger = Kraftrichtung

![bg right:30% 90%](https://upload.wikimedia.org/wikipedia/commons/2/23/UVW-regel-strom-und-positive-ladung.svg)



### Bewegte Ladung im Magnetfeld


**Kreisbewegung:**
- Lorentzkraft wirkt als Zentripetalkraft: $Q \cdot v \cdot B = \frac{m \cdot v^2}{r}$
- Bahnradius: $r = \frac{m \cdot v}{Q \cdot B}$
- Umlauffrequenz: $f = \frac{Q \cdot B}{2\pi m}$ (unabhängig von $v$!)

**Anwendungen:**
- Teilchenbeschleuniger (Zyklotron)
- Massenspektrometer


![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/3/3a/Circular-path-of-a-proton-in-a-homogeneous-magnetic-field.svg)




### Vergleich: Elektrisches und Magnetisches Feld

| Eigenschaft | Elektrisches Feld | Magnetisches Feld |
|-------------|-------------------|-------------------|
| **Feldlinien** | Beginnen/enden auf Ladungen | Enden nie |
| **Quellen** | Ladungen | Keine (keine Monopole) |
| **Wirbel** | Keine (wirbelfrei) | Ströme erzeugen Wirbel |
| **Potential** | Darstellbar als Gradient | Nicht darstellbar |
| **Arbeit** | Wegunabhängig | keine (Magnetostatik) |

**Elektrostatisches Feld** = Quellenfeld, wirbelfrei
**Magnetostatisches Feld** = Quellenfrei, Wirbelfeld


### Magnetischer Fluss $\Phi$

Der magnetische Fluss $\Phi$ durch eine Fläche $A$ ist definiert als:

$$\Phi = \int_A \vec{B} \cdot d\vec{A}$$

- Einheit: $[\Phi] = \text{Vs}$ (Weber)

Da das magnetische Feld *quellenfrei* ist, gilt für jede geschlossene Fläche:

$$\Phi_\text{geschl. Fl.} = \oint_A \vec{B} \cdot d\vec{A} = 0$$

(Vergleiche: Satz von Gauß, $\oint_A \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$)




### Magnetische Feldstärke $\vec{H}$

Die magnetische Feldstärke $\vec{H}$ beschreibt die Fähigkeit eines elektrischen Stroms, ein Magnetfeld zu erzeugen.

**Zusammenhang mit der magnetischen Flussdichte** (im Vakuum):

$$\vec{B} = \mu_0 \vec{H}$$

- Einheit: $[H] = \frac{[B]}{[\mu_0]} = \frac{\text{T}}{\frac{\text{N}}{\text{A}^2}} = \frac{\frac{\text{N}\cdot\text{s}}{\text{A}\cdot\text{m}}}{\frac{\text{N}}{\text{A}^2}}=\frac{\text{A}}{\text{m}}$

**Beispiel:**
- Gerader stromdurchflossener Leiter (Abstand $r$): $H = \frac{I}{2\pi r}$

### Durchflutungsgesetz (Ampèresches Gesetz)

Die Summe der magnetischen Feldstärke längs eines geschlossenen Weges ist gleich der Gesamtstromdurchflutung:

$$\Theta = N \cdot I = \oint \vec{H}(s) \cdot d\vec{s}$$

Erinnerung: in der Elektrostatik gilt aufgrund der Wegunabhängigkeit des Potentials:

$$U =\int \vec{E}(s) \cdot d\vec{s} ~~\Rightarrow~~ \oint \vec{E}(s) \cdot d\vec{s} = 0$$


### Vergleich: Gaußsches Gesetz und Ampèresches Gesetz

**Berechnung von Feldern mit hoher Symmetrie:**

| Elektrostatik | Magnetostatik |
|---------------|---------------|
| **Gaußsches Gesetz** | **Ampèresches Gesetz** |
| $\oint_A \vec{D} \cdot d\vec{A} = Q_{\text{innen}}$ | $\oint_s \vec{H} \cdot d\vec{s} = I_{\text{umschlossen}}$ |
| Quellenfeld | Wirbelfeld |
| **Quellenfreiheit:** | **Wirbelfreiheit:** |
| $\oint_s \vec{E} \cdot d\vec{s} = 0$ | $\oint_A \vec{B} \cdot d\vec{A} = 0$ |
| (Elektrostatische Felder sind wirbelfrei) | (Magnetische Felder sind quellenfrei) |

**Anwendung bei Symmetrie:**
- Gaußsches Gesetz → Kugel-, Zylinder-, Plattensymmetrie für Ladungen
- Ampèresches Gesetz → Zylinder-, Ebenen-, Toroidsymmetrie für Ströme

### Magnetfeld einer langen Spule

**Aufbau:** Lange Spule mit $N$ Windungen, Länge $\ell$, Strom $I$

**Durchflutungsgesetz:**

$$\oint \vec{H} \cdot d\vec{s} = N \cdot I$$

**Im Inneren der Spule:**

$$H = \frac{N \cdot I}{\ell} = n \cdot I \quad \text{mit } n = \frac{N}{\ell}$$

$$B = \mu_0 \mu_r H = \mu_0 \mu_r n I$$

**Außerhalb:** $B \approx 0$

![bg right:40% 80%](https://upload.wikimedia.org/wikipedia/commons/0/05/Cylindrical_long_tightly-wound_coil2.svg)


### Beispiel: Magnetfeld in einem Tokamak

![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Schematic-of-a-tokamak-chamber-and-magnetic-profile.jpg/640px-Schematic-of-a-tokamak-chamber-and-magnetic-profile.jpg)

### Beispiel: Magnetfeld in einem Tokamak

Ringförmiges Fusionsreaktor-Design mit toroidalem Magnetfeld zum Plasmaeinschluss

**Toroidale Feldspulen (TF):**
- $N$ Spulen gleichmäßig um den Torus verteilt, $M$ Windungen, Strom $I$ pro Windung
- Ampèresches Gesetz auf kreisförmigem Weg (Radius $r$):

$$\oint \vec{H} \cdot d\vec{s} = H \cdot 2\pi r = N M \cdot I \Rightarrow H(r) = \frac{N M I}{2\pi r}$$

**Eigenschaften:**
- Feld nimmt mit $\frac{1}{r}$ ab (inhomogen)
- Typische Werte: $B \approx 5{-}15 \, \text{T}$

**Beispiel ITER:** 18 TF-Spulen, 134 Windungen  68 kA, B = 5,3 T bei 6,2 m Radius


### Magnetisches Verhalten von Materie

Ähnlich wie bei Dielektrika im elektrischen Feld reagiert Materie im Magnetfeld durch **Magnetisierung**.

**Magnetische Dipole in Atomen:**
- Elektronen haben einen intrinsischen **Spin** (magnetischer Dipol)
- Bahnbewegung der Elektronen erzeugt **Bahnmagnetismus**
- Atomrümpfe können ebenfalls magnetische Momente besitzen

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/c/c8/Elementary-magnets.png)


### Magnetische Suszeptibilität und Permeabilität

Die Magnetisierung $\vec{M}$ ist proportional zur magnetischen Feldstärke $\vec{H}$:

**Magnetische Suszeptibilität** $\chi_m$:

$$\vec{M} = \chi_m \vec{H} \quad \text{bzw.} \quad \mu_r = 1 + \chi_m$$

**Reaktion auf äußeres Feld:**
- Diamagnetismus: Dipole richten sich **gegen** das äußere Feld ($\mu_r < 1$, $\chi_m < 0$)
- Paramagnetismus: Dipole richten sich **mit** dem äußeren Feld ($\mu_r > 1$, $\chi_m > 0$)
- Ferromagnetismus: Starke Ausrichtung der Dipole ($\mu_r \gg 1$, $\chi_m \gg 1$)


### Magnetische Eigenschaften der Elemente

![width:23cm](https://www.e-magnetica.pl/lib/exe/fetch.php/magnetic_elements_magnetica.png)

(S. Zurek, Encyclopedia Magnetica, CC-BY-4.0)


### Diamagnetismus

**Eigenschaften:**
- Tritt in allen Materialien auf
- Magnetische Suszeptibilität: $\chi_m < 0$ (sehr klein)
- Relative Permeabilität: $\mu_r < 1$ (knapp unter 1)

**Physikalischer Mechanismus:**
- Externes Magnetfeld induziert Änderung der Elektronenbahnen
- Erzeugt magnetisches Moment **entgegen** dem äußeren Feld
- Effekt verschwindet, wenn Feld abgeschaltet wird

**Beispiele:** Kupfer, Silber, Gold, Wasser, organische Materialien


### Levitation

Diamagnetische Materialien können in starken Magnetfeldern schweben

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/7/7b/Frog_diamagnetic_levitation.jpg)

### Paramagnetismus

**Eigenschaften:**
- Atome besitzen permanente magnetische Dipole
- Magnetische Suszeptibilität: $\chi_m > 0$ (klein)
- Relative Permeabilität: $\mu_r > 1$ (knapp über 1)
- Paramagnete werden **schwach von Magneten angezogen**

**Physikalischer Mechanismus:**
- Ohne externes Feld: zufällige Ausrichtung der Dipole (thermische Bewegung)
- Mit externem Feld: partielle Ausrichtung **parallel** zum Feld
- Stärker bei tiefen Temperaturen (Curie-Gesetz: $\chi_m \propto 1/T$)

**Beispiele:** Aluminium, Platin, Sauerstoff



### Ferromagnetismus

**Eigenschaften:**
- Sehr starke Magnetisierung
- Magnetische Suszeptibilität: $\chi_m \gg 1$
- Relative Permeabilität: $\mu_r \gg 1$ (bis zu $10^5$), viel größer als bei Paramagneten!
- **Spontane Magnetisierung** auch ohne externes Feld möglich

**Physikalischer Mechanismus:**
- Starke Wechselwirkung zwischen benachbarten Atomen (**Austauschwechselwirkung**)
- Bildung von **Weiss'schen Bezirken** (Domänen)
- Externes Feld richtet Domänen aus

**Beispiele:** Eisen, Kobalt, Nickel

### Weiß’sche Bezirke
- Bereiche mit **gleich orientierten magnetischen Dipolen**
- Spontane Magnetisierung innerhalb der Bezirke

**Ohne äußeres Feld:**
- Bezirke sind zufällig orientiert → keine Gesamtmagnetisierung

**Mit äußerem Feld:**
- Bezirke richten sich aus
- Bei Sättigung: einheitliche Ausrichtung

![bg right:50% 100%](https://upload.wikimedia.org/wikipedia/commons/0/0a/Growing-magnetic-domains.svg)

### Ferromagnetismus: Hysterese


**Kenngrößen:**
- **Sättigungsmagnetisierung** (1): maximale Magnetisierung
- **Remanenz** (2): verbleibende Flussdichte bei verschwindendem äußeren Feld
- **Koerzitivfeldstärke** (3): Feldstärke zum Entmagnetisieren

![bg right:40% 85%](https://upload.wikimedia.org/wikipedia/commons/e/ee/Hysteresis-from-unmagnetised-state.svg)


### Harte/weiche Magnete

- **Weiche Magnetmaterialien:**
    - Leicht magnetisier- und entmagnetisierbar
    - Anwendung: Transformatoren, Elektromagnete

- **Harte Magnetmaterialien:**
    - Behalten Magnetisierung
    - Anwendung: Permanentmagnete, Motoren, Lautsprecher


![bg right:60% 100%](https://upload.wikimedia.org/wikipedia/commons/4/4b/Hysteresis-comparison.svg)



### Magnetisches Feld und Magnetisierung

**Magnetisierung** $\vec{M}$: magnetisches Dipolmoment pro Volumeneinheit

$$\vec{B} = \mu_0(\vec{H} + \vec{M}) = \mu_0 \mu_r \vec{H}$$

**Zusammenhang der Feldgrößen:**

$$\vec{H} = \frac{\vec{B}}{\mu_0 \mu_r}$$

**Konvention**: Die magnetische Feldstärke $\vec{H}$ beschreibt das durch freie Ströme erzeugte Magnetfeld – ohne Beiträge der Magnetisierung des Materials.

**Vorteil:** Das Durchflutungsgesetz gilt unverändert für freie Ströme:

$$\oint \vec{H} \cdot d\vec{s} = I_{\text{frei}}$$


### Analogie Elektrostatik <-> Magnetostatik

**Elektrostatik:**
- Elektrische Flussdichte: $\vec{D} = \varepsilon_0 \vec{E} + \vec{P}$ (bezieht sich auf freie Ladungen)
- Vorteil: Das Gaußsche Gesetz gilt unverändert für freie Ladungen:
  
  $$\oint \vec{D} \cdot d\vec{A} = Q_{\text{frei}}$$

**Magnetostatik:**

- Magnetische Feldstärke: $\vec{H} = \frac{\vec{B}}{\mu_0} - \vec{M}$ (bezieht sich auf freie Ströme)
- Vorteil: Das Durchflutungsgesetz gilt unverändert für freie Ströme:
  
  $$\oint \vec{H} \cdot d\vec{s} = I_{\text{frei}}$$

### Analogie der Feldgrößen

![width:18cm](https://upload.wikimedia.org/wikipedia/commons/d/d2/Gr%C3%B6%C3%9Fen_im_elektrischen_und_magnetischen_Feld.svg)

### Übersicht: Größen in der Magnetostatik

Größe | Definition | Einheit
--- | --- | ---
Magnetische Flussdichte (*magnetic flux density*) | $\vec{B}$ | $[\vec{B}] = \text{T} = \frac{\text{N}}{\text{A} \cdot \text{m}}$
Magnetische Feldstärke (*magnetic field [strength]*) | $\vec{H} = \frac{\vec{B}}{\mu_0 \mu_r}$ | $[\vec{H}] = \frac{\text{A}}{\text{m}}$
Magnetischer Fluss (*magnetic flux*) | $\Phi = \int_A \vec{B} \cdot d\vec{A}$ | $[\Phi] = \text{Vs} = \text{Wb}$
Durchflutung (*magnetomotive force*) | $\Theta = N \cdot I = \oint \vec{H} \cdot d\vec{s}$ | $[\Theta] = \text{A}$
Magnetische Feldkonstante (*magnetic constant*) = ~~Permeabilität des Vakuums (*vacuum permeability*)~~ | $\mu_0$ | $[\mu_0] = \frac{\text{N}}{\text{A}^2}$
[Absolute] Permeabilität (*[absolute] permeability*) | $\mu$ | $[\mu] = \frac{\text{N}}{\text{A}^2}$
Relative Permeabilität (*relative permeability*) | $\mu_r = \frac{\mu}{\mu_0}$ | dimensionslos


### Der magnetische Kreis

**Definition:** geschlossener Pfad aus ferromagnetischem Material, durch den magnetischer Fluss geführt wird

**Relevant in vielen Anwendungen:**

- Elektromotoren (E-Autos, Industrie)
- Transformatoren (Energieversorgung)
- Induktives Laden (Smartphones, E-Autos)
- Sensoren und Aktuatoren
- Generatoren (Windkraftanlagen)

**Problem:** Wie dimensioniert man diese Systeme effizient?

![bg right:35% 100%](https://upload.wikimedia.org/wikipedia/commons/d/d0/Electromagnet_with_gap.svg)

### Herausforderung: Komplexe Magnetfelder

**Direkter Ansatz wäre kompliziert:**

- Berechnung von $\vec{B}$-Feldern in 3D
- Numerische Simulation (FEM) zeitaufwendig


**Eindimensionale Lösung: Der magnetische Kreis**

Eine *mathematische Analogie* zum elektrischen Stromkreis:
- Einfache Berechnungen wie bei Widerstandsnetzwerken
- Gute Näherung für viele praktische Fälle

**Voraussetzung:** Magnetischer Fluss „fließt“ hauptsächlich durch ferromagnetisches Material

![bg right:35% 100%](https://upload.wikimedia.org/wikipedia/commons/d/d0/Electromagnet_with_gap.svg)


### Grundidee

**Elektrischer Kreis:**
- Spannung treibt Strom durch Widerstand
- Strom „fließt“ durch Leiter
- $U = R \cdot I$ (Ohmsches Gesetz)

**Magnetischer Kreis:**
- Durchflutung treibt magnetischen Fluss durch magnetischen Widerstand
- Magnetischer Fluss „fließt“ durch ferromagnetisches Material
- $\Theta = R_m \cdot \Phi$ (analoges „Ohmsches Gesetz“)

**Wichtig:** Diese Analogie ist *mathematisch*, nicht physikalisch!
- Kein echter „Fluss“ von etwas
- Aber sehr nützlich für Berechnungen

### Das Durchflutungsgesetz: Unser Ausgangspunkt

**Erinnerung:** Durchflutungsgesetz (Ampèresches Gesetz) entlang eines geschlossenen Weges:

$$\Theta = N \cdot I = \oint \vec{H} \cdot d\vec{s}$$

- $\Theta$: magnetische **Durchflutung**
- $N \cdot I$: Windungszahl mal Strom in der Spule
- $\vec{H}$: magnetische Feldstärke

**Interpretation:** 
- Die Durchflutung $\Theta$ ist wie eine „treibende Kraft“ für das Magnetfeld
- Entspricht der Spannung im elektrischen Kreis: $U = \int \vec{E} \cdot d\vec{s}$ (wichtiger Unterschied: $\int \vec{H} \cdot d\vec{s}$ ist nicht wegunabhängig!)

### Vereinfachung für homogene Kreise

**Annahme:** Homogener magnetischer Kreis
- Konstante Querschnittsfläche $A$
- Ein Material mit konstanter Permeabilität $\mu_r$
- Magnetfeld folgt dem Materialweg

**Dann wird das Linienintegral einfach:**

$$\Theta = \oint \vec{H} \cdot d\vec{s} = H \cdot \ell$$

- $H$: konstante magnetische Feldstärke im Material
- $\ell$: mittlere Weglänge des magnetischen Pfades

**Nächster Schritt:** Was hat das mit dem magnetischen Fluss zu tun?

### Der magnetische Fluss $\Phi$

**Definition:** Integral der magnetischen Flussdichte über eine Fläche

$$\Phi = \int_A \vec{B} \cdot d\vec{A}$$

**Für homogene Felder und Querschnitte:**

$$\Phi = B \cdot A$$

**Einheit:** Weber ($\text{Wb} = \text{Vs}$)

**Physikalische Bedeutung:**
- Maß für die Gesamtzahl der magnetischen Feldlinien durch eine Fläche


### Verbindung

**Materialgleichung:** Zusammenhang zwischen $B$ und $H$

$$B = \mu_0 \mu_r H$$

- $\mu_0 \approx 4\pi \times 10^{-7} \text{H/m}$
- $\mu_r$: relative Permeabilität (Eisen: $\mu_r \approx 1000$–$10000$)

**Einsetzen in den magnetischen Fluss:**

$$\Phi = B \cdot A = \mu_0 \mu_r H \cdot A$$

**Umstellen nach $H$:**

$$H = \frac{\Phi}{\mu_0 \mu_r A}$$

### Herleitung des magnetischen Widerstands

Kombinieren wir unsere Gleichungen:

$$\Theta = H \cdot \ell = \frac{\Phi}{\mu_0 \mu_r A} \cdot \ell = \frac{\ell}{\mu_0 \mu_r A} \cdot \Phi$$

Umschreiben in der Form $\Theta = R_m \cdot \Phi$:

$$\boxed{\Theta = R_m \cdot \Phi}$$

mit dem **magnetischen Widerstand**:

$$\boxed{R_m = \frac{\ell}{\mu_0 \mu_r A}}$$

Das ist das **„Ohmsche Gesetz“ des magnetischen Kreises**!

### Der magnetische Widerstand: Interpretation

$$R_m = \frac{\ell}{\mu_0 \mu_r A}$$

**Einheit:** $[R_m] = \frac{\text{A}}{\text{Wb}}$ (Ampere pro Weber)

**Der magnetische Widerstand wird größer, wenn:**
- ✓ Der Weg $\ell$ länger wird (mehr „Strecke“ für den Fluss)
- ✓ Die Querschnittsfläche $A$ kleiner wird (weniger „Platz“)
- ✓ Die Permeabilität $\mu_r$ kleiner wird (Material „leitet“ schlechter)

**Analog zum elektrischen Widerstand:** $R = \frac{\ell}{\sigma A}$

### Magnetischer Leitwert (Permeanz)

**Alternative Beschreibung:** Analog zum elektrischen Leitwert $G = \frac{1}{R}$

$$\Lambda = \frac{1}{R_m} = \frac{\mu_0 \mu_r A}{\ell}$$

**Einheit:** $[\Lambda] = \frac{\text{Wb}}{\text{A}} = \text{H}$ (Henry)

**Alternative Formulierung des "Ohmschen Gesetzes":**

$$\Phi = \Lambda \cdot \Theta$$

**Interpretation:** 
- Der Leitwert gibt an, wie *leicht* magnetischer Fluss durch ein Material fließt
- Große Permeabilität $\mu_r$ → großer Leitwert → viel Fluss

### Zusammenfassung: Die Analogie

| Elektrischer Kreis | Magnetischer Kreis |
|---|---|
| Spannung $U=\int \vec{E} \cdot d\vec{s}$ | Durchflutung $\Theta = \oint \vec{H} \cdot d\vec{s}$ |
| Stromstärke $I=\int \vec{j} \cdot d\vec{A}$ | Magnetischer Fluss $\Phi = \int \vec{B} \cdot d\vec{A}$ |
| Widerstand $R = \frac{\ell}{\sigma A}$ | Mag. Widerstand $R_m = \frac{\ell}{\mu_0 \mu_r A}$ |
| Leitwert $G = \frac{1}{R}$ | Mag. Leitwert $\Lambda = \frac{1}{R_m}$ |
| $U = R \cdot I$ | $\Theta = R_m \cdot \Phi$ |

**Wichtig:** Rein mathematische Analogie, aber sehr nützlich für Berechnungen!

### Komplexere Kreise: Reihenschaltung

**Reale Situation:** Verschiedene Materialien im magnetischen Pfad
- Eisenkern verschiedener Querschnitte
- Luftspalte
- Verschiedene Materialien (Eisen, Ferrit, ...)

**Verhalten wie elektrische Widerstände in Reihe:**

$$R_{m,\text{ges}} = R_{m,1} + R_{m,2} + \ldots + R_{m,n}$$

**Durchflutungsgesetz:**

$$\Theta = \Phi \cdot R_{m,\text{ges}}$$

**Wichtig:** Der gleiche magnetische Fluss $\Phi$ durchfließt alle Abschnitte!
(Wie Strom in elektrischer Reihenschaltung)

### Praxisbeispiel: Elektromagnet mit Luftspalt

**Typische Anwendung:** Schaltschütz, Relais, Hubmagnet

**Aufbau:**
- Eisenkern mit Spule ($N$ Windungen, Strom $I$)
- Einstellbarer Luftspalt der Länge $\delta$
- Eisenweg: Länge $\ell_E$, Querschnitt $A$
- Luftspalt: Länge $\delta$, gleicher Querschnitt $A$

**Frage:** Wie groß ist der magnetische Fluss $\Phi$?

![bg right:40% 100%](https://upload.wikimedia.org/wikipedia/commons/d/d0/Electromagnet_with_gap.svg)

### Berechnung: Luftspalt und Eisenkern

**Eisenkern:**
$$R_{m,E} = \frac{\ell_E}{\mu_0 \mu_r A}$$

**Luftspalt:** ($\mu_r = 1$ für Luft)
$$R_{m,L} = \frac{\delta}{\mu_0 A}$$

**Gesamtwiderstand:**
$$R_{m,\text{ges}} = R_{m,E} + R_{m,L} = \frac{\ell_E}{\mu_0 \mu_r A} + \frac{\delta}{\mu_0 A}$$

**Magnetischer Fluss:**
$$\Phi = \frac{\Theta}{R_{m,\text{ges}}} = \frac{N \cdot I}{\frac{\ell_E}{\mu_0 \mu_r A} + \frac{\delta}{\mu_0 A}}$$

### Die überraschende Dominanz des Luftspalts

**Zahlenwerte (typisch):**
- Eisenweg: $\ell_E = 30$ cm, $\mu_r = 2000$
- Luftspalt: $\delta = 1$ mm

**Vergleich der Widerstände:**

$$\frac{R_{m,L}}{R_{m,E}} = \frac{\delta/(\mu_0 A)}{\ell_E/(\mu_0 \mu_r A)} = \frac{\delta \cdot \mu_r}{\ell_E} = \frac{0.001 \cdot 2000}{0.3} \approx 6.7$$

**Der Luftspalt ist 7× wichtiger, obwohl er 300× kürzer ist!**

**Grund:** Die sehr hohe Permeabilität von Eisen

### Praktische Näherung für kleine Luftspalte

Wenn $\mu_r \gg 1$ und $\delta \cdot \mu_r \gg \ell_E$, dann:

$$R_{m,L} \gg R_{m,E}$$

**Näherung:** Eisenwiderstand vernachlässigbar

$$\Phi \approx \frac{N \cdot I}{R_{m,L}} = \frac{N \cdot I \cdot \mu_0 \cdot A}{\delta}$$

Der Luftspalt bestimmt die magnetischen Eigenschaften!


## Elektromagnetische Induktion

- Bisher: el. Feld ruhender Ladungen (Elektrostatik) und mag. Feld konstanter Ströme (Magnetostatik)
- Sobald zeitliche Änderungen auftreten → Wechselwirkung zwischen elektrischen und magnetischen Feldern

**Induktion: ein zeitlich veränderliches Magnetfeld erzeugt („induziert“) ein elektrisches Feld**

### Induktion: technische Anwendungen

- Generatoren (Energieerzeugung)
- Transformatoren (Spannungswandlung)
- Elektromotoren (Antriebssysteme)
- Rekuperation bei Elektrofahrzeugen
- Induktive Ladesysteme (Smartphones, E-Autos)
- Sensoren (z.B. induktive Näherungsschalter)
- Induktionsherd
- Wirbelstrombremsen (Eisenbahn)
- ...


### Bewegung eines Leiterstücks im Magnetfeld
Lorentzkraft: $\vec{F}_m = q \cdot (\vec{v} \times \vec{B})$

Kraft durch elektrische Feldstärke: $\vec{F}_e = q \cdot \vec{E}$

Kräftegleichgewicht: $\vec{F}_e + \vec{F}_m = 0 \Longrightarrow \vec{E} = -\,\vec{v} \times \vec{B}$

Spannung an den Leiterenden: Mit $U = \vec{E} \cdot \vec{\ell}$ folgt:

$$U_\text{ind} = -\,(\vec{v} \times \vec{B}) \cdot \vec{\ell}$$

**Induzierte Spannung durch Bewegung im Magnetfeld**

![bg right:40% 100%](https://upload.wikimedia.org/wikipedia/commons/8/8f/Induction-by-motion-voltage.svg)

### Das Induktionsgesetz in allgemeiner Form

**Bewegtes Leiterstück:** $\vec{v}$, $\vec{B}$ und $\vec{\ell}$ jeweils senkrecht zueinander:

$$U_\text{ind} = -\left(\vec{v} \times \vec{B}\right) \cdot \vec{\ell} = -B \cdot \ell \cdot v = -B \cdot \ell \cdot \frac{ds}{dt} = -B \cdot \frac{dA}{dt}$$

**Allgemein gilt:**
$$U = -\frac{d\Phi}{dt}$$

### Zwei Möglichkeiten der Induktion

1. **Bewegungsinduktion:** Leiter und Magnetfeld bewegen sich relativ zueinander
2. **Ruheinduktion:** Magnetischer Fluss ändert sich bei ruhendem Leiter:

$$U = -\frac{d\Phi}{dt} = -\frac{d(A \cdot B)}{dt} = -\frac{dB}{dt} \cdot A - \frac{dA}{dt} \cdot B$$

Übergang auf N Windungen:
$$U = -N \cdot \frac{d\Phi}{dt} \tag{4.15}$$


### Induzierter Strom

Verbindet man die Enden des Leiterstücks über einen Widerstand $R$ (der sich nicht mitbewegt), so fließt ein **induzierter Strom**:

$$I = \frac{U}{R} = -\frac{1}{R} \cdot \frac{d\Phi}{dt}$$


![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/3/3d/Induction-by-motion-current.svg)

### Die Lenz’sche Regel

**Polarität der induzierten Spannung:**

Die induzierte Spannung ist stets so gerichtet, dass ein durch sie hervorgerufener Strom der Ursache ihrer Entstehung entgegenwirkt.


Für $\frac{d\Phi}{dt} > 0$ wirkt der induzierte Strom der Flussänderung entgegen

**Erklärung:** die Energie, die am Widerstand in Wärme umgesetzt wird, stammt aus der mechanischen Arbeit, die aufgewendet werden muss, um die Flussänderung zu erzeugen – die Lenz’sche Regel ist Ausdruck der **Energieerhaltung**.

![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/4/42/Induction-by-motion-lenzs-law.svg)

### Das induzierte elektrische Wirbelfeld

**Wichtige Erkenntnis:** Bei Induktion ist die Spannung $U_\text{ind}$ **keine Potentialdifferenz**!

**Grund:** 
- Das zeitlich veränderliche Magnetfeld erzeugt ein elektrisches **Wirbelfeld**
- Dieses Wirbelfeld ist **nicht konservativ** (im Gegensatz zum elektrostatischen Feld)
- Es existiert kein Potential $\varphi$ mit $U = \varphi_1 - \varphi_2$

**Die induzierte „Spannung“ ist vielmehr:**
$$U_\text{ind} = \oint \vec{E}_\text{ind} \cdot d\vec{s}$$

Ein Umlaufintegral entlang der Leiterschleife – das Integral über einen geschlossenen Weg ist **nicht Null**!

### Vergleich: Elektrostatik vs. Induktion

**Elektrostatik (statische Ladungen):**

Wirbelfreiheit des elektrischen Felds:
$$\oint \vec{E}_\text{stat} \cdot d\vec{s} = 0$$

Das elektrostatische Feld ist konservativ → es existiert ein Potential $\varphi$


**Elektromagnetische Induktion (zeitlich veränderliches Magnetfeld):**

Das induzierte elektrische Feld ist **nicht wirbelfrei**:
$$\oint \vec{E}_\text{ind} \cdot d\vec{s} = -\frac{d\Phi}{dt} = -\frac{d}{dt} \int \vec{B} \cdot d\vec{A}$$

Dies ist das **Faraday’sche Induktionsgesetz**

### Die fundamentalen Integralgleichungen der Elektrodynamik
| **Größe** | **Elektro-/Magnetostatik** | **Elektrodynamik** |
|-----------|-------------------|-------------------|
| **Elektrische Flussdichte $\vec{D}$** | $\oint_A \vec{D} \cdot d\vec{A} = Q$ | $\oint_A \vec{D} \cdot d\vec{A} = Q$ |
| | Gauß’sches Gesetz | Gauß’sches Gesetz |
| **Elektrische Feldstärke $\vec{E}$** | $\oint_s \vec{E} \cdot d\vec{s} = 0$ | $\oint_s \vec{E} \cdot d\vec{s} = -\frac{d\Phi}{dt}$ |
| | Wirbelfreiheit | **Induktionsgesetz** |
| **Magnetische Flussdichte $\vec{B}$** | $\oint_A \vec{B} \cdot d\vec{A} = 0$ | $\oint_A \vec{B} \cdot d\vec{A} = 0$ |
| | Keine magn. Monopole | Keine magn. Monopole |
| **Magnetische Feldstärke $\vec{H}$** | $\oint_s \vec{H} \cdot d\vec{s} = I$ | (noch nicht behandelt) |
| | Durchflutungsgesetz |  |

**Fazit:** Zeitlich veränderliche Felder koppeln elektrische und magnetische Phänomene!


### Beispiel: Bewegte Leiterschleife im Magnetfeld

**Situation:** Rechteckige Leiterschleife (Breite $b$, Höhe $h$) bewegt sich mit Geschwindigkeit $\vec{v}$ durch homogenes Magnetfeld $\vec{B}$

**Induktionsmechanismus:**
- Beim Eintreten: zunehmender magnetischer Fluss durch die Schleife
- Vollständig im Feld: konstanter Fluss → keine Induktion
- Beim Austreten: abnehmender Fluss durch die Schleife
