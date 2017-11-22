#!/bin/bash
set -eu -o pipefail

unset ARVADOS_API_HOST_INSECURE

PNAME=giab-joint
PROJECT_ID=qr1hi-j7d0g-h691y6104tlg8b4

bcbio_vm.py cwlrun arvados ${PNAME}-workflow -- --project-uuid $PROJECT_ID --ignore-docker-for-reuse
