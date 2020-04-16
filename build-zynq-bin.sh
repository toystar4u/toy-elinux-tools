#!/bin/sh
#
# convert from a BIT file to a programmable BIN file for Zynq
# 
# toystar, KETI     
# April, 2020

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 bitstream.bit"
  exit
fi

tmp_zynq_bif=`basename $1`.bif
echo "all:{ $1 }" >  $tmp_zynq_bif
./bootgen -image $tmp_zynq_bif -arch zynq -process_bitstream bin
rm -rf $tmp_zynq_bif
