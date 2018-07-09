#!/bin/bash
set -eu -o pipefail

PNAME=HCC2218-sv

# local bcbio install
bcbio_vm.py cwlrun cromwell -s htcondor --no-container $PNAME-workflow
