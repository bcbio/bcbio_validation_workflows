#!/bin/bash
set -eu -o pipefail

PNAME=giab-exome
TEMPLATE=germline
LOCATION=local
rm -rf $PNAME $PNAME-workflow
bcbio_vm.py template --systemconfig bcbio_system-$LOCATION.yaml $TEMPLATE-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-$LOCATION.yaml $PNAME/config/$PNAME.yaml
