#!/bin/sh

for f in ../23-assembly/*.fasta; do
    uf $f | uf-select -n 1 >"$(basename "$f" .fasta)-MT-A.fna"
done

# Correct QDK21_DZ097-2-MT-A.fna, it is the second here
uf ../23-assembly/QDK21_DZ097-2.fasta | uf-select -n 2 >QDK21_DZ097-2-MT-A.fna
