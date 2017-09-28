# Canon Pixma MG2440 Scanner

## Drivers
- https://wiki.archlinux.org/index.php/SANE
- https://en.wikipedia.org/wiki/Scanner_Access_Now_Easy#Simple_Scan

```
sudo pacman -S sane simple-scan
```

Try sudo if it does not work.

## Share scanner over network
- https://wiki.archlinux.org/index.php/SANE#Sharing_your_scanner_over_a_network
- https://wiki.archlinux.org/index.php/SANE
- `man saned`


- https://www.linuxquestions.org/questions/debian-26/printer-scanner-permission-problem-769750/ ?
- https://wiki.archlinux.org/index.php/users_and_groups
- http://pigeonsnest.co.uk/stuff/ubuntu-udev-scanner.html
- https://help.ubuntu.com/community/SaneDaemonTutorial

### Create user to run saned as
```
sudo useradd -r -s /usr/bin/nologin saned
sudo groupadd saned
sudo usermod -a -G lp,scanner,saned saned # Perhaps only lp and saned is required
```

### Systemd
#### /etc/systemd/system/saned.socket
```
[Unit]
Description=saned incoming socket

[Socket]
ListenStream=6566
Accept=yes
MaxConnections=1

[Install]
WantedBy=sockets.target
```

#### /etc/systemd/system/saned@.service
```
[Unit]
Description=Scanner Service
Requires=saned.socket

[Service]
ExecStart=/usr/sbin/saned
User=saned
Group=saned
StandardInput=null
StandardOutput=syslog
StandardError=syslog
Environment=SANE_CONFIG_DIR=/etc/sane.d
# If you need to debug your configuration uncomment the next line and
# change it as appropriate to set the desired debug options
# Environment=SANE_DEBUG_DLL=255 SANE_DEBUG_BJNP=5

[Install]
Also=saned.socket
```

```
sudo systemctl enable saned.socket
sudo systemctl start saned.socket
```

### Other configs
#### /etc/sane.d/saned.conf
```
127.0.0.1
localhost
192.168.1.11

RUN=yes # Perhaps not required
```

#### /etc/udev/rules.d/40-libsane.rules
- Might not be required if we add user to `lp` group

```
SUBSYSTEMS=="usb", ATTRS{idVendor}=="04a9", ATTRS{idProduct}=="176c", ENV{libsane_matched}="yes", GROUP="saned"
```
