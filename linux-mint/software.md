Software
========

## Vim
[www.vim.org](http://www.vim.org/)

Vim is a useful console based text editor.

`sudo apt-get install vim`

Optionally also install `vim-gtk` for clipboard

## Tor
[https://www.torproject.org/](https://www.torproject.org/)

[Download](https://www.torproject.org/download/download-easy.html.en)

[Tor](https://www.torproject.org/) is free software and an open network that helps you 
defend against traffic analysis, a form of network surveillance 
that threatens personal freedom and privacy, confidential business 
activities and relationships, and state security.


## privoxy

[www.privoxy.org](http://www.privoxy.org/)

[Privoxy](http://www.privoxy.org/) is a non-caching web proxy with advanced filtering 
capabilities for enhancing privacy, modifying web page data 
and HTTP headers, controlling access, and removing ads and other 
obnoxious Internet junk. Privoxy has a flexible configuration 
and can be customized to suit individual needs and tastes. It 
has application for both stand-alone systems and multi-user networks.


## md5deep/hashedeep

`sudo apt-get install md5deep`

[md5deep/hashdeep](http://md5deep.sourceforge.net/) is a program to compute, match, and audit hashsets.


## GnuPG

[GnuPG](https://www.gnupg.org/) is a complete and free implementation of the OpenPGP 
standard as defined by RFC4880 (also known as PGP). GnuPG 
allows to encrypt and sign your data and communication, 
features a versatile key management system as well as access 
modules for all kinds of public key directories. GnuPG, 
also known as GPG, is a command line tool with features for 
easy integration with other applications. A wealth of frontend 
applications and libraries are available. Version 2 of GnuPG 
also provides support for S/MIME and Secure Shell (ssh).


## Dropbox

[Dropbox](https://www.dropbox.com/) is a file hosting service operated by Dropbox, Inc. that offers cloud storage, 
file synchronization, personal cloud, and client software.


## Conky

Conky is a free, light-weight system monitor for X, that displays any information on your desktop.

`sudo apt-get install conky-all`

To run conky, open a terminal and type: 

```
conky -c <file> &

-c <file> - Path to conky config
&         - The `&` makes the command run in the background.
```

Example: `conky -c ~/.conky/conkymain`

##### Start Conky on startup

`System Settings > Startup Programs > Add`

```
Name: Conky
Command: conky -c /home/evert/.conky/conkymain
Comment:
Delay: 0 seconds
```

- See ["Setting Up Conky" - ubuntu.com (Retrieved 2014-10-15)]
(https://help.ubuntu.com/community/SettingUpConky) for setup instructions
- See ["What does “&” at the end of a linux command mean?" - stackoverflow.com]
(https://stackoverflow.com/questions/13338870/what-does-at-the-end-of-a-linux-command-mean)
