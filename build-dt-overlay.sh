if [ $# -ne 1 ]; then
  echo "Usage: $0 device-tree.dts or dtsi"
  exit
fi

output_file=`basename $1`.dtbo
dtc -O dtb -o $output_file -b 0 -@ $1
