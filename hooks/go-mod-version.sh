#!/usr/bin/env bash
set -e

GO_MOD_GO_VERSION=$(grep -m 1 go go.mod | choose 1)
VERSION_COUNT=$(grep -m 1 go go.mod | choose 1 | tr '.' '\n' | wc -l)

if [ "$VERSION_COUNT" = '3' ]; then
    echo "patch version found in go.mod go line: ${GO_MOD_GO_VERSION}"
	exit 1
fi
