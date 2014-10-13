Software
========

## Vim
[Vim](http://www.vim.org/index.php) is a highly configurable text 
editor built to enable efficient text editing. It is an improved version 
of the vi editor distributed with most UNIX systems.

Vim is often called a "programmer's editor," and so useful for programming 
that many consider it an entire IDE. It's not just for programmers, though. 
Vim is perfect for all kinds of text editing, from composing email to editing 
configuration files. 

#### Installation
`sudo apt-get install vim`

#### Tips
**[How to make vim paste from (and copy to) system's clipboard?]
(https://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard)**


Be aware that copying/pasting from the system clipboard will not work if :echo has('clipboard') returns 0. In this case, vim is not compiled with the +clipboard feature and you'll have to install a different version or recompile it. Some linux distros supply a minimal vim installation by default, but generally if you **install the vim-gtk package** you can get the extra features.

## Tor

[Tor](https://www.torproject.org/) is free software and an open network that helps you 
defend against traffic analysis, a form of network surveillance 
that threatens personal freedom and privacy, confidential business 
activities and relationships, and state security.


## shred

shred - overwrite a file to hide its contents, and optionally delete it

```
To zero fill a hard drive.

sudo shred -n 0 -z -v /dev/sdx

where -n 0 is the number of passes, 
-z overwrites the data with zeroes, 
-v displays the progress of the operation, 
and /dev/sdx is the partition you are overwriting.
```

dd can also be used.


## privoxy

[Privoxy](http://www.privoxy.org/) is a non-caching web proxy with advanced filtering 
capabilities for enhancing privacy, modifying web page data 
and HTTP headers, controlling access, and removing ads and other 
obnoxious Internet junk. Privoxy has a flexible configuration 
and can be customized to suit individual needs and tastes. It 
has application for both stand-alone systems and multi-user networks.


## hashdeep

[hashdeep](http://md5deep.sourceforge.net/) is a program to compute, match, and audit hashsets.

#### Create hashes

```
hashdeep -c md5 -r [-e] -l * > hashes-<name>-<time-stamp>.txt

-c <alg1,[alg2]> - Compute hashes only. Defaults are MD5 and SHA-256
                   legal values: md5,sha1,sha256,tiger,whirlpool
-r        - recursive mode. All subdirectories are traversed
-e        - compute estimated time remaining for each file
-l        - print relative paths for filenames
```

#### Audit

````
hashdeep -c md5 -r [-e] -l -k <path to known hash list> -a -v -v * > audit-<name>-<time-stamp>.txt

-c <alg1,[alg2]> - Compute hashes only. Defaults are MD5 and SHA-256
                   legal values: md5,sha1,sha256,tiger,whirlpool
-r        - recursive mode. All subdirectories are traversed
-e        - compute estimated time remaining for each file
-l        - print relative paths for filenames
-k <file> - add a file of known hashes
-a        - audit mode. Validates FILES against known hashes. Requires -k
-v        - verbose mode. Use again to be more verbose
````


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

- See [Setting Up Conky](https://help.ubuntu.com/community/SettingUpConky) for setup instructions

#### My Conky config

![Conky Config Image](https://googledrive.com/host/0Bx-d6G8hYwBPenBrNFZnY0ZnMmM/conky-config.png)


```
# conky configuration
#
# The list of variables has been removed from this file in favour
# of keeping the documentation more maintainable.
# Check http://conky.sf.net for an up-to-date-list.
#
# For ideas about how to modify conky, please see:
# http://crunchbanglinux.org/forums/topic/59/my-conky-config/
#
# For help with conky, please see:
# http://crunchbanglinux.org/forums/topic/2047/conky-help/
#
# Enjoy! :)
##############################################
#  Settings
##############################################
 background yes
    use_xft yes
    xftfont HandelGotD:size=8
    xftalpha 0.5
    update_interval 1.0
    total_run_times 0
    own_window yes
    own_window_type normal
    own_window_transparent yes
    own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
    double_buffer yes
    minimum_size 200 5
    maximum_width 220
    draw_shades no
    draw_outline no
    draw_borders no
    draw_graph_borders yes
    default_color grey
    default_shade_color red
    default_outline_color green
    alignment top_right
    gap_x 5
    gap_y 5
    no_buffers yes
    uppercase no
    cpu_avg_samples 2
    override_utf8_locale no

TEXT
${font sans-serif:bold:size=8}SYSTEM ${hr 2}
${font sans-serif:normal:size=8}$sysname $kernel $alignr $machine
Host:$alignr$nodename
Uptime:$alignr$uptime
File System: $alignr${fs_type}

${font sans-serif:bold:size=8}PROCESSORS ${hr 2}
${font sans-serif:normal:size=8}${cpugraph cpu0 33ffff 0000ff}

CPU  : ${cpu cpu0}% ${cpubar cpu0}
CPU1: ${cpu cpu1}% ${cpubar cpu1}
CPU2: ${cpu cpu2}% ${cpubar cpu2}
CPU3: ${cpu cpu3}% ${cpubar cpu3}
CPU4: ${cpu cpu4}% ${cpubar cpu4}

${font sans-serif:bold:size=8}MEMORY ${hr 2}
${font sans-serif:normal:size=8}RAM $alignc $mem / $memmax $alignr $memperc%
$membar

SWAP $alignc ${swap} / ${swapmax} $alignr ${swapperc}%
${swapbar}

${font sans-serif:bold:size=8}DISKS ${hr 2}
${font sans-serif:normal:size=8}/ $alignc ${fs_used /} / ${fs_size /} $alignr ${fs_used_perc /}%
${fs_bar /}

${font sans-serif:bold:size=8}NETWORK ${hr 2}
${font sans-serif:normal:size=8}IP address: $alignr ${addr wlan0}
ESSID: $alignr ${wireless_essid wlan0}
Connection quality: $alignr ${wireless_link_qual_perc wlan0}%
${downspeedgraph wlan0 99cc33 006600}
DLS: ${downspeed wlan0} $alignr total: ${totaldown wlan0}
${upspeedgraph wlan0  ffcc00 ff0000}
ULS: ${upspeed wlan0} $alignr total: ${totalup wlan0}
```
