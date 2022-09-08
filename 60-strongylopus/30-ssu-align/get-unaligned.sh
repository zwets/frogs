#!/bin/bash

export LC_ALL="C"
set -euo pipefail

uf ../00-reference/ref-ssu-all.fna ../05-ssu/samples-ssu.fna >unaligned.fna

