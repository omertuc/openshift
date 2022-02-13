#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

go install github.com/sourcegraph/zoekt/cmd/zoekt-webserver@master
go install github.com/sourcegraph/zoekt/cmd/zoekt-index@master
