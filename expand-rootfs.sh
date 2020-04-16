#!/bin/sh
#
# expand rootfs


partition_str=`parted /dev/mmcblk0 --script -- unit chs print | grep -Eo "mmcblk0: d+, d+, d+"
