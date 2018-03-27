#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
# regions
mkdir -p biodata/regions
cd biodata/regions
synapse get -r syn10468188
cd $ORIG_DIR
# GRCh37
mkdir -p biodata/collections/GRCh37
cd biodata/collections/GRCh37
synapse get -r syn12027897
cd $ORIG_DIR
# giab samples
mkdir -p biodata/giab/na24385
cd biodata/giab/na24385
synapse get -r syn11831515
cd $ORIG_DIR
