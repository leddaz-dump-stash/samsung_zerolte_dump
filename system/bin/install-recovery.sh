#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY:28549120:d4cf307c7caaf5c7cd4e2b742163b3853b2dde26; then
  applypatch EMMC:/dev/block/platform/15570000.ufs/by-name/BOOT:24428544:3e4f6a45753e9b85451cf66e285a9f28d1b90471 EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY d4cf307c7caaf5c7cd4e2b742163b3853b2dde26 28549120 3e4f6a45753e9b85451cf66e285a9f28d1b90471:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
