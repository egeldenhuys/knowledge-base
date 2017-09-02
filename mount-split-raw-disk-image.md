# Mount a split raw disk image
## Requirements
- [AFFLIBv3](https://github.com/sshock/AFFLIBv3) (`./configure && make && make install`)

## Process
```
# x = start of parition sector * sector size

sudo affuse disk.img.000 image/
sudo mount -o ro,loop,noexec,offset=<x> image/disk.img.000.raw mnt/
```
