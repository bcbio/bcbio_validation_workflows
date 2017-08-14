#!/bin/bash
set -eu -o pipefail

PNAME=NA12878-platinum-chr20
ORIG_DIR=`pwd`
WORK_DIR=$ORIG_DIR/bunny_work
mkdir -p $WORK_DIR
cd $WORK_DIR

# local bcbio install
rabix --no-container -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json

# with Docker
# rabix -b $WORK_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json

# Re-start from a previous run
#CACHE_DIR=$WORK_DIR/112ebd74-6c4a-458f-800b-c2c1a8f89e1a
#rabix --no-container -b $WORK_DIR --cache-dir $CACHE_DIR $ORIG_DIR/$PNAME-workflow/main-$PNAME.cwl $ORIG_DIR/$PNAME-workflow/main-$PNAME-samples.json
