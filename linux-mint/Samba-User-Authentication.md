Samba User Authentication
=========================

**1. Add the user to the samba database**
```
$ smbpasswd -a <user>
New SMB password: ********
Retype SMB password: *******
````

**2. Enable User-Level Security Mode. Enable Encrypted passwords**
```
[global]
    security = user
    encrypt passwords = yes
```

**3. Add the user to a share**
```
[my-share]
    comment = Bob's shared folder
    path = path/to/bob
    valid users = bob
    writeable = yes
```

**4. Guest access**
```
[public]
    comment = Public files
    path = path/to/guest
    guest ok = yes
    guest account = ftp
    guest only = yes
```

**5. Restart samba server**
```
$ sudo service smbd restart
```