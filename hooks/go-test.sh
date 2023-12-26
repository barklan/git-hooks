#!/usr/bin/env bash
set -e

go test -race -v ./...

if $? -ne 0; then
	echo "unit tests failed"
	exit 1
fi
