#!/bin/bash
set -eu -o pipefail

PNAME=pisces-ras
#PNAME=pisces-titr

# local bcbio install
bcbio_vm.py cwlrun cromwell -s htcondor --no-container $PNAME-workflow
