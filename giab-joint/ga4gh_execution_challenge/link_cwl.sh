#!/bin/bash
set -eu -o pipefail

ORIG=`pwd`
cd ../
bcbio_python $ORIG/link_to_synapse.py bcbio-giab-joint giab-joint-workflow syn10466755
cd $ORIG
