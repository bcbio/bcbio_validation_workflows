#!/bin/bash
set -eu -o pipefail

ORIG=`pwd`
cd ../
bcbio_python /mnt/work/bcbio/code/bcbio-nextgen/scripts/utils/upload_to_synapse.py bcbio-giab-joint biodata syn10466755
cd $ORIG
