#!/bin/bash
set -eu -o pipefail
# Retrieve input data using basemount

#sudo bash -c "$(curl -L https://basemount.basespace.illumina.com/install)"
#mkdir basespace
#basemount basespace/

mkdir -p pisces
mkdir -p pisces/regions_raw
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/BedFiles/Files/Intervals_TSAVP_Titr.bed pisces/regions_raw
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/BedFiles/Files/KRASandNRASinterval2.bed pisces/regions_raw
mkdir -p pisces/truth_raw
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/Truth_Titration/Files/*.vcf pisces/truth_raw
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/Truth_RAS/Files/*.vcf pisces/truth_raw
mkdir -p pisces/inputs
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/SampleSet2_RASPanel/Files/*_S1.bam* pisces/inputs
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/SampleSet1_Titration/Files/8pct-*_S2*.bam* pisces/inputs
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/SampleSet1_Titration/Files/16pct-*_S1*.bam* pisces/inputs
rsync -av basespace/Projects/Pisces_Supplementary_Data_v1.0.1/AppResults/SampleSet1_Titration/Files/12pct-*_S2*.bam* pisces/inputs

mkdir -p pisces/truth
mkdir -p pisces/regions
bcbio_python clean_truth_sets.py
bcbio_python prepare_bcbio_inputs.py
