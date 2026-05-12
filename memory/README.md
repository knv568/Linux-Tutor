# Tutoring Memory Files

This folder stores durable context for Linux tutoring sessions.

- `current-status.md`: live snapshot of setup state
- `next-steps.md`: short actionable checklist
- `user-preferences.md`: communication and risk preferences
- `session-log.md`: chronological session notes

Keep entries short and factual so they are easy to update between chats.

Quick helper:
- Run `./scripts/new-session-note.sh` from workspace root to append a dated session template to `memory/session-log.md`.
- Run `./scripts/update-current-status.sh` from workspace root for a guided prompt that rewrites `memory/current-status.md`.
