output_file=`basename $1`.dtbo
dtc -O dtb -o $output_file -b 0 -@ $1
