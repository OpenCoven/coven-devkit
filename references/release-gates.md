# Release gates

Minimum local release confidence:

1. Clean git state except intentional release edits.
2. Rust: fmt, test, clippy.
3. npm wrapper/package dry-run confirms contents and native binary resolution.
4. OpenClaw bridge package tests pass with optional `openclaw` peer not auto-installed.
5. Secret guard and CI green.
6. Changelog/release notes match shipped behavior.
7. Checksums generated for archives/assets.

Never publish, tag, push, or merge without explicit approval and fresh verification.
