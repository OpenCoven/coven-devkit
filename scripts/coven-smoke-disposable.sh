#!/usr/bin/env bash
set -euo pipefail
tmp="$(mktemp -d "${TMPDIR:-/tmp}/coven-smoke.XXXXXX")"
trap 'rm -rf "$tmp"' EXIT
mkdir -p "$tmp/repo"
cd "$tmp/repo"
git init -b main >/dev/null
printf '# smoke\n' > README.md
git add README.md && git commit -m 'init smoke repo' >/dev/null 2>&1 || true
coven doctor
coven daemon start
coven daemon status
coven sessions --plain || true
coven daemon stop
printf 'Disposable smoke workspace: %s\n' "$tmp/repo"
