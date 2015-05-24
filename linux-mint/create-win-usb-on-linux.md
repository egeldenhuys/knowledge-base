Create bootable Windows USB on Linux
====================================

- **Source:** ["Create a Bootable Windows 7 USB Drive in Linux" - thornelabs.net](http://thornelabs.net/2013/06/10/create-a-bootable-windows-7-usb-drive-in-linux.html)

### Partition the USB Drive

`sudo fdisk /dev/sdX`

```
    1. Type p and Enter to print the current partition table. I do this out of habit.
    2. Delete all the current partitions by typing d then Enter for each partition.
    3. Type n and Enter, then type p and Enter, then type 1 and Enter three times to create one new primary partition that uses all available space.
    4. Type t and Enter (Partition 1 is selected because it's the only partition), then type 7 and Enter to change the type to HPFS/NTFS/exFAT.
    5. Type a and Enter, then type 1 and Enter to turn on the Boot flag.
    6. To verify everything worked, type p and Enter and make sure the Boot column has an * set and the Id column is set to 7.
    7. Type w and Enter to write the changes.
```

### Format the New Partition on the USB Drive as NTFS
`sudo mkfs.ntfs -f /dev/sdX1`

### Install ms-sys
You will need ms-sys to write a Master Boot Record (MBR) to the USB drive. 

Download the latest source code from [http://ms-sys.sourceforge.net/#Download](http://ms-sys.sourceforge.net/#Download)

```
tar xvzf ms-sys-2.3.0.tar.gz
cd ms-sys-2.3.0
make
sudo make install
```

### Write Windows 7 Master Boot Record (MBR) to the USB Drive
`sudo ms-sys -7 /dev/sdX`

### Mount the USB drive
```
sudo mkdir -p /mnt/flash

sudo mount /dev/sdX1 /mnt/flash
```

### Mount the Windows 7 ISO
```
sudo mkdir -p /mnt/iso

sudo mount -o loop /tmp/en_windows_7_professional_x64_dvd_X15-65805.iso /mnt/iso
```

### Copy the Contents of the Windows 7 ISO to the USB Drive
`rsync -a /mnt/iso/ /mnt/flash/`

### Unmount the USB Drive
`sudo umount /mnt/flash`

### Boot from the USB Drive
Plugin the USB drive to the computer you want to install Windows 7 on and boot to USB-HDD or USB-ZIP. 

Result:**SUCCESS**
