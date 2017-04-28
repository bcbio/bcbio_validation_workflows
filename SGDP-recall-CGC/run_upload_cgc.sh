#!/bin/bash
set -eu -o pipefail

bcbio_python upload_to_cgc.py bchapman/sgdp-recalling SGDP-recall-standalone.cwl SGDP-recall-cgc/main-SGDP-recall-samples.json
