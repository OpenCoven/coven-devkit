---
name: coven-runtime-authority
description: Use when changing Coven Rust CLI/daemon runtime behavior, including project-root validation, cwd canonicalization, PTY lifecycle, socket handling, session/event persistence, input/kill safety, and archive/summon/sacrifice flows.
---

# Coven Runtime Authority

Use this skill for `crates/coven-cli` and daemon behavior. Rust is the authority for local harness supervision; clients adapt to it, not the other way around.

## Start here

1. Read `../../references/coven-map.md` and `../../references/verification-matrix.md`.
2. Inspect the exact Rust modules before changing behavior.
3. Preserve project-root and cwd boundary checks; never trust client-provided paths without canonicalization.
4. Treat PTY handles, input, kill, archive, summon, and sacrifice as safety-sensitive.

## Workflow

- Add or update Rust tests first for behavior changes.
- Keep daemon socket request parsing bounded and explicit.
- Persist session/event state before exposing it to clients.
- For live session operations, reject unknown, orphaned, or terminal sessions with structured errors.
- Update docs when CLI/API behavior changes.

## Verification

Run the Rust gates from `../../references/verification-matrix.md` plus any targeted test for the changed module.
