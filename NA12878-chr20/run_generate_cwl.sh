#!/bin/bash
set -eu -o pipefail

CWD=`pwd`
rm -rf NA12878-platinum-chr20-workflow
bcbio_vm.py template --systemconfig bcbio_system.yaml germline_template.yaml NA12878-platinum-chr20.csv
bcbio_vm.py cwl --systemconfig bcbio_system.yaml NA12878-platinum-chr20/config/NA12878-platinum-chr20.yaml
sed -i "s#$CWD/biodata/#../biodata/#" NA12878-platinum-chr20-workflow/main-NA12878-platinum-chr20-samples.json
