#!/bin/bash
set -eu -o pipefail

PNAME=NA24385-sv

# local bcbio install
bcbio_vm.py cwlrun cromwell -s htcondor --no-container $PNAME-workflow
