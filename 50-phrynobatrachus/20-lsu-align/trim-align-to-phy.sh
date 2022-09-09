#!/bin/sh

# Prefer unfasta
uf aligned.fna | sponge aligned.fna

# Trim after 444
uf -u aligned.fna | uf-cut 1/444 | uf-to-phy >trimmed.phy
