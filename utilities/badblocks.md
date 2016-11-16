Scan HDD for Bad Blocks
=======================

- Scanned device cannot be scanned while mounted.
  - Boot from a LiveUSB
- Unmount swap using `sudo swapoff -a` [^1]

## read-write Test (non-destructive)

Scan HDD for bad blocks and output them to a file:
- `sudo badblocks -nsv -o <output file> /dev/sdx`
```
       -n     Use non-destructive read-write mode.
       -s     Show  the  progress  of the scan by writing out rough percentage
              completion of the current badblocks pass over  the  disk.
       -v     Verbose mode.
       -o output_file
              Write the list of bad blocks to  the  specified  file.
```

## References
[badblocks - ArchWiki](https://wiki.archlinux.org/index.php/badblocks)
[^1]:https://www.linuxquestions.org/questions/linux-newbie-8/how-to-unmount-actual-swap-and-mount-a-new-bigger-swap-space-190224/
