#!/bin/bash
set -eu -o pipefail
#synapse get -r syn9725771
VALIDATION_PNAME=NA12878-platinum-chr20

# local bcbio install
bcbio_vm.py cwlrun toil --no-container $VALIDATION_PNAME-workflow -- --logFile $VALIDATION_PNAME-toil.log

# with Docker
#bcbio_vm.py cwlrun toil $VALIDATION_PNAME-workflow -- --logFile $VALIDATION_PNAME-toil.log
