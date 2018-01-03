#!/bin/bash
set -eu -o pipefail

PNAME=giab-chm
TEMPLATE=germline
PLATFORM=local

CWD=`pwd`
rm -rf $PNAME-workflow
bcbio_vm.py template --systemconfig bcbio_system-$PLATFORM.yaml $TEMPLATE-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-$PLATFORM.yaml $PNAME/config/$PNAME.yaml
sed -i "s#$CWD/biodata/#../biodata/#" $PNAME-workflow/main-$PNAME-samples.json
