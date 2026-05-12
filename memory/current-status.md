# Current Status

## Learner
- Name: Karen (from workspace path)
- Experience level: Beginner
- Goal: First-time Linux distro setup and learning-by-doing

## Active install context
- Distro: Void Linux
- Device: Dell XPS 13 9370 (real laptop)
- Install type: Linux-only (erase disk)
- Boot mode target: UEFI
- Secure Boot: OFF
- SATA Operation: AHCI

## Last known blocker
- Internal SSD was not visible from live environment initially.
- BIOS setting was corrected to AHCI.
- Next check: confirm SSD appears in `lsblk`.

## What is done
- Confirmed UEFI boot path for USB install media.
- Confirmed secure boot setting.
- Avoided partitioning the USB by mistake.

## Pending
- Verify internal disk device name (likely `nvme0n1`).
- Partition disk using GPT.
- Complete filesystem + mount steps.
- Run installer and bootloader setup.
