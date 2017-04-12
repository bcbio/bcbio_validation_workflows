#!/bin/bash
set -eu -o pipefail

bcbio_vm.py template --systemconfig bcbio_system_s3.yaml germline_template.yaml NA12878-platinum-chr20.csv
bcbio_vm.py cwl --systemconfig bcbio_system_s3.yaml NA12878-platinum-chr20/config/NA12878-platinum-chr20.yaml
rm -rf NA12878-platinum-chr20-workflow-s3
mv NA12878-platinum-chr20-workflow NA12878-platinum-chr20-workflow-s3
