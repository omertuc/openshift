#!/bin/bash

set -euxo pipefail

go install github.com/google/zoekt/cmd/zoekt-webserver@latest
go install github.com/google/zoekt/cmd/zoekt-index@latest
go install github.com/google/zoekt/cmd/zoekt@latest
go install github.com/google/zoekt/cmd/zoekt-indexserver@latest
