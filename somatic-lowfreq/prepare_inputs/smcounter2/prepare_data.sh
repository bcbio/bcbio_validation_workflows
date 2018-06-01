#!/bin/bash
set -eu -o pipefail

REF=/mnt/work/bcbio/genomes/Hsapiens/GRCh37/seq/GRCh37.fa.fai

# Region BEDs
wget -O -  https://storage.googleapis.com/smcounterv2-paper/N0261/CDHS-13907Z-562.roi.bed | grep -v ^track | sed "s/^chr//g" | gsort /dev/stdin $REF > N0261.bed
wget -O - https://storage.googleapis.com/smcounterv2-paper/N13532/CDHS-13532Z-10181.roi.bed | grep -v ^track | sed "s/^chr//g" | gsort /dev/stdin $REF > N13532.bed
wget -O - https://storage.googleapis.com/smcounterv2-paper/M0253/DHS-101Z.roi.bed | grep -v ^track | sed "s/^chr//g" | gsort /dev/stdin $REF > M0253.bed

# Truth sets, converted to VCF
wget -c https://www.biorxiv.org/highwire/filestream/86698/field_highwire_adjunct_files/1/281659-2.xlsx

I=1
for SAMPLE in N13532 N0261 M0253
do
	xlsx2csv -d tab -s $I 281659-2.xlsx | python convert_truth_vcf.py $SAMPLE | gsort /dev/stdin $REF | bgzip -c > smcounter2-$SAMPLE-truth.vcf.gz
	tabix -p vcf smcounter2-$SAMPLE-truth.vcf.gz
	let I=${I}+1
done

# Prepare fastq input files
wget -c https://www.biorxiv.org/highwire/filestream/86698/field_highwire_adjunct_files/0/281659-1.xlsx


for SAMPLE in N13532 N0261 M0253
do
	wget -c https://storage.googleapis.com/smcounterv2-paper/$SAMPLE/$SAMPLE.bam
	bamtofastq filename=$SAMPLE.bam tags=mi collate=1 S=/dev/null O=/dev/null O2=/dev/null F=>(python fix_bam_umis.py | bgzip -c > smcounter2-${SAMPLE}_R1.fq.gz) F2=>(python fix_bam_umis.py |  bgzip -c > smcounter2-${SAMPLE}_R2.fq.gz)
done
