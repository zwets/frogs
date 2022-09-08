#!/bin/sh

# Prefer unfasta
uf aligned.fna | sponge aligned.fna

# Make .phy
uf-to-phy aligned.fna >aligned.phy
