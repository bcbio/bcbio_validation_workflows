#!/bin/bash
set -eu -o pipefail

PNAME=giab-joint

# local bcbio install
bcbio_vm.py cwlrun bunny --no-container $PNAME-workflow

# with Docker
#bcbio_vm.py cwlrun bunny $PNAME-workflow
