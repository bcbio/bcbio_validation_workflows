#!/bin/bash
set -eu -o pipefail

PNAME=giab-exome

# local bcbio install
bcbio_vm.py cwlrun cromwell -s htcondor --no-container $PNAME-workflow
