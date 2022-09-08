#!/bin/bash

export LC_ALL
set -euo pipefail

for F in ALL_*_052/*.fsa; do
    N="$(dirname "$F" | sed -Ee 's/ALL_//;s/_052/-M52/').fna"
    I="$(echo "$N" | sed -Ee 's/\.fna//')"
    uf "$F" | sed -Ee '1s/>.*/>'$I'/' >"$N"
done
