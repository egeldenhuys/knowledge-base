Scan HDD for Bad Blocks
=======================

- Boot Linux Mint from a LiveUSB before running the following commands
- Unmount swap using `sudo swapoff -a` [^1]

## read-write Test (non-destructive)

Scan HDD for bad blocks and output them to a file:
- `sudo badblocks -nsv -o <output file> /dev/sdx`
  - **-n** Use non-destructive read-write mode
  - **-s** show progress-bar
  - **-v** be "verbose" and output bad sectors detected to stdout
  - **-o** output_file

## References
[badblocks - ArchWiki](https://wiki.archlinux.org/index.php/badblocks)
[^1]:https://www.linuxquestions.org/questions/linux-newbie-8/how-to-unmount-actual-swap-and-mount-a-new-bigger-swap-space-190224/
