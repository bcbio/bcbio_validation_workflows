#!/bin/bash
set -eu -o pipefail
PNAME=pgp_sv_hla
bcbio_vm.py cwl --systemconfig bcbio_system-arvados.yaml $PNAME.yaml
