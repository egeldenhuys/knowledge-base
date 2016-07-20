Scan HDD for Bad Blocks
=======================

## read-write Test (non-destructive)

Scan HDD for bad blocks and output them to a file:
- `sudo badblocks -nsv -o <output file> /dev/sdx`
  - **-n** Use non-destructive read-write mode
  - **-s** show progress-bar
  - **-v** be "verbose" and output bad sectors detected to stdout
  - **-o** output_file

## References
[badblocks - ArchWiki](https://wiki.archlinux.org/index.php/badblocks)
