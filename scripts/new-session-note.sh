#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_FILE="$ROOT_DIR/memory/session-log.md"

if [[ ! -f "$LOG_FILE" ]]; then
  echo "Error: session log not found at $LOG_FILE" >&2
  exit 1
fi

DATE_STAMP="$(date '+%Y-%m-%d %H:%M %Z')"

cat <<EOF >> "$LOG_FILE"

## $DATE_STAMP

### Goal
- 

### Actions taken
- 

### Result
- 

### Blockers
- 

### Next action
- 
EOF

echo "Added new session template to: $LOG_FILE"
