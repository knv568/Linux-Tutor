#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STATUS_FILE="$ROOT_DIR/memory/current-status.md"

prompt() {
  local label="$1"
  local value=""
  read -r -p "$label: " value
  printf '%s' "$value"
}

echo "Update current status memory"
echo "Press Enter to leave any field blank."
echo

learner_name="$(prompt "Learner name")"
experience_level="$(prompt "Experience level")"
goal="$(prompt "Primary goal")"

distro="$(prompt "Distro")"
device="$(prompt "Device")"
install_type="$(prompt "Install type")"
boot_mode="$(prompt "Boot mode target")"
secure_boot="$(prompt "Secure Boot")"
sata_mode="$(prompt "SATA mode")"

blocker="$(prompt "Last known blocker")"
done_item_1="$(prompt "Done item #1")"
done_item_2="$(prompt "Done item #2")"
pending_item_1="$(prompt "Pending item #1")"
pending_item_2="$(prompt "Pending item #2")"

updated_at="$(date '+%Y-%m-%d %H:%M %Z')"

cat > "$STATUS_FILE" <<EOF
# Current Status

_Last updated: $updated_at_

## Learner
- Name: $learner_name
- Experience level: $experience_level
- Goal: $goal

## Active install context
- Distro: $distro
- Device: $device
- Install type: $install_type
- Boot mode target: $boot_mode
- Secure Boot: $secure_boot
- SATA Operation: $sata_mode

## Last known blocker
- $blocker

## What is done
- $done_item_1
- $done_item_2

## Pending
- $pending_item_1
- $pending_item_2
EOF

echo
echo "Updated: $STATUS_FILE"
