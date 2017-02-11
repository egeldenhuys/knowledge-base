# Install Arch Linux on SD Card for RPI3

- From https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-3

## Install to SD card
`sudo cfdisk /dev/sdx`

```
1. Primary	W95 FAT32 (LBA)	100M (Boot)
2. Primary	Linux			Rest
```

Create and mount FAT filesystem
```
mkfs.vfat /dev/sdX1
mkdir boot
mount /dev/sdX1 boot
```

Create and mount ext filesystem
```
mkfs.ext4 /dev/sdX2
mkdir root
mount /dev/sdX2 root
```

Download and extract the root filesystem (as root, not via sudo):
```
wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-2-latest.tar.gz
bsdtar -xpf ArchLinuxARM-rpi-2-latest.tar.gz -C root
sync
```

Move boot files to the first partition:
```
mv root/boot/* boot
```

Unmount the two partitions:
```
umount boot root
```

Insert SD card and power up the Pi

## Login via SSH
- Get the IP assigned to the Pi from the router
- Login as the default user `alarm` with the password `alarm`.
- The default `root` password is `root`.
