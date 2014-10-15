Software
========

## Vim

Vim is a useful console based text editor.

Install `vim` and `vim-gtk` via synaptic

## Tor

[Tor](https://www.torproject.org/) is free software and an open network that helps you 
defend against traffic analysis, a form of network surveillance 
that threatens personal freedom and privacy, confidential business 
activities and relationships, and state security.


## privoxy

[Privoxy](http://www.privoxy.org/) is a non-caching web proxy with advanced filtering 
capabilities for enhancing privacy, modifying web page data 
and HTTP headers, controlling access, and removing ads and other 
obnoxious Internet junk. Privoxy has a flexible configuration 
and can be customized to suit individual needs and tastes. It 
has application for both stand-alone systems and multi-user networks.


## md5deep/hashedeep

Install `md5deep` via Synaptic

[hashdeep](http://md5deep.sourceforge.net/) is a program to compute, match, and audit hashsets.


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

### Installation

`sudo apt-get install conky-all`

### Running & Configuration

To run conky, open a terminal and type: 

```
conky -c <file> &

-c <file> - Path to conky config
&         - The `&` makes the command run in the background.
```

Example: `conky -c ~/.conky/conkymain`

### Start Conky on startup

`System Settings > Startup Programs > Add`

```
Name: Conky
Command: conky -c <config-file>
Comment:
Delay: 30 seconds
```

- See ["Setting Up Conky" - ubuntu.com (Retrieved 2014-10-15)]
(https://help.ubuntu.com/community/SettingUpConky) for setup instructions
- See ["What does “&” at the end of a linux command mean?" - stackoverflow.com]
(https://stackoverflow.com/questions/13338870/what-does-at-the-end-of-a-linux-command-mean)
