# Listen der häufigen Vornamen in Berlin

Seit 2013 werden auf dem Berliner Datenportal [daten.berlin.de](https://daten.berlin.de) immer zu Anfang des neuen Jahres die Listen der Vornamen aller neugeborenen und bei den Standesämtern angemeldeten Kinder veröffentlicht. Dabei sammelt das [Landesamt für Bürger- und Ordnungsangelegenheiten](http://www.berlin.de/labo/) die Listen von den Standesämtern der einzelnen Berliner Bezirke und veröffentlicht sie dann.

In einem Zwischenschritt werden die Listen noch vom Open Data Team von [BerlinOnline](https://www.berlinonline.net) bereinigt und in Benennung und Struktur konsistent gemacht (s.u.).

In diesem Repository befinden sich beide Versionen der Daten:

- die original Daten, wie wir sie vom LABO erhalten: [data/source](data/source)
- die von uns bereinigten Daten, wie sie dann im Datenportal veröffentlicht werden: [data/cleaned](data/cleaned)

## Struktur der Daten

Für jedes Jahr existiert ein Ordner, in dem jeweils für jeden Bezirk eine CSV-Datei mit den Namenshäufigkeiten liegt (mit `,` als Trennzeichen).
Diese CSV-Dateien enthalten die kompletten Listen aller vergebenen Namen.

In manchen Jahren gibt es zusätzlich zu den Bezirken noch Daten zum [Standesamt I](https://www.berlin.de/labo/buergerdienste/standesamt-i-in-berlin/) – dabei handelt es sich um ein besonderes Standesamt, das keinem Bezirk zugeordnet ist.
Das Standesamt I hat verschiedene Aufgaben, von denen hier besonders die _„Beurkundung von Geburten Deutscher im Ausland, die niemals einen Inlandswohnsitz hatten“_ von Bedeutung ist.


Seit 2015 gibt es zusätzlich noch für jeden Bezirk eine PDF-Datei mit den am häufigsten vergebenen Namen.

Für die Jahre 2012-2016 ist die Spaltenstruktur der CSV-Dateien wie folgt:

```csv
vorname,anzahl,geschlecht
Marie,115,w
Sophie,109,w
Charlotte,79,w
Maria,77,w
Alexander,62,m
Emilia,60,w
Maximilian,59,m
...
```

`vorname` gibt den Namen an, `anzahl` die Gesamtzahl der Kinder, die mit diesem Namen angemeldet wurden und `geschlecht` das Geschlecht des Kindes. Dabei ist zu beachten, dass es bei `anzahl` keine Rolle spielt, ob das Kind den Namen als ersten, zweiten oder dritten Namen bekommen hat!

Ab 2017 existiert eine weitere Spalte `position`:

```csv
vorname,anzahl,geschlecht,position
Marie,72,w,2
Sophie,70,w,2
Maria,50,w,2
Alexander,43,m,2
Noah,43,m,1
Emilia,42,w,1
Charlotte,36,w,2
...
Marie,22,w,1
...
Marie,9,w,3
...
```

Für den Fall, dass ein Kind mehrere Vornamen bekommen hat, bezeichnet `position` hier die Stelle des Namens in der Liste der Namen. `position` macht allerdings keine Aussage über den Rufnamen!

Durch die zusätzliche Spalte ändert sich natürlich die Häufigkeit der Namen: wo es im Beispiel oben drei Einträge für den Mädchennamen "Marie" gibt (22 an erster, 72 an zweiter und 9 an dritte Stelle), hätte es ohne Positionsangabe nur einen Eintrag gegeben (22+72+9=113). Bei Vergleichen zwischen den Jahren 2012-2016 mit Jahren ab 2017 muss dies natürlich berücksichtigt werden.

## Datenbereinigung

In den folgenden Abschnitten werden die Schritte dokumentiert, die bei der Datenbereinigung durchgeführt werden. Das [Makefile](Makefile) ist der Ausgangspunkt für die formale Umsetzung dieser Schritte.

### Vereinheitlichung der Dateinamen

Statt unterschiedlicher Varianten in der Benennung der Dateien werden alle Dateien einheitlich nur noch aus dem Namen des Bezirks gebildet, in Kleinschreibung und mit Bindestrich statt Leerzeichen.

Also statt:

```
2016/
    Spandau_Vornamen.csv
    Vornamen_Mitte.csv
2017/
    Neukölln Vornamen 2017.csv
2018/
    Lichtenberg Vornamen 2018.csv
    Treptow-Köpenick Vornamen 2018.pdf
```

... lauten die Dateinamen in der bereinigten Form:

```
2016/
    mitte.csv
    spandau.csv
2017/
    neukoelln.csv
2018/
    lichtenberg.csv
    treptow-koepenick.pdf
```

### CSV Spaltentrennzeichen

Statt `;` als Spaltentrennzeichen (wie in den Quelldaten) nutzen wir das international gebräuchlichere `,`. Dies macht es einfacher, die Daten mit Tools wie [csvkit](https://csvkit.readthedocs.io) oder auch dem github-CSV-Viewer zu bearbeiten.

### Vereinheitlichung der Spaltenstruktur

In den ersten Jahren war die Spaltenstruktur der originalen CSV-Dateien `vorname,anzahl,geschlecht`. Ab 2015 änderte sich die Reihenfolge zu `anzahl,vorname,geschlecht`. Um die weitere Verarbeitung der Daten zu erleichtern, wurde die Struktur für die Daten ab 2015 vor der Veröffentlichung wieder in die alte Reihenfolge gebracht.

Dies geschieht durch die Skripte [convert2015.sh](bin/convert2015.sh) (drei Spalten) und [convert2017.sh](bin/convert2017.sh) (vier Spalten).

Hierbei wird das Kommandozeilenwerkzeug [csvkit](https://csvkit.readthedocs.io) genutzt.

### Entfernung von Einträgen, die keine Namen sind

In den Namenslisten tauchen zahlreiche Einträge auf, die offenbar keine Namen sind. Hier ist anzunehmen, dass beim Anmeldevorgang Anmerkungen in dafür nicht vorgesehenen Feldern gemacht wurden, und diese am Ende als Namen in den Listen auftauchen (der genaue Grund ist uns aber unbekannt). Beispiele sind:

```
bestimmt
kein
keinen
noch
nicht
Vorname
(Vornamen)
...
```

Entsprechende Einträge werden bei der Bereinigung der Daten entfernt.

Ebenso tauchen in den Listen Namenspartikel auf, die offensichtlich keine Vornamen sind, so z.B.

```
al
bin
da
de
do
dela
oğlu
von
zu
...
```

Auch diese Einträge werden aus den Listen entfernt.

Die genaue Liste kann in dem Skript [remove_non_names.sh](bin/remove_non_names.sh) nachgesehen werden. Diese Liste wurde von uns nach bestem Wissen und Gewissen erstellt - wenn sie Fehler enthält (Namen fälschlicherweise entfernt, andere "Namen" noch nicht entfernt), freuen wir uns über [Feedback](https://github.com/berlinonline/haeufige-vornamen-berlin/issues)!

### Entfernung von leeren Namen

Auch leere Strings sind nicht als Namen zugelassen und werden entfernt, z.B.

```
;1;w;2
```

## Veröffentlichung im Datenportal

Für jedes Jahr wird ein separater Datensatz auf daten.berlin.de veröffentlicht, der die bereinigten CSV- (und ggfs. PDF-) Dateien als Datenressourcen enthält.

Z.Zt. existieren folgende Datensätze:

- [Liste der häufigen Vornamen 2012](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2012)
- [Liste der häufigen Vornamen 2013](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2013)
- [Liste der häufigen Vornamen 2014](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2014)
- [Liste der häufigen Vornamen 2015](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2015)
- [Liste der häufigen Vornamen 2016](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2016)
- [Liste der häufigen Vornamen 2017](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2017)
- [Liste der häufigen Vornamen 2018](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2018)
- [Liste der häufigen Vornamen 2019](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2019)
- [Liste der häufigen Vornamen 2020](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2020)
- [Liste der häufigen Vornamen 2021](https://daten.berlin.de/datensaetze/liste-der-häufigen-vornamen-2021)

## Lizenz

### Daten

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/de/"><img alt="Creative Commons Lizenzvertrag" style="border-width:0" src="https://i.creativecommons.org/l/by/3.0/de/88x31.png" /></a><br/>
Alle im Repository enthaltenen Datensätze sind lizenziert unter [CC BY 3.0 DE](https://creativecommons.org/licenses/by/3.0/de/) (Creative Commons Namensnennung 3.0 Deutschland Lizenz). 

Für die original Daten unter [data/source](data/source) ist als Urheber _"Berliner Landesamt für Bürger- und Ordnungsangelegenheiten (LABO)"_ anzugeben.

Für die bereinigten Daten unter [data/cleaned](data/cleaned) ist als Urheber _"Berliner Landesamt für Bürger- und Ordnungsangelegenheiten (LABO) / BerlinOnline Stadtportal GmbH & Co. KG"_ anzugeben.

In beiden Fällen muss die URL des Repositories in der Quellenangabe angegeben werden: https://github.com/berlinonline/haeufige-vornamen-berlin

### Software / Quellcode

Aller im Repository enthaltener Quellcode ist unter der [MIT Lizenz](LICENSE) veröffentlicht.

Last changed: 2022-04-27