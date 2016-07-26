Samba Public Share
==================

```
map to guest = Bad User
security = user
guest account = pcguest
$ useradd -c "Guest User" -d /dev/null -s /bin/false pcguest


[Public Share]
path = /path/to/public/share
available = yes
browsable = yes
public = yes
writable = no
```

- https://wiki.archlinux.org/index.php/Samba#Share_files_without_a_username_and_password
