#!/bin/bash
set -eu -o pipefail
#synapse get -r syn9725771
PROJECT=NA12878-platinum-chr20

# local bcbio install
bcbio_vm.py cwlrun toil --no-container $PROJECT-workflow -- --logFile $PROJECT-toil.log

# with Docker
#bcbio_vm.py cwlrun toil $PROJECT-workflow -- --logFile $PROJECT-toil.log
