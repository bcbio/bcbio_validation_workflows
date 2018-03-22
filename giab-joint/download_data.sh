#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
# regions
mkdir -p biodata
cd biodata
synapse get -r syn10468189
cd $ORIG_DIR
# hg38
mkdir -p biodata/collections
cd biodata/collections
synapse get -r syn10468301
cd $ORIG_DIR
# giab samples
mkdir -p biodata/giab
cd biodata/giab
synapse get -r syn11831606
synapse get -r syn11831515
synapse get -r syn11831625
cd $ORIG_DIR
