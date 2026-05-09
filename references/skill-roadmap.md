# Coven devkit skill roadmap

The plugin should stay small until the core engineering loop is boringly reliable.

## Active first wave

These are bundled in `openclaw.plugin.json` now:

1. `coven-runtime-authority` — Rust daemon/CLI authority and session lifecycle.
2. `coven-api-contract` — versioned daemon socket API and compatibility fixtures.
3. `openclaw-coven-bridge` — OpenClaw ACP runtime bridge client behavior.
4. `coven-smoke-harness` — deterministic disposable smoke workflows.
5. `coven-release-operator` — release gates, package checks, and dry-runs.

## Next engineering candidates

Add these when repeated work proves they need their own triggerable procedures:

6. `coven-install-diagnostics` — install-to-first-run, npm wrapper/native binary, doctor, harness CLI detection.
7. `coven-future-harness-adapter` — Hermes/Aider/Gemini/OpenCode/Pi/custom adapter evaluation with real CLI smoke evidence.
8. `coven-comux-client-loop` — comux list/open/rejoin/attach/demo expectations.
9. `coven-patch-openclaw-flow` — `coven patch openclaw` rescue loop: repo detection, dry-run plan, harness selection, verification command, uncommitted output.
10. `coven-security-review` — local sockets, symlink/path escapes, request limits, event-log exposure, socket permissions, npm wrapper trust.

## Public/project operations candidates

Keep these out of the first wave unless public cadence work becomes frequent:

11. `opencoven-roadmap-issue-maker` — convert roadmap/MVP checklist items into scoped GitHub issues and milestones; scripts should emit markdown before any GitHub writes.
12. `opencoven-docs-brand-keeper` — docs, READMEs, website copy, command naming, brand assets, and community links.
13. Later plugin: `opencoven-community-ops` — Discord update generation, roadmap summaries, issue board hygiene, release notes.
14. `opencoven-brand-assets` — bundled templates/assets for social images, docs pages, badges, README visuals.

## Promotion rule

Promote a candidate into `skills/` only after at least two real tasks repeat the same workflow or the workflow becomes safety-critical before releases.
