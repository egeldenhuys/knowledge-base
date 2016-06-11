Backup Process
==============

This is the current process being used to backup files.

### Tools
- [hashdeep](http://md5deep.sourceforge.net/)

### Process
- 1. A hash function is performed on every file in the backups directory.
If the directory will be added to an archive the hashes are included.

```
hashdeep -c md5 -r [-e] -l * > hashes-<name>-<time-stamp>.txt

-c <alg1,[alg2]> - Compute hashes only. Defaults are MD5 and SHA-256
                   legal values: md5,sha1,sha256,tiger,whirlpool
-r        - recursive mode. All subdirectories are traversed
-e        - compute estimated time remaining for each file
-l        - print relative paths for filenames
```

- 2. When new files have been added to a backup drive an audit can be performed to see the changes

```
hashdeep -c md5 -r [-e] -l -k <path to known hash list> -a -v -v * > audit-<name>-<time-stamp>.txt

-c <alg1,[alg2]> - Compute hashes only. Defaults are MD5 and SHA-256
                   legal values: md5,sha1,sha256,tiger,whirlpool
-r        - recursive mode. All subdirectories are traversed
-e        - compute estimated time remaining for each file
-l        - print relative paths for filenames
-k <file> - add a file of known hashes
-a        - audit mode. Validates FILES against known hashes. Requires -k
-v        - verbose mode. Use again to be more verbose
```

- 3. A log is kept of all the changes to a backup directory.
