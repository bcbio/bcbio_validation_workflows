#!/bin/bash
set -eu -o pipefail

PNAME=pisces-ras

# local bcbio install
bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow
