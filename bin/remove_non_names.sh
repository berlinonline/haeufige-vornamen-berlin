#!/bin/bash

# https://stackoverflow.com/a/17841619/9539770
function join_by { local IFS="$1"; shift; echo "$*"; }

CSV_FOLDER=$1

# strings that show up as names, but do not appear to be given names for various reasons
non_names=("al" "bestimmt" "bin" "da" "de" "dela" "do" "el" "kein" "keinen" "la" "nicht" "noch" "noche" "oğlu" "Vorname" "Familienname" "\(Vorname[^;]*" "und" "ohne" "von" "van" "zur" "der" "del" "wegen" "Vornamen!" "(Eigenname)" "(Großvatersname)" "(Mittelname)" "(Vatersname)" "-" "'evič")
# What about variants like gyzy, gizi, qizi, kyzy? What is that?


non_name_list=$(join_by '|' "${non_names[@]}")
for i in ${CSV_FOLDER}/*.csv;
    # filter out lines that start with one of the non_names
    do egrep -v "^(${non_name_list})*," $i > $i.new ;
    mv $i.new $i
done
