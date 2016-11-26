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

6. Copy the boot filesystem
```
rsync --progress -avh tmpDir/boot/* boot/
rm -fr tmpDir/boot/*
```

7. Copy the root filesystem
```
rsync --progress -avh tmpDir/ root/
```

8. Run `sync` to flush the changes to the SD Card

## Troubleshoting
### SD Card suddenly becomes Read-Only
```
rsync: write failed on "/home/evert/root/usr/share/locale/sl/LC_MESSAGES/coreutils.mo": Read-only file system (30)
rsync error: error in file IO (code 11) at receiver.c(389) [receiver=3.1.0]
```

`dmesg`:
```
...
[ 1116.965405] Buffer I/O error on device sdb2, logical block 616006
[ 1116.965410] Buffer I/O error on device sdb2, logical block 616007
[ 1116.965421] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 132141 (offset 0 size 4096 starting block 641870)
[ 1116.965434] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 132125 (offset 0 size 8192 starting block 641872)
...
[ 1116.972620] Aborting journal on device sdb2-8.
...
[ 1116.972631] EXT4-fs (sdb2): ext4_writepages: jbd2_start: 1024 pages, ino 133561; err -30
[ 1116.972641] EXT4-fs (sdb2): ext4_writepages: jbd2_start: 1024 pages, ino 133562; err -30
...
[ 1117.774876] EXT4-fs error (device sdb2): ext4_journal_check_start:56: Detected aborted journal
[ 1117.783182] EXT4-fs error (device sdb2): ext4_journal_check_start:56: Detected aborted journal
```

When this happens, force shutdown and restart the installtion steps. Try a different computer with a SD card reader.
