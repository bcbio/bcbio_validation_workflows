#!/bin/bash
set -eu -o pipefail

PNAME=pisces-ras

for PNAME in pisces-titr pisces-ras
do
	CWD=`pwd`
	rm -rf $PNAME-workflow
	bcbio_vm.py cwl --systemconfig bcbio_system.yaml $PNAME.yaml
	sed -i "s#$CWD/biodata/#../biodata/#" $PNAME-workflow/main-$PNAME-samples.json
done
