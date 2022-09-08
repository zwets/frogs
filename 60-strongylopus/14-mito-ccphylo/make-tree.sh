#!/bin/sh

cat ../12-mito-fasttree/rawdist.mat | tr ' ' '\t' | ccphylo tree >rawdist.tree
