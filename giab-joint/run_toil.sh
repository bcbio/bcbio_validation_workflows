#!/bin/bash
set -eu -o pipefail
#synapse get -r synXXX
PNAME=giab-joint

# local bcbio install
bcbio_vm.py cwlrun toil --no-container $PNAME-workflow

# with Docker
#bcbio_vm.py cwlrun toil $PNAME-workflow
