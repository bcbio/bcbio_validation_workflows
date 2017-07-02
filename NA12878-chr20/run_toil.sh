#!/bin/bash
set -eu -o pipefail
#synapse get -r syn9725771
VALIDATION_PROJECT=NA12878-platinum-chr20

# local bcbio install
bcbio_vm.py cwlrun toil --no-container $VALIDATION_PROJECT-workflow -- --logFile $VALIDATION_PROJECT-toil.log

# with Docker
#bcbio_vm.py cwlrun toil $VALIDATION_PROJECT-workflow -- --logFile $VALIDATION_PROJECT-toil.log
