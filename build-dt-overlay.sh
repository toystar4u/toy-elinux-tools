#!/bin/sh
#
# build DT overlay
# 
# toystar, KETI     
# April, 2020

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 dt-overlay.dtsi"
  exit
fi

output_file=`basename $1`.dtbo
dtc -O dtb -o $output_file -b 0 -@ $1
