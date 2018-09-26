#!/bin/bash
set -eu -o pipefail

PNAME=wes_chr21_test
TEMPLATE=wes_chr21_test
PLATFORM=gcp
rm -rf $PNAME
rm -rf $PNAME-workflow
rm -rf $PNAME-workflow-$PLATFORM
bcbio_vm.py template --systemconfig bcbio_system-${PLATFORM}.yaml ${TEMPLATE}-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-${PLATFORM}.yaml $PNAME/config/$PNAME.yaml
mv $PNAME-workflow $PNAME-workflow-$PLATFORM
