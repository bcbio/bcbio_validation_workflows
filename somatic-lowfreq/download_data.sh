#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
# pisces
mkdir -p biodata/pisces
cd biodata/pisces
synapse get -r syn12255556
cd $ORIG_DIR
mkdir -p biodata/smcounter2
cd biodata/smcounter2
synapse get -r syn12333650
# GRCh37
mkdir -p biodata/collections/GRCh37
cd biodata/collections/GRCh37
synapse get -r syn12027897
cd $ORIG_DIR
# cleanup synapse files
cd biodata
find . -name "SYNAPSE_METADATA_MANIFEST.tsv" -exec rm -f {} \;
cd $ORIG_DIR

