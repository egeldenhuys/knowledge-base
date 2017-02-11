# Post-Install
 - From https://wiki.archlinux.org/index.php/installation_guide

### Generate fstab
`genfstab -U /mnt >> /mnt/etc/fstab`

### Configure system language
- `/etc/locale.gen`
	- Uncomment `en_US.UTF-8 UTF-8`
	- `locale-gen`


- `/etc/locale.conf`
	- Add `LANG=en_US.UTF-8`

### Set Time zone
`ln -sf /usr/share/zoneinfo/Africa/Harare /etc/localtime`

### Hostname
- `/etc/hostname`
	- Add `<hostname>`


- `/etc/hosts`
    - Add `127.0.1.1	myhostname.localdomain	myhostname`

### Static IP
Using `systemd-networkd`

- `/etc/systemd/network/eth0.network`

```
[Match]
Name=enp1s0

[Network]
Address=192.168.1.5/24
Gateway=192.168.1.1
```

- `systemctl restart systemd-networkd.service`

### SSH Public Key Authentication
```
ssh-keygen
ssh-copy-id username@remote_host
```

- `/etc/ssh/sshd_config`

```
AllowUsers john
PasswordAuthentication no
```

- `systemctl restart sshd`
