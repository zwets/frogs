#!/bin/bash

export LC_ALL=C
set -euo pipefail
cd "$(dirname "$0")"

fetch_fna() { [ -f "$1" ] || esearch -db nuccore -query "$2" | efetch -format fasta | uf >"$1"; }
fetch_gb() { [ -f "$1" ] || esearch -db nuccore -query "$2" | efetch -format gb >"$1"; }

fetch_fna "ranoidea-mito-refseq.fna"  'refseq[filter] AND mitochondrion[filter] AND "Ranoidea"[Organism]'
fetch_gb  "ranoidea-mito-refseq.gb"   'refseq[filter] AND mitochondrion[filter] AND "Ranoidea"[Organism]'

# Disabled: set length constraint
#fetch_fna "ranoidea-mito-genbank.fna" 'genbank[filter] AND mitochondrion[filter] AND "Ranoidea"[Organism]'

fetch_fna "strongy-mito-genbank.fna"  'genbank[filter] AND mitochondrion[filter] AND "Strongylopus"[Organism]'
fetch_fna "phryno-mito-genbank.fna"   'genbank[filter] AND mitochondrion[filter] AND "Phrynobatrachus"[Organism]'

fetch_fna "phryno-rag1.fna"           'GU457750.1[Accession]'
