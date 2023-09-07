#!/bin/bash

# Get top 10 "first" names for each district in a given year.

DATAROOT=$1
YEAR=$2

SOURCEDIR=$DATAROOT/cleaned/$YEAR
TEMPDIR=$DATAROOT/temp/$YEAR
rm -rf $TEMPDIR
mkdir -p $TEMPDIR

for sourcefile in $SOURCEDIR/*.csv; do
    targetfile=$TEMPDIR/top-$(basename $sourcefile)
    echo "$sourcefile -> $targetfile"
    grep "1$" $sourcefile | head > $targetfile
done