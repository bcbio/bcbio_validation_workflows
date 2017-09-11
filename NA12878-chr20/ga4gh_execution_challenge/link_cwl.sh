#!/bin/bash
set -eu -o pipefail

ORIG=`pwd`
cd ../
bcbio_python $ORIG/link_to_synapse.py bcbio_NA12878-chr20 NA12878-platinum-chr20-workflow syn9725771
cd $ORIG
