#!/bin/sh
# Generate man page and completions
set -e
cd "$(dirname "$0")"

XH_HELP2MAN=1 help2man -i doc/man-template.roff -h help -n "Friendly and fast tool for sending HTTP requests" -N 'cargo run --all-features --' > doc/xh.1

cargo run --all-features -- generate_completions completions

mv completions/xh.fish.new completions/xh.fish
