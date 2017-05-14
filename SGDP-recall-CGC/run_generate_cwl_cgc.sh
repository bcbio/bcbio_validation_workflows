#!/bin/bash
set -eu -o pipefail

SYSTEM_YAML=bcbio_system_cgc.yaml
PROJECT=SGDP-recall
bcbio_vm.py template --systemconfig $SYSTEM_YAML germline_template.yaml $PROJECT.csv
bcbio_vm.py cwl --systemconfig $SYSTEM_YAML $PROJECT/config/$PROJECT.yaml
rm -rf $PROJECT-cgc
mv $PROJECT-workflow $PROJECT-cgc
rabix --resolve-app SGDP-recall-cgc/main-SGDP-recall.cwl > SGDP-recall-standalone.cwl
