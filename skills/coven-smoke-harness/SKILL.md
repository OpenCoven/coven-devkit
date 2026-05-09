---
name: coven-smoke-harness
description: Use when designing or running deterministic Coven smoke workflows for doctor, daemon lifecycle, run, sessions, attach, kill, archive, summon, sacrifice, restart recovery, and disposable test repositories.
---

# Coven Smoke Harness

Use this for real-world smoke confidence without risking real projects.

## Safety rules

- Always create a disposable repo/workspace.
- Avoid prompts that mutate valuable files unless the disposable repo is the target.
- Capture commands, exit codes, and relevant output.
- Clean up daemons and temp dirs unless preserving evidence is useful.

## Workflow

1. Define the smoke path: install, doctor, daemon lifecycle, launch, attach/rejoin, input, kill, archive/summon/sacrifice, restart recovery.
2. Run smallest reproducible smoke first.
3. Expand only after the prior step passes.
4. Convert repeated manual smoke flows into scripts.

## Script

- `../../scripts/coven-smoke-disposable.sh` runs a conservative disposable lifecycle smoke.
