#!/bin/bash

export LC_ALL
set -euo pipefail

for F in ALL_*_{029,111,052}/*.fsa; do
    L=$(uf "$F" | uf-bare | wc -c)
    (( L > 15000 )) || continue
    N="$(dirname "$F" | sed -Ee 's/ALL_//;s/_029/-MT-KA/;s/_111/-MT-KB/;s/_052/-M52/').fna"
    I="$(echo "$N" | sed -Ee 's/\.fna//')"
    uf "$F" | sed -Ee '1s/>.*/>'$I'/' >"$N"
done
