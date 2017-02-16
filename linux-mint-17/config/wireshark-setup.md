Wireshark Setup
===============

## Problem:
Interfaces missing when run as normal user.

## Solution

Extract from **source**:

The instructions from [README.Debian](http://pastebin.com/yk7HKxUR) actually do work (except it's missing the step that tells you to log out and then back in). 
The dpkg-reconfigure command creates the wireshark group (so you don't need to), but then you need to 
add your user to the group, and re-login.
These commands work for me with Wireshark 1.6.2 on Ubuntu Server 11.10 (64-bit):

```
sudo apt-get install wireshark
sudo dpkg-reconfigure wireshark-common 
sudo usermod -a -G wireshark $USER
sudo reboot
```

#### Source:
https://ask.wireshark.org/questions/7523/ubuntu-machine-no-interfaces-listed
