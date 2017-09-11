#!/bin/bash
set -eu -o pipefail

ORIG=`pwd`
cd ../synapse
bcbio_python /mnt/work/bcbio/code/bcbio-nextgen/scripts/utils/upload_to_synapse.py bcbio_NA12878-chr20 biodata syn9725771
cd $ORIG
