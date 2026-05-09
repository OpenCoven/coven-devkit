# Verification matrix

Pick the smallest gate that proves the changed surface, then run broader gates before merge/release.

## Rust daemon / CLI

- `cargo fmt --check`
- `cargo test`
- `cargo clippy --all-targets -- -D warnings`

## OpenClaw bridge package

- From `packages/openclaw-coven`:
  - `pnpm install --frozen-lockfile --config.auto-install-peers=false`
  - confirm `node_modules/openclaw` is absent before adding any local test-only symlink
  - `./node_modules/.bin/vitest run src/runtime.test.ts src/client.test.ts src/compat.test.ts`

## Hygiene

- `git diff --check`
- inspect `git status --short --branch`
- verify signed commits before push/merge where required

## Merge readiness

- local verification passed
- GitHub checks passed
- review blockers resolved
- docs and contract fixtures match behavior
