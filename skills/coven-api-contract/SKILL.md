---
name: coven-api-contract
description: Use when changing or reviewing Coven daemon socket API contracts, apiVersion handshakes, /health, /sessions, /events, input/kill endpoints, structured errors, pagination, fixtures, and backwards compatibility.
---

# Coven API Contract

Use this for versioned local daemon API work and client compatibility.

## Contract rule

`GET /health` is the handshake. Clients must verify `apiVersion === "v1"` before depending on v1 response shapes. Incompatible changes require a new API version and migration note.

## Workflow

1. Read `../../references/public-boundaries.md` and current `docs/API-CONTRACT.md` in the Coven repo.
2. Add failing fixture/client/runtime tests before changing response shapes.
3. Keep additive fields backward compatible; reject unknown required behavior.
4. Document every public endpoint shape and non-success response.
5. If daemon responses change, refresh fixtures intentionally and review the diff.

## Scripts

- `../../scripts/snapshot-api-contract.sh /path/to/coven.sock output-dir` captures live `/health` and `/sessions` fixtures.

## Verification

Run Rust gates and OpenClaw bridge fixture tests from `../../references/verification-matrix.md`.
