#!/bin/bash
set -eu -o pipefail

PNAME=pgp_sv_hla
PID=su92l-j7d0g-eoibug3nrwg8ysj

bcbio_vm.py cwlrun arvados ${PNAME}-workflow -- --project-uuid $PID
#bcbio_vm.py cwlrun arvados ${PNAME}-workflow -- --project-uuid $PID --ignore-docker-for-reuse
