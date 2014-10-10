Shred
=====

shred - overwrite a file to hide its contents, and optionally delete it

```
To zero fill a hard drive.

sudo shred -n 0 -z -v /dev/sdx

where -n 0 is the number of passes, 
-z overwrites the data with zeroes, 
-v displays the progress of the operation, 
and /dev/sdx is the partition you are overwriting.
```
