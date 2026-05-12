# Linux Tutoring Workspace

This repository is a lightweight workspace for ongoing beginner-friendly Linux tutoring sessions.

It stores session memory, structured notes, and small helper scripts so progress is not lost between chats.

## What This Repo Is For

- Tracking installation and troubleshooting progress
- Keeping clear next actions between sessions
- Capturing user preferences and learning style
- Standardizing session notes with simple scripts

## Repository Structure

- `AGENTS.md`  
  Tutor behavior, safety rules, and session workflow.

- `memory/`  
  Durable session context:
  - `current-status.md` for current snapshot
  - `next-steps.md` for actionable checklist
  - `user-preferences.md` for communication preferences
  - `session-log.md` for chronological entries

- `scripts/`  
  Helper scripts for updating memory files:
  - `new-session-note.sh`
  - `update-current-status.sh`

## Quick Start

From the repo root:

1. Add a fresh dated log entry:
   - `./scripts/new-session-note.sh`
2. Update current setup state with prompts:
   - `./scripts/update-current-status.sh`
3. Review next action list:
   - open `memory/next-steps.md`

## Suggested Session Routine

1. Capture today’s goal in `memory/session-log.md`.
2. Update `memory/current-status.md` after major changes.
3. Keep `memory/next-steps.md` short and specific.
4. Record newly observed preferences in `memory/user-preferences.md`.

## Safety Defaults

- Prefer UEFI + GPT on modern laptops.
- Confirm target disk with `lsblk` before any partitioning.
- Do not run destructive disk commands without explicit confirmation.