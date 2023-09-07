#!/bin/bash

CSV_FOLDER=$1
for i in ${CSV_FOLDER}/*.csv;
    # filter out lines that start with one of the non_names
    do python bin/remove_non_names.py --non_names conf/non_names.txt --source $i > $i.new ;
    mv $i.new $i
done
