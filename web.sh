#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

zoekt-webserver -index $SCRIPT_DIR -listen :6070
