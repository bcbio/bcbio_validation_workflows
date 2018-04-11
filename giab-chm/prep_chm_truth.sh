#!/bin/bash
# Simplified truth set preparation from rtg ready v0.4+ versions of
# the CHM truth set
set -eu -o pipefail

bcftools view -f 'PASS,.' -T CHM-eval.kit/full.38.bed.gz -O z -o biodata/chm/chm-hg38.vcf.gz CHM-eval.kit/full.38.vcf.gz
tabix -f -p vcf biodata/chm/chm-hg38.vcf.gz

cp CHM-eval.kit/full.38.bed.gz biodata/chm/chm-hg38-regions.bed.gz
cp CHM-eval.kit/full.38.bed.gz.tbi biodata/chm/chm-hg38-regions.bed.gz.tbi
