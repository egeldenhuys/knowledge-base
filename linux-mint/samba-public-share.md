Samba Public Share
==================

- Create a public samba share that can be accessed without a username and password
- [Share files without a username and password - ArchWiki](https://wiki.archlinux.org/index.php/Samba#Share_files_without_a_username_and_password)

----

#### 1. Samba config
`/etc/samba/smb.conf`:
```
[Global]
map to guest = Bad User
security = user
guest account = sambaguest

[Public Share]
path = /path/to/public/share
available = yes
browsable = yes
public = yes
writable = no
```

#### 2. Create guest user
$ useradd -c "Guest User" -d /dev/null -s /bin/false sambaguest

#### 3. Restart samba server
` $ sudo service smbd restart `
