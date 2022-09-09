#!/bin/sh

cp ../20-lsu-align/trimmed.phy .
phyml --no_memory_check -i trimmed.phy -m GTR -b 1000
mv trimmed.phy_phyml_tree.txt phyml.tree
