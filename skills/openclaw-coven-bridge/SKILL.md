---
name: openclaw-coven-bridge
description: Use when working on packages/openclaw-coven, including ACP runtime mapping, socket trust validation, apiVersion handshakes, fallback behavior, event polling, sendInput/killSession, and fixture compatibility tests.
---

# OpenClaw Coven Bridge

Use this for `packages/openclaw-coven`. The bridge is a client of the Coven daemon, not a second runtime authority.

## Required posture

- Rust daemon owns session lifecycle and socket API semantics.
- The plugin verifies `apiVersion` before relying on daemon response shapes.
- Fallback must be explicit and safe; fail closed when fallback is disabled.
- Socket paths must stay anchored under trusted `covenHome` and reject symlink/permission escapes.

## Workflow

1. Add failing tests in `src/runtime.test.ts`, `src/client.test.ts`, or `src/compat.test.ts`.
2. Implement minimal bridge changes.
3. Keep optional peer `openclaw` optional; do not let lockfile changes auto-install it.
4. Update fixtures/docs when public client expectations change.

## Verification

Use the OpenClaw bridge gates in `../../references/verification-matrix.md`.
