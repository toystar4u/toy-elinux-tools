# toy-elinux-tools

## some tools for eLinux

1. Convert a FPGA bitstream to the BIN file 

```
tools/build-zynq-bin.sh <bitstream.bit>
```

2. Programming the BIN file to PL
```
tools/fpgautil -b <bitstrea.bit.bin>
```

3. Build DT-overlay
```
tools/build-dt-overlay.sh <dt-overlay.dtsi>
```

4. Expand the RootFS

expand-rootfs.sh getting from https://github.com/lgierth/pimesh/edit/master/files/raspi-expand-rootfs.sh

```
# check the root filesystem size on the device 
$ df -h

# expand the rootfs
$ sudo tools/expand_rootfs.sh
$ reboot

# check the size after rebootting
$ df -h
```
