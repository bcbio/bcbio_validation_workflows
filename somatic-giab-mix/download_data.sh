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
# giab mix sample
mkdir -p biodata/giab/na12878-na24385-somatic
cd biodata/giab/na12878-na24385-somatic
synapse get -r syn12028788
cd $ORIG_DIR
