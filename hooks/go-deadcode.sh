#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

OUTPUT=$(deadcode ./...)

echo "$OUTPUT"

if [[ $OUTPUT = "" ]]; then
    exit 0
fi

exit 1
