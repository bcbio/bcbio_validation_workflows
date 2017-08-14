#!/bin/bash
set -eu -o pipefail
#synapse get -r syn9725771
PNAME=NA12878-platinum-chr20

WORKDIR=`pwd`/cwltool_work
CWL_TMPDIR=$WORKDIR/tmpcwl
mkdir -p $CWL_TMPDIR

export TMPDIR=$CWL_TMPDIR
cwltool --tmpdir-prefix $CWL_TMPDIR --tmp-outdir-prefix $CWL_TMPDIR $PNAME-workflow/main-$PNAME.cwl $PNAME-workflow/main-$PNAME-samples.json
