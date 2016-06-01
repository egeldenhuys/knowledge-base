Start x11vnc server on startup
==============================

Instructions for setting a password and starting x11vnc on startup

##### Setting a password
```
mkdir ~/.x11vnc
x11vnc -storepasswd ~/.x11vnc/passwd
```

##### Creating the log file
`touch ~./x11vnc/x11vnc.log`

##### Starting x11vnc on login
`x11vnc -nap -wait 50 -noxdamage -rfbauth /home/evert/.x11vnc/passwd -display :0 -forever -o /home/evert/.x11vnc/x11vnc.log -bg`

#### Source
https://wiki.archlinux.org/index.php/x11vnc
