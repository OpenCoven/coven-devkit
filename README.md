# OpenCoven Coven Devkit

OpenClaw plugin package `@opencoven/coven-devkit` that bundles narrow, repo-aware skills for expert Coven work.

This intentionally is **not** one giant “Coven” skill. It starts with the five highest-risk engineering workflows and keeps later community/docs automation as a roadmap until repeated use justifies it.

## Active bundled skills

1. `coven-runtime-authority` — Rust CLI/daemon/session authority.
2. `coven-api-contract` — versioned daemon API and compatibility fixtures.
3. `openclaw-coven-bridge` — `packages/openclaw-coven` ACP runtime bridge.
4. `coven-smoke-harness` — deterministic disposable smoke workflow.
5. `coven-release-operator` — release gates and package verification.

See `references/skill-roadmap.md` for planned candidates such as install diagnostics, future harness adapters, comux loop, patch-openclaw flow, roadmap issue maker, docs/brand keeper, security review, community ops, and brand assets.

## ClawHub install

```sh
openclaw plugins install clawhub:@opencoven/coven-devkit
openclaw plugins enable coven-devkit
```

## Local install

```sh
openclaw plugins install ./coven-devkit --link
openclaw plugins enable coven-devkit
```

## Validation

```sh
npm run check
```

## Publish/remote note

This repo is scaffolded locally first. Create `OpenCoven/coven-devkit` only after explicit approval, then push `main`.
