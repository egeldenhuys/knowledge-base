# Installing Arch Arm on SD Card for Pi 3 B

Adapted from https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-3

1. Start fdisk to partition the SD card:
```
fdisk /dev/sdX
```

2. At the fdisk prompt, delete old partitions and create a new one: 
  1. Type **o**. This will clear out any partitions on the drive.
  2. Type **p** to list partitions. There should be no partitions left.
  3. Type **n**, then **p** for primary, 1 for the first partition on the drive, press **ENTER** to accept the default first sector, then type **+100M** for the last sector.
  4. Type **t**, then **c** to set the first partition to type W95 FAT32 (LBA).
  5. Type **n**, then **p** for primary, 2 for the second partition on the drive, and then press **ENTER twice** to accept the default first and last sector.
  6. Write the partition table and exit by typing **w**.
  
3.  Create and mount the FAT filesystem:
```
mkfs.vfat /dev/sdX1
mkdir boot
mount /dev/sdX1 boot
```

4. Create and mount the ext4 filesystem:

```
mkfs.ext4 /dev/sdX2
mkdir root
mount /dev/sdX2 root
```

5. Download and extract the root filesystem (as root, not via sudo):
```
wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-2-latest.tar.gz
su root
mkdir tmpDir
bsdtar -xkpf ArchLinuxARM-rpi-2-latest.tar.gz -C tmpDir
```

6. Cope the boot filesystem
```
rsync --progress -v -h tmpDir/boot/* boot/
rm -fr tmpDir/boot/*
```

7. Copy the root filesystem
```
rsync --progress -v -h tmpDir/ root/
```

8. Run `sync` to flush the changes to the SD Card

## Troubleshoting
### SD Card suddenly becomes Read-Only
- Check `dmesg | tail`
- Restart the installation steps
