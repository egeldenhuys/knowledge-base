hashdeep Functions
==================

## Create Hash List

```
hashdeep -c md5 -r [-e] -l * > hashes-<name>-<time-stamp>.txt

-c <alg1,[alg2]> - Compute hashes only. Defaults are MD5 and SHA-256
                   legal values: md5,sha1,sha256,tiger,whirlpool
-r        - recursive mode. All subdirectories are traversed
-e        - compute estimated time remaining for each file
-l        - print relative paths for filenames
```

## Audit

```
hashdeep -c md5 -r [-e] -l -k <known-hashlist> -a -v -v * > audit-<name>-<time-stamp>.txt

-c <alg1,[alg2]> - Compute hashes only. Defaults are MD5 and SHA-256
                   legal values: md5,sha1,sha256,tiger,whirlpool
-r        - recursive mode. All subdirectories are traversed
-e        - compute estimated time remaining for each file
-l        - print relative paths for filenames
-k <file> - add a file of known hashes
-a        - audit mode. Validates FILES against known hashes. Requires -k
-v        - verbose mode. Use again to be more verbose

```
