#!/bin/bash
# usage: bash psmc.sh <sample> 

set -u
set -e

HOME=/home/CIBIV/arun/
SW=${HOME}/software

sample="${1}"

${SW}/psmc/psmc -N30 -t15 -r5 -p "32*2" -o results/${sample}.psmc data/${sample}.psmcfa



