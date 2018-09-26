#!/bin/bash
set -eu -o pipefail

PID=qr1hi-j7d0g-a68mg4e5oh37oek
PNAME=wes_chr21_test
PLATFORM=arvados

WES_API_HOST=wes.qr1hi.arvadosapi.com
WES_API_AUTH=5vipdwj62f3wz6avnih8p27krsdpngphgymyukw79nslnxk29x

bcbio_vm.py cwlrun wes --host $WES_API_HOST --auth $WES_API_AUTH $PNAME-workflow-$PLATFORM
#bcbio_vm.py cwlrun arvados $PNAME-workflow-$PLATFORM -- --project-uuid $PID
