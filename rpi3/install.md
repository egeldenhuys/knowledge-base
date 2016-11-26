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
rsync --progress -avh --bwlimit=1000 tmpDir/boot/* boot/
rm -fr tmpDir/boot/*
```

7. Copy the root filesystem
```
rsync --progress -avh --bwlimit=1000 tmpDir/ root/
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

### Some more dmesg output
```
[  440.234169] blk_update_request: I/O error, dev sdb, sector 34105
[  560.071358] usb 1-3: reset high-speed USB device number 6 using ehci-pci
[  562.285914] sd 6:0:0:0: [sdb] FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_SENSE
[  562.285930] sd 6:0:0:0: [sdb] Sense Key : Unit Attention [current]
[  562.285939] sd 6:0:0:0: [sdb] Add. Sense: Not ready to ready change, medium may have changed
[  562.285944] sd 6:0:0:0: [sdb] CDB: 
[  562.285949] Write(10): 2a 00 00 07 ef 80 00 00 f0 00
[  562.285967] blk_update_request: I/O error, dev sdb, sector 520064
[  562.285981] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65038)
[  562.285989] Buffer I/O error on device sdb2, logical block 39152
[  562.286000] Buffer I/O error on device sdb2, logical block 39153
[  562.286005] Buffer I/O error on device sdb2, logical block 39154
[  562.286009] Buffer I/O error on device sdb2, logical block 39155
[  562.286014] Buffer I/O error on device sdb2, logical block 39156
[  562.286018] Buffer I/O error on device sdb2, logical block 39157
[  562.286022] Buffer I/O error on device sdb2, logical block 39158
[  562.286026] Buffer I/O error on device sdb2, logical block 39159
[  562.286031] Buffer I/O error on device sdb2, logical block 39160
[  562.286035] Buffer I/O error on device sdb2, logical block 39161
[  562.286445] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65098)
[  562.286503] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65128)
[  562.286543] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65158)
[  562.286581] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65188)
[  562.286616] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65218)
[  562.286653] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65248)
[  562.286690] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65278)
[  562.286725] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65308)
[  562.286760] EXT4-fs warning (device sdb2): ext4_end_bio:317: I/O error -5 writing to inode 261051 (offset 16777216 size 2359296 starting block 65338)
[  562.287266] Aborting journal on device sdb2-8.
[  562.287303] EXT4-fs (sdb2): Delayed block allocation failed for inode 261051 at logical offset 4992 with max blocks 1024 with error 30
[  562.287315] EXT4-fs error (device sdb2) in __ext4_new_inode:880: Journal has aborted
[  562.287333] EXT4-fs (sdb2): This should not happen!! Data will be lost
[  562.287333] 
[  562.287343] EXT4-fs error (device sdb2) in ext4_writepages:2421: Journal has aborted
[  562.769777] EXT4-fs error (device sdb2) in ext4_create:2247: Journal has aborted
[  562.777461] EXT4-fs error (device sdb2): ext4_journal_check_start:56: Detected aborted journal
[  562.777480] EXT4-fs (sdb2): Remounting filesystem read-only
```
