#!/bin/bash
set -eu -o pipefail

rm -rf NA12878-platinum-chr20-workflow-local
rm -rf NA12878-platinum-chr20-workflow-s3
rm -rf NA12878-platinum-chr20-workflow
bcbio_vm.py template --systemconfig bcbio_system_s3.yaml germline_template.yaml NA12878-platinum-chr20.csv
bcbio_vm.py cwl --systemconfig bcbio_system_s3.yaml NA12878-platinum-chr20/config/NA12878-platinum-chr20.yaml
mkdir -p NA12878-platinum-chr20-workflow-s3
mv NA12878-platinum-chr20-workflow/*-samples.json NA12878-platinum-chr20-workflow-s3
sed 's#s3://biodata/#biodata/#' NA12878-platinum-chr20-workflow-s3/main-NA12878-platinum-chr20-samples.json > NA12878-platinum-chr20-workflow/main-NA12878-platinum-chr20-samples.json
