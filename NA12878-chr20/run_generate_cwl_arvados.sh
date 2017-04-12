#!/bin/bash
set -eu -o pipefail

SYSTEM_YAML=bcbio_system_arvados.yaml
bcbio_vm.py template --systemconfig $SYSTEM_YAML germline_template.yaml NA12878-platinum-chr20.csv
bcbio_vm.py cwl --systemconfig $SYSTEM_YAML NA12878-platinum-chr20/config/NA12878-platinum-chr20.yaml
mv NA12878-platinum-chr20-workflow NA12878-platinum-chr20-workflow-arvados
