#!/bin/sh

for f in LSU/*.fna; do 
    g=$(basename $f .fna)
    a=$(fgrep $g accessions.tsv | sed -Ee 's/\t/_/')
    [ -n "$a" ] || a="${g}_undefined"
    uf $f | sed -Ee 's/>.*/>'$a'/'
done >ref-lsu-all.fna

