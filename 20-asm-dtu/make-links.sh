#!/bin/bash

LC_ALL=C
set -euo pipefail
cd "$(dirname "$0")"

IN_DIR="/hpc/data/genomics/projects/frogs/DTU/assembly/Unicycler"

rm -f *.fna

ln -sfT "$IN_DIR/DTU_2021_1009910_1_mtDNA_DZ28_R1_001/assembly.fasta"	DZ028-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009910_2_mtDNA_DZ28_R1_001/assembly.fasta"	DZ028-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009911_1_mtDNA_DZ29_R1_001/assembly.fasta"	DZ029-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009911_2_mtDNA_DZ29_R1_001/assembly.fasta"	DZ029-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009912_1_mtDNA_DZ43_R1_001/assembly.fasta"	DZ043-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009912_2_mtDNA_DZ43_R1_001/assembly.fasta"	DZ043-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009913_1_mtDNA_DZ46_R1_001/assembly.fasta"	DZ046-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009913_2_mtDNA_DZ46_R1_001/assembly.fasta"	DZ046-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009914_1_mtDNA_DZ52_R1_001/assembly.fasta"	DZ052-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009914_2_mtDNA_DZ52_R1_001/assembly.fasta"	DZ052-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009915_1_mtDNA_DZ85_R1_001/assembly.fasta"	DZ085-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009915_2_mtDNA_DZ85_R1_001/assembly.fasta"	DZ085-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009916_1_mtDNA_DZ97_R1_001/assembly.fasta"	DZ097-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009916_2_mtDNA_DZ97_R1_001/assembly.fasta"	DZ097-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009917_1_mtDNA_DZ111_R1_001/assembly.fasta"	DZ111-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009917_2_mtDNA_DZ111_R1_001/assembly.fasta"	DZ111-2.fna
ln -sfT "$IN_DIR/DTU_2021_1009918_1_mtDNA_DZ120_R1_001/assembly.fasta"	DZ120-1.fna
ln -sfT "$IN_DIR/DTU_2021_1009918_2_mtDNA_DZ120_R1_001/assembly.fasta"	DZ120-2.fna

