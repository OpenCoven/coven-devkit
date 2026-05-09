#!/usr/bin/env bash
set -euo pipefail
repo="${1:-.}"
cd "$repo"
git diff --check
cargo fmt --check
cargo test
cargo clippy --all-targets -- -D warnings
if [ -d packages/openclaw-coven ]; then
  (cd packages/openclaw-coven && pnpm install --frozen-lockfile --config.auto-install-peers=false && ./node_modules/.bin/vitest run src/runtime.test.ts src/client.test.ts src/compat.test.ts)
fi
echo "Release dry-run gates passed."
