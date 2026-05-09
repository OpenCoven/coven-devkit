#!/usr/bin/env bash
set -euo pipefail
socket="${1:?usage: snapshot-api-contract.sh /path/to/coven.sock output-dir}"
out="${2:?usage: snapshot-api-contract.sh /path/to/coven.sock output-dir}"
mkdir -p "$out"
# Requires curl with Unix socket support. Keep output raw so fixture review sees daemon field names.
curl --silent --show-error --unix-socket "$socket" http://localhost/health > "$out/health.json"
curl --silent --show-error --unix-socket "$socket" http://localhost/sessions > "$out/sessions.json"
echo "Wrote $out/health.json and $out/sessions.json"
