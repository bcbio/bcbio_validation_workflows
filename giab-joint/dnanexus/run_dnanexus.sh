#!/bin/bash

PNAME=giab-joint
DX_PROJECT_ID=project-F8Q7fJj0XFJJ3XbBPQYXP4B9

dx-cwl run-workflow /dx-cwl-run/main-$PNAME/main-$PNAME /$PNAME-workflow/main-$PNAME-samples.json \
    --project $PROJECT_ID --token $DX_AUTH_TOKEN
