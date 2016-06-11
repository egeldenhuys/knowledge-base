File Sharing Force User
=======================

There is a bug in the nautilus-share package as of this writing that 
does not change the username and groupname to your name and group for 
any file that a remote user adds to your share. This makes it impossible
for you to write to that file. Here is a workaround: add the following 
line to the `[global]` section of etc/samba/smb.conf :
`force user = whatever_your_mint_user_name_is`

### Source

[altair4 (2009-03-13). "How To - Simple File Sharing in Mint" - linuxmint.com](http://forums.linuxmint.com/viewtopic.php?f=110&t=23169)
