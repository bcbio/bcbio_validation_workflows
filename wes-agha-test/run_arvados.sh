#!/bin/bash
set -eu -o pipefail

PID=qr1hi-j7d0g-a68mg4e5oh37oek
PNAME=wes_chr21_test
PLATFORM=arvados

bcbio_vm.py cwlrun arvados $PNAME-workflow-$PLATFORM -- --project-uuid $PID
