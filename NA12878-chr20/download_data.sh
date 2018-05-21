#!/bin/bash
set -eu -o pipefail

mkdir -p biodata
cd biodata
synapse get -r syn9725771
cd ..
# cleanup synapse files
cd biodata
find . -name "SYNAPSE_METADATA_MANIFEST.tsv" -exec rm -f {} \;
