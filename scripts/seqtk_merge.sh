#!/bin/bash
# usage: bash seqtk_merge.sh <sample1> <sample2> <output name>

set -u
set -e

HOME=/home/CIBIV/arun/
SW=${HOME}/software

sample1="${1}"
sample2="${2}"
out="${3}"
${SW}/seqtk/seqtk mergefa -hq20 data/${sample1}.fq.gz data/${sample2}.fq.gz \
      | ${SW}/psmc/utils/fq2psmcfa -q30 - > data/${out}.psmcfa

