#!/bin/bash
set -eu -o pipefail

PNAME=giab-joint

CWD=`pwd`
rm -rf $PNAME
rm -rf $PNAME-workflow
bcbio_vm.py template --systemconfig bcbio_system-dnanexus.yaml ../joint-template.yaml ../$PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-dnanexus.yaml $PNAME/config/$PNAME.yaml
