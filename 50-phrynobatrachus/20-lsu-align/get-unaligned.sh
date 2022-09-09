#!/bin/bash

export LC_ALL="C"
set -euo pipefail

uf ../00-reference/ref-lsu-all.fna ../04-lsu/samples-lsu.fna >unaligned.fna

