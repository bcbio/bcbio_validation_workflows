#!/bin/bash
set -eu -o pipefail

PNAME=wes_chr21_test
PLATFORM=arvados

bcbio_vm.py cwlrun cromwell --no-container $PNAME-workflow-$PLATFORM
