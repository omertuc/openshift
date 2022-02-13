#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Delete older index
rm -rf ${SCRIPT_DIR}/*.zoekt

zoekt-index ${SCRIPT_DIR}
