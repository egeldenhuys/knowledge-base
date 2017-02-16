Setting up Linux Mint
=====================

This document describes the steps taken to set up a new Linux Mint Installation.

## Graphics Drivers
On first boot install the graphics drivers to avoid the [black screen] problem.

- Install proprietary Radeon `fglrx` graphics drivers using Driver Manager

## Install Packages

Install updates using `Mint Update Manager`

### Base

`vim vim-gtk unetbootin conky-all gparted wine x11vnc codeblocks g++ md5deep wireshark zenmap gddrescue git`

### Extra

- `nemo-dropbox clamav clamav-freshclam`
- `virtualbox-nonfree`
- atom

## Configure Packages

### Dropbox
- Copy existing Dropbox folder to ~/Dropbox
- Start Dropbox and merge with existing folder

### ClamAV
- `sudo freshclam`
- `sudo dpkg-reconfigure clamav-freshclam` to change to manual update mode

### Firefox Plugins
- Tab Mix Plus
- HTTPS Everywhere
- DownThemAll

### Theme
- Change theme to `Cinnamon`
- Change Background

[black screen]:/black-screen-after-install.md
