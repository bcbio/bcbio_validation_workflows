#!/bin/bash
set -eu -o pipefail

mkdir -p biodata
cd biodata
synapse get -r syn9725771
cd ..
