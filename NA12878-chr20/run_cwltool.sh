#!/bin/bash
set -eu -o pipefail
#synapse get -r syn9725771
PROJECT=NA12878-platinum-chr20

WORKDIR=cwltool_work
CWL_TMPDIR=$WORKDIR/tmpcwl

cwltool --tmpdir-prefix $CWL_TMPDIR --tmp-outdir-prefix $CWL_TMPDIR  -- $PROJECT-workflow/main-$PROJECT.cwl $PROJECT-workflow/main-$PROJECT-samples.json
