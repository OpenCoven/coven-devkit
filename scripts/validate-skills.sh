#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
fail=0
for skill in "$root"/skills/*/SKILL.md; do
  name="$(basename "$(dirname "$skill")")"
  if ! grep -q '^---$' "$skill"; then echo "missing frontmatter fence: $skill"; fail=1; fi
  if ! grep -q "^name: $name$" "$skill"; then echo "name mismatch: $skill"; fail=1; fi
  if ! grep -q '^description: .\{40,\}' "$skill"; then echo "description too short: $skill"; fail=1; fi
  if [ "$(wc -l < "$skill")" -gt 220 ]; then echo "skill too long (>220 lines): $skill"; fail=1; fi
done
python3 -m json.tool "$root/openclaw.plugin.json" >/dev/null
python3 -m json.tool "$root/package.json" >/dev/null
exit "$fail"
