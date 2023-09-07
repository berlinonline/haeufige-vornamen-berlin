# Various Snippets for Analyzing the Data

- All one-letter names:

```
cat data/cleaned/*/*.csv | csvgrep -c vorname -r "^.$"
```


- All one-letter names which are not used at first position: 

```
cat data/cleaned/2017/*.csv data/cleaned/2018/*.csv data/cleaned/2019/*.csv data/cleaned/2020/*.csv data/cleaned/2021/*.csv data/cleaned/2022/*.csv | csvstack | csvgrep -c position -r="[^1]" | csvsort | csvgrep -c vorname -r "^.$"
```
