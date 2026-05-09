---
name: coven-release-operator
description: Use when preparing or reviewing Coven releases, npm wrapper releases, native package verification, GitHub workflow release gates, checksums, package contents, version inputs, and publish dry-runs.
---

# Coven Release Operator

Use this before release PRs, tags, package publication, or release workflow changes.

## Release posture

No publish, tag, push, merge, or irreversible release action without explicit approval and fresh verification.

## Workflow

1. Read `../../references/release-gates.md`.
2. Confirm intended version, target packages, platforms, and release channel.
3. Run local dry-run gates.
4. Inspect package contents and checksums.
5. Confirm CI/secret guard status before release.
6. Record exact artifacts, versions, hashes, and URLs.

## Script

- `../../scripts/release-dry-run.sh /path/to/coven` runs the baseline local release gates.
