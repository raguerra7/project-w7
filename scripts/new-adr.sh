#!/usr/bin/env bash
# Scaffold a new ADR from docs/adr/template.md with the next sequential number.
# Usage: scripts/new-adr.sh "short decision title"
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"short decision title\"" >&2
  exit 1
fi

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
adr_dir="$repo_root/docs/adr"

last_num=$(find "$adr_dir" -maxdepth 1 -name '[0-9][0-9][0-9][0-9]-*.md' -exec basename {} \; \
  | sed 's/^\([0-9]\{4\}\).*/\1/' | sort -n | tail -1)
last_num=${last_num:-0000}
next_num=$(printf "%04d" $((10#$last_num + 1)))

slug=$(echo "$*" | tr '[:upper:]' '[:lower:]' | tr -cs 'a-z0-9' '-' | sed 's/^-//;s/-$//')
target="$adr_dir/${next_num}-${slug}.md"

if [[ -e "$target" ]]; then
  echo "Refusing to overwrite existing file: $target" >&2
  exit 1
fi

today=$(date +%Y-%m-%d)
sed -n '/^```markdown$/,/^```$/p' "$adr_dir/template.md" \
  | sed '1d;$d' \
  | sed "s/ADR-NNNN: <Short, specific title>/ADR-${next_num}: $*/" \
  | sed "s/Status: Proposed | Accepted | Superseded by ADR-XXXX | Deprecated/Status: Proposed/" \
  | sed "s/Date: YYYY-MM-DD/Date: ${today}/" \
  > "$target"

echo "Created $target"
