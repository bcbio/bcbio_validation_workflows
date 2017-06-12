#!/bin/bash
set -eu -o pipefail

CODE=~/bio/bcbio-nextgen
WFNAME=NA12878-platinum-chr20
cwltool2wdl.py $WFNAME-workflow/main-$WFNAME.cwl $WFNAME/main-$WFNAME-samples.json
