#!/bin/bash
set -eu -o pipefail

# BED files

wget 'http://sfvideo.blob.core.windows.net/sitefinity/docs/default-source/supplementary-product-info/xgen-exome-research-panel-targetsae255a1532796e2eaa53ff00001c1b3c.bed?sfvrsn=435c3407_7&download=true'
wget ftp://ftp-trace.ncbi.nlm.nih.gov/giab/ftp/data/AshkenazimTrio/analysis/OsloUniversityHospital_Exome_GATK_jointVC_11242015/wex_Agilent_SureSelect_v05_b37.baits.slop50.merged.list

wget -c http://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

grep -v ^@ wex_Agilent_SureSelect_v05_b37.baits.slop50.merged.list | sed "s/^\([0-9]\+\)\t/chr\1\t/g" |
 sed "s/^MT/chrM/g" | sed "s/^X/chrX/g" | sed "s/^Y/chrY/g" | CrossMap.py bed hg19ToHg38.over.chain.gz /dev/stdin Exome-Agilent-raw.bed
gsort Exome-Agilent-raw.bed /mnt/work/bcbio/genomes/Hsapiens/hg38/seq/hg38.fa.fai | grep -v '_alt' > Exome-Agilent-SureSelect-v05-hg38.bed
CrossMap.py bed hg19ToHg38.over.chain.gz xgen-exome-research-panel-targets*bed* Exome-IDT-raw.bed
gsort Exome-IDT-raw.bed /mnt/work/bcbio/genomes/Hsapiens/hg38/seq/hg38.fa.fai | grep -v '_alt' > Exome-IDT-xGen-hg38.bed

# Fasta files

cp bs/Projects/NovaSeq\ S2\:\ TruSeq\ DNA\ Enrichment\ \(IDT\ xGen\ Exome\ Research\ Panel\)/Samples/NA12878-Rep*2x101/Files/*-Rep01-*.fastq.gz* .
cp bs/Projects/NovaSeq\ S2\:\ TruSeq\ DNA\ Enrichment\ \(IDT\ xGen\ Exome\ Research\ Panel\)/Samples/NA12878-Rep*2x101/Files/*-Rep02-*.fastq.gz* .

aws s3 sync s3://giab/data/AshkenazimTrio/HG002_NA24385_son/OsloUniversityHospital_Exome/151002_7001448_0359_AC7F6GANXX_Sample_HG002-EEogPU_v02-KIT-Av5_AGATGTAC_L008.posiSrt.markDup.bam .
aws s3 cp s3://giab/data/AshkenazimTrio/HG002_NA24385_son/OsloUniversityHospital_Exome/151002_7001448_0359_AC7F6GANXX_Sample_HG002-EEogPU_v02-KIT-Av5_AGATGTAC_L008.posiSrt.markDup.bai .

aws s3 cp s3://giab/data/ChineseTrio/HG005_NA24631_son/OsloUniversityHospital_Exome/151002_7001448_0359_AC7F6GANXX_Sample_HG005-EEogPU_v02-KIT-Av5_CGCATACA_L008.posiSrt.markDup.bam .
aws s3 cp s3://giab/data/ChineseTrio/HG005_NA24631_son/OsloUniversityHospital_Exome/151002_7001448_0359_AC7F6GANXX_Sample_HG005-EEogPU_v02-KIT-Av5_CGCATACA_L008.posiSrt.markDup.bai .

zcat NA12878-Rep*_R1_*.fastq.gz | bgzip -c > NA12878-xGen-exome_R1.fq.gz
zcat NA12878-Rep*_R2_*.fastq.gz | bgzip -c > NA12878-xGen-exome_R2.fq.gz
bamtofastq filename=151002_7001448_0359_AC7F6GANXX_Sample_HG002-EEogPU_v02-KIT-Av5_AGATGTAC_L008.posiSrt.markDup.bam F=>(bgzip -c > NA24385-Oslo-exome_R1.fq.gz) F2=>(bgzip -c > NA24385-Oslo-exome_R2.fq.gz)
bamtofastq filename=151002_7001448_0359_AC7F6GANXX_Sample_HG005-EEogPU_v02-KIT-Av5_CGCATACA_L008.posiSrt.markDup.bam F=>(bgzip -c > NA24631-Oslo-exome_R1.fq.gz) F2=>(bgzip -c > NA24631-Oslo-exome_R2.fq.gz)
