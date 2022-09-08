#!/bin/bash

export LC_ALL=C
set -euo pipefail
cd "$(dirname "$0")"

for ID in QDK21_DZ{028,029,043,046,052,085,097,111,120}; do
#    zcat ../10-reads-raw/${ID}-1_R1.fq.gz ../10-reads-raw/${ID}-2_R1.fq.gz >${ID}_R1.fq
    zcat ../10-reads-raw/${ID}-1_R2.fq.gz ../10-reads-raw/${ID}-2_R2.fq.gz >${ID}_R2.fq
done

