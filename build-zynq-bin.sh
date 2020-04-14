tmp_zynq_bif=`basename $1`.bif
echo "all:{$1}" >  $tmp_zynq_bif
bootgen -image $tmp_zynq_bif -arch zynq -process_bitstream bin
rm -rf $tmp_zynq_bif
