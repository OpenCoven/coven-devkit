# Coven development map

Use this map before choosing a skill.

- Rust daemon authority: `crates/coven-cli/src/api.rs`, `daemon.rs`, `store.rs`, `pty_runner.rs`, `project.rs`, `harness.rs`.
- OpenClaw bridge client: `packages/openclaw-coven/src/client.ts`, `runtime.ts`, `config.ts`, `compat.test.ts`, fixtures.
- Public contract/docs: `docs/API-CONTRACT.md`, `docs/ARCHITECTURE.md`, `docs/OPERATIONAL-MODEL.md`, `docs/ROADMAP.md`.
- Packaging/release: `npm/`, `scripts/publish-npm.mjs`, `.github/workflows/*`, package lockfiles.

Hard boundary: Rust daemon is the authority for local harness supervision and socket API behavior. OpenClaw plugin is a client and must not become hidden Coven core logic.
