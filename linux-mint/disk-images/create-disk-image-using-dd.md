Create Disk Image Using dd
==========================

- See [Disk cloning - ArchWiki](https://wiki.archlinux.org/index.php/disk_cloning#Create_disk_image)

`dd if=/dev/sda conv=noerror,sync bs=64k of=/mnt/HDD/sda-backup.img`

Save extra information about the drive geometry necessary in order to 
interpret the partition table stored within the image. The most important of which is the cylinder size. 

`fdisk -l /dev/hda > /mnt/sda1/hda_fdisk.info`

- See [dd(1) - Linux man page](http://linux.die.net/man/1/dd)

```
bs=BYTES
    read and write BYTES bytes at a time (also see ibs=,obs=) 
    
conv=CONVS
    convert the file as per the comma separated symbol list
    
    CONVS:
    noerror
        continue after read errors
        
    sync
        pad every input block with NULs to ibs-size; when used with block or unblock, pad with spaces rather than NULs 
        
sync pads the block with nulls if an error occurs so that the offset remains the same.
```

#### View progress of dd

- See [runesvend (2008-10-11) - "[SOLVED] Progress of dd"](http://ubuntuforums.org/showthread.php?t=884093&s=d5cb069471cb3d21607415f33013433f&p=5945589#post5945589)

Find dd psid: `ps -A | grep dd`

Issuing the command `sudo kill -USR1 <dd psid>` makes dd output its status in the terminal where it is running

#### Using the `watch` command

- See [ Peter Leung (2008-06-05) - "Show progress during dd copy" - Linux Commando](http://linuxcommando.blogspot.com/2008/06/show-progress-during-dd-copy.html)

`watch -n 10 kill -USR1 <dd psid>

