#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
# regions
mkdir -p biodata/regions
cd biodata/regions
synapse get -r syn10468188
cd $ORIG_DIR
# hg38
mkdir -p biodata/collections/hg38
cd biodata/collections/hg38
synapse get -r syn10468301
cd $ORIG_DIR
# giab samples
mkdir -p biodata/giab/exome
cd biodata/giab/exome
synapse get -r syn15666200
cd $ORIG_DIR
# cleanup synapse files
cd biodata
find . -name "SYNAPSE_METADATA_MANIFEST.tsv" -exec rm -f {} \;
cd $ORIG_DIR
