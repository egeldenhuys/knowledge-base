Zero Fill Drive Using shred
===========================

To zero fill a hard drive.

```
sudo shred -n 0 -z -v /dev/sdx

where -n 0 is the number of passes, 
-z overwrites the data with zeroes, 
-v displays the progress of the operation, 
and /dev/sdx is the partition you are overwriting.
```

- dd can also be used.
