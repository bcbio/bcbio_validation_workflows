#!/bin/bash
set -eu -o pipefail

ORIG_DIR=`pwd`
# regions
mkdir -p biodata/regions
cd biodata/regions
synapse get -r syn10468188
cd $ORIG_DIR
# chm
mkdir -p biodata/chm
cd biodata/chm
synapse get -r syn11644594
cd $ORIG_DIR
# hg38
mkdir -p biodata/collections/hg38
cd biodata/collections/hg38
synapse get -r syn10468301
cd $ORIG_DIR
# giab samples
mkdir -p biodata/giab/na12878
cd biodata/giab/na12878
synapse get -r syn11831606
cd $ORIG_DIR
