#!/usr/bin/env sh
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
cargo build --release --locked
exec ./target/release/directloop "$@"
