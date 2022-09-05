#!/bin/bash

export LC_ALL
set -euo pipefail

for F in MAP_*_{029,111}/*.fsa; do
    L=$(uf "$F" | uf-bare | wc -c)
    (( L > 15000 )) || continue
    N="$(dirname "$F" | sed -Ee 's/MAP_//;s/_029/-MT-KA/;s/_111/-MT-KB/').fna"
    I="$(echo "$N" | sed -Ee 's/-K.\.fna//')"
    uf "$F" | sed -Ee '1s/>.*/>'$I'/' >"$N"
done
