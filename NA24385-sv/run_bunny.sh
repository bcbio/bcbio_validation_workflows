#!/bin/bash
set -eu -o pipefail

PNAME=NA24385-sv

# local bcbio install
#bcbio_vm.py cwlrun bunny --no-container $PNAME-workflow

# with Docker
bcbio_vm.py cwlrun bunny $PNAME-workflow
