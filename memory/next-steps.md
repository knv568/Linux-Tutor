# Next Steps

## Immediate
1. Boot Void live USB in UEFI mode.
2. Run `lsblk -o NAME,SIZE,TYPE,MODEL`.
3. Identify internal SSD (not USB installer).

## Partition plan (UEFI + GPT)
1. EFI System Partition: 512 MiB, FAT32, mount `/boot/efi`.
2. Swap: 4-8 GiB (or more if hibernation desired).
3. Root `/`: remaining space, ext4.

## Install flow
1. Create partitions.
2. Format filesystems.
3. Mount target root and EFI.
4. Run Void installer steps.
5. Install and verify bootloader.
6. Reboot and remove USB.

## After first boot
1. Set timezone and locale.
2. Create/update user account and sudo access.
3. Enable networking.
4. Update system packages.
5. Install essentials (editor, browser, firmware, microcode).
