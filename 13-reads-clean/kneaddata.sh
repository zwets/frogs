#!/bin/bash
#
# Invoke with INDIR OUTDIR ID

export LC_ALL=C
set -euo pipefail

(( $# == 3 )) || { echo "$(basename "$0"): arguments are IN_DIR OUT_DIR ID"; exit 1; }

IN_DIR="$1"
OUT_DIR="$2"
ID="$3"

# Create the output directory if not exist
mkdir -p "$OUT_DIR"

# Run kneaddata on PE
kneaddata -i1 ${IN_DIR}/${ID}_R1.fq -i2 ${IN_DIR}/${ID}_R2.fq -o ./paired -db /data/genomics/screen-dbs/univec --bypass-trf --bypass-trim -p 4 -t 4

# Run kneaddata on SE
kneaddata -un ${IN_DIR}/${ID}_UN.fq -o ./single -db /data/genomics/screen-dbs/univec --bypass-trf --bypass-trim -p 4 -t 4

# Unfuck kneaddata header mangling while copying to OUT_DIR
# - it turns this: @NB502092:190:HTLGMAFX2:1:11101:18093:1057 1:N:0:GTAGAGGA+NAAGGCTC
# - into this:     @NB502092:190:HTLGMAFX2:1:11101:18093:1057:N:0:GTAGAGGA+NAAGGCTC#0/1
sed -Ee 's,(@.*):(N:.:.*)#.*/([12])$,\1 \3:\2,' paired/${ID}_R1_kneaddata_paired_1.fastq >${OUT_DIR}/${ID}_R1.fq
sed -Ee 's,(@.*):(N:.:.*)#.*/([12])$,\1 \3:\2,' paired/${ID}_R1_kneaddata_paired_2.fastq >${OUT_DIR}/${ID}_R2.fq
sed -Ee 's,(@.*):(N:.:.*)#.*/([12])$,\1 \3:\2,' single/${ID}_UN_kneaddata.fastq >${OUT_DIR}/${ID}_UN.fq

