#!/bin/sh

uf-headers ../../01-reference/phryno-mito-genbank.fna | sed -Ee 's/>//;s/(cf|aff)\. /\1_/;s/sp\./sp/;s/\.[0-9] Phrynobatrachus /\t/;s/ .*//' | awk -F '\t' 'NF==1 { $2 = "notfound" } {print}' >accessions.tsv

