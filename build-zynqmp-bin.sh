#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 bitstream.bit"
  exit
fi

tmp_zynqmp_bif=`basename $1`.bif
echo "all:{ [deistination_device = pl] $1 }" >  $tmp_bitmp_zynqmp_bif
./bootgen -image  -arch zynqmp -o  $1.bin -w
rm -rf $tmp_zynqmp_bif
