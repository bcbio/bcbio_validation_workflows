#!/bin/bash
set -eu -o pipefail

PNAME=giab-joint

CWD=`pwd`
rm -rf $PNAME-workflow
bcbio_vm.py template --systemconfig bcbio_system.yaml joint-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system.yaml $PNAME/config/$PNAME.yaml
sed -i "s#$CWD/biodata/#../biodata/#" $PNAME-workflow/main-$PNAME-samples.json
