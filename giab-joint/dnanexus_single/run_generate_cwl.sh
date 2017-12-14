#!/bin/bash
set -eu -o pipefail

TEMPLATE=germline

PNAME=giab-single-bwa
rm -rf $PNAME
rm -rf $PNAME-workflow
bcbio_vm.py template --systemconfig bcbio_system-dnanexus.yaml $TEMPLATE-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-dnanexus.yaml $PNAME/config/$PNAME.yaml

PNAME=giab-single-dragen
rm -rf $PNAME
rm -rf $PNAME-workflow
bcbio_vm.py template --systemconfig bcbio_system-dnanexus.yaml $TEMPLATE-template.yaml $PNAME.csv
bcbio_vm.py cwl --systemconfig bcbio_system-dnanexus.yaml $PNAME/config/$PNAME.yaml
