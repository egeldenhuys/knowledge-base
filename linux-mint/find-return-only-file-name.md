find - Return Only File Name
============================

### Aim
To only return the name of certain file types

### Solution
`find -name '*.avi' -exec basename {} \; -o -name '*.mp4' -exec basename {} \; -o -name '*.mpg' -exec basename {} \; -o -name '*.mkv' -exec basename {} \; | sort`

### References

- [Silver Moon (2013-08-12). "25 simple examples of Linux find command" - binarytides.com]
(http://www.binarytides.com/linux-find-command-examples/)
- ["sed to remove 1st two characters every line of text file" - unix.com]
(http://www.unix.com/shell-programming-and-scripting/87242-sed-remove-1st-two-characters-every-line-text-file.html)
- ["How to only get file name with linux `find`?" - stackoverflow.com]
(https://stackoverflow.com/questions/5456120/how-to-only-get-file-name-with-linux-find)
- [" Linux / Unix Command: sort" - about.com]
(http://linux.about.com/library/cmd/blcmdl1_sort.htm)
