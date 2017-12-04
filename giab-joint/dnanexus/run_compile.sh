#!/bin/bash
set -eu -o pipefail

PNAME=giab-joint
DX_PROJECT_ID=project-F8Q7fJj0XFJJ3XbBPQYXP4B9

# Clean up previous runs, useful for testing
dx mkdir -p $DX_PROJECT_ID:/dx-cwl-run
dx mkdir -p $DX_PROJECT_ID:/.cwl_workflow_archive
dx mkdir -p $DX_PROJECT_ID:/$PNAME-workflow
dx rm -r $DX_PROJECT_ID:/dx-cwl-run
dx rm -r $DX_PROJECT_ID:/.cwl_workflow_archive
dx rm -r $DX_PROJECT_ID:/$PNAME-workflow
rm -rf dx-cwl-run

# Compile and upload run file
dx-cwl compile-workflow $PNAME-workflow/main-$PNAME.cwl --project $DX_PROJECT_ID --token $DX_AUTH_TOKEN
dx upload -p --path $DX_PROJECT_ID:/$PNAME-workflow $PNAME-workflow/main-$PNAME-samples.json

