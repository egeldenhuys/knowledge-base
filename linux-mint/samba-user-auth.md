Samba User Authentication
=========================

Create a share that only the specified user account can access.

----

- Samba config: `/etc/samba/smb.conf'

#### 1. Create new user account
`$ sudo useradd --system --no-create-home --shell /sbin/nologin <user>`

#### 2. Add the user to the samba database
`$ sudo smbpasswd -a <user>`

#### 3. Enable User-Level Security Mode,Encrypted passwords
```
[global]
    security = user
    encrypt passwords = yes
```

#### 3. Create the user share
```
[my-share]
    comment = Bob's shared folder
    path = path/to/bob
    valid users = <user>
    writeable = yes
```

#### 4. Restart samba server
` $ sudo service smbd restart `
