#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
# GRCh37
mkdir -p biodata/collections/GRCh37
cd biodata/collections/GRCh37
synapse get -r syn12027897
cd $ORIG_DIR
# HCC2218 samples
mkdir -p biodata/HCC2218
cd biodata/HCC2218
synapse get -r syn12977324
cd $ORIG_DIR
# cleanup synapse files
cd biodata
find . -name "SYNAPSE_METADATA_MANIFEST.tsv" -exec rm -f {} \;
cd $ORIG_DIR
