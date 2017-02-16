Samba User Authentication
=========================

- Create share that can be accessed using username and password
- Allow active user to also access local files
    - Add both users to the same group
    - force group in samba
    - Set permissions on share for group

----

### Create user and configure Samba

- Samba config: `/etc/samba/smb.conf`

#### 1. Create new user account
```
$ sudo useradd --system --no-create-home --shell /sbin/nologin <user>
$ sudo usermod --append --groups sambashare
```

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
    path = path/to/share
    valid users = <user>
    writeable = yes
    force group = sambshare
```

#### 4. Restart samba server
` $ sudo service smbd restart `

### Set file system permissions for user share
```
$ chown -R $USER:sambashare path/to/share
$ chmod -R 775 path/to/share
```

