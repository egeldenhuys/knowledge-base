sshfs
=====

You can use sshfs to mount a remote system - accessible via SSH - to a local folder, so you will be able to do any operation on the mounted files with any tool (copy, rename, edit with vim, etc.). 

`sshfs sessy@mycomputer:/remote/path /local/path -C -p 9876 -o allow_other,follow_symlinks,indentiftyfile=/home/user/.ssh/privateKey`
