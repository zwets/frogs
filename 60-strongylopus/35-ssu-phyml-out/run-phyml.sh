#!/bin/sh

# Manually added the outgroup in (gene-cutted from DZ085 Amietia nutti)

phyml --no_memory_check -i trimmed.phy -m GTR -b 1000
mv trimmed.phy_phyml_tree.txt phyml.tree
