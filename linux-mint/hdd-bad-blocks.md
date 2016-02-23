HDD Bad Blocks
==============


### read-write Test (non-destructive)

```
sudo fdisk -l
sudo badblocks -nsv -o /root/<bad-blocks.txt> /dev/<device>
```

#### References
[badblocks - ArchWiki](https://wiki.archlinux.org/index.php/badblocks)
