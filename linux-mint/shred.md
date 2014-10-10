Shred
=====

```
To zero fill a hard drive.

sudo shred -n 0 -z -v /dev/sdc

where -n 0 is the number of passes, 
-z overwrites the data with zeroes, 
-v displays the progress of the operation, 
and /dev/sdc1 is the partition you are overwriting.
```
