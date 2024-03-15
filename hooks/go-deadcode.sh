#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

OUTPUT=$(deadcode ./...)

echo "$OUTPUT"

if (($(echo "$OUTPUT" | wc -l) < 1)); then
	exit 0
fi

exit 1
