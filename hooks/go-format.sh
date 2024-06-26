#!/usr/bin/env bash
set -e

output="$(gofumpt -l "$@")"

[[ -z "$output" ]] && exit 0

echo >&2 "Go files must be formatted with gofmt. Please run:"
for f in $output; do
	echo >&2 "  gofumpt -w $PWD/$f"
done

exit 1
