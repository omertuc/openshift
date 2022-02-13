#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

go install github.com/google/zoekt/cmd/zoekt-webserver@latest
go install github.com/google/zoekt/cmd/zoekt-index@latest

zoekt-index .
