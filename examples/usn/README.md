
### Programming and test

1. generate a bin file and program it to PL
```
# convert a bit to the bin file
tools/build-bin.sh examples/usn/led_blinker3.bit

# programming the bin file to PL
tools/fpgautils -b examples/usn/led_blinker3.bit.bin
```



2. test
```
# read D3 LED control register
tools/devmem2 0x80040000       

# turn on D3 LED
tools/devmem2 0x80040000 w 0x01

# turn off D3 LED
tools/devmem2 0x80040000 w 0x00

# read the value of the internal counter
tools/devmem2 0x80041000

# using memtool : START+SIZE or START-END
memtool md -b 0x80040000+0xf

memtool mw -w 0x80040000 0xffff

memtool md -b 0x80040000+0xf

```
