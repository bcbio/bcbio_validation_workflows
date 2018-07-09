#!/bin/bash
set -eu -o pipefail

PNAME=HCC2218-sv

CWD=`pwd`
rm -rf $PNAME-workflow
bcbio_vm.py cwl --systemconfig bcbio_system.yaml $PNAME.yaml
sed -i "s#$CWD/biodata/#../biodata/#" $PNAME-workflow/main-$PNAME-samples.json
