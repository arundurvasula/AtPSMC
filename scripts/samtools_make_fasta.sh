#!/bin/bash
# usage: bash samtools_make_fasta.sh <sample.bam> <output name>

set -u
set -e

HOME=/home/CIBIV/arun/
SW=${HOME}/software

REF=/home/CIBIV/andreaf/reference/atAndSlociColl02.fa
SAMPLE="${1}"
OUT="${2}"
samtools mpileup -C50 -uf ${REF} ${SAMPLE} | bcftools call -c - | vcfutils.pl vcf2fq -d 10 -D 100 | gzip > ${HOME}/psmc/data/${OUT}.fq.gz