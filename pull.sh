#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Git pull all repositories
for repo in $(find "${SCRIPT_DIR}" -mindepth 1 -maxdepth 1 -type d); do
  git -C $repo pull &
done

