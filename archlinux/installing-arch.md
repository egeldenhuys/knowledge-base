Installing Archlinux
====================

#### Aim:
Install Archlinux and set it up to replace Linux Mint using [Archlinux Beginners' guide](https://wiki.archlinux.org/index.php/Beginners'_guide)

#### 1. [Verify ISO Signature](https://wiki.archlinux.org/index.php/GnuPG#Verify_a_signature)
`$ gpg --verify archlinux-<version>-dual.iso.sig`

#### 2. [Create BIOS and UEFI Bootable USB](https://wiki.archlinux.org/index.php/USB_flash_installation_media#Using_dd)
`# dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync`
