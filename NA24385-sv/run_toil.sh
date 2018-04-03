#!/bin/bash
set -eu -o pipefail
PNAME=somatic-giab-mix

# local bcbio install
bcbio_vm.py cwlrun toil --no-container $PNAME-workflow

# with Docker
#bcbio_vm.py cwlrun toil $PNAME-workflow
