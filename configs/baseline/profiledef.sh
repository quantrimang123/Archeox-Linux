#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archeoxLinux-baseline"
iso_label="ARCH_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="archeox Linux <hd070812@gmail.com>"
iso_application="archeox Linux baseline"
iso_version="live"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.grub')
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlzma,109' -E 'ztailpacking')
bootstrap_tarball_compression=(xz -9e)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
