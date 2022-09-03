#!/bin/bash

LC_ALL=C
set -euo pipefail
cd "$(dirname "$0")"

IN_DIR='/hpc/data/genomics/kcri/reads/trimmed/QDK21'

rm -f *.fq.gz

for F in $IN_DIR/*.fq.gz; do
    [ -f "$F" ] || continue
    ln -sft . "$F"
done
