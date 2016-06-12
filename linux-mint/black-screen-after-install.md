Black Screen after Installing Linux Mint
========================================

## Problem
- Black screen on boot
- Fresh install of Linux Mint 17.3 on [laptop]

## Solution
- Hold `SHIFT` on startup to get to the Grub menu [^1].
- Press `e` on the Linux Mint entry to get the full Grub command line
- Add `nomodeset` to the end of the line containing `quiet splash` [^2]
- Press `F10` to reboot using new parameters
    - In my case Linux Mint started in "Compatibility Mode" using the CPU for rendering.
- Install proprietary Radeon `fglrx` graphics drivers using Driver Manager

[laptop]:/laptop.md
[^1]:https://askubuntu.com/questions/16042/how-to-get-to-the-grub-menu-at-boot-time
[^2]:https://community.linuxmint.com/tutorial/view/842
