Create Linux Mint Live USB
==========================

## [Download]
1. Download Linux Mint ISO
2. Download `sha256sum.txt` from a mirror
3. Download `sha256sum.txt.gpg` from a mirror

## [Verify]

### Signing key for Linux Mint 18
```
Key ID                    4096R/A25BAE09 2016-06-07
Fingerprint	           27DE B156 44C6 B3CF 3BD7 D291 300F 846B A25B AE09
UID	                   Linux Mint ISO Signing Key
Import from Keyserver	 gpg --recv-key A25BAE09
```

### Signing key for previous releases
```
Key ID	                 1024D/0FF405B2 2009-04-29
Fingerprint	            E1A3 8B8F 1446 75D0 60EA 666F 3EE6 7F3D 0FF4 05B2
UID	                    Clement Lefebvre (Linux Mint Package Repository v1)
Import from Keyserver	  gpg --recv-key 0FF405B2
```

### Steps to verify an ISO image
The following steps should be performed to verify an ISO image:

- Import the signing key from a Keyserver (see above).
- Verify its fingerprint with the following command:
    - `gpg --list-keys --with-fingerprint`
- Download the ISO image, the sha256sum.txt and the sha256sum.txt.gpg into the same directory.
- Verify the signature on the sha256sum files with the following command (the output of this command should mention that the signature is "Good"):
    - `gpg --verify sha256sum.txt.gpg sha256sum.txt`
- Once this is done, the sha256sum.txt can be trusted.
- Generate the sha256 sum of your ISO image, and compare it to the sum present in the sha256sums.txt file.
    - `sha256sum -b yourisoimagefile.iso`
- If the signature was "Good" and the sha256 sums match, you successfully verified the integrity and authenticity of the ISO image.


## [BIOS and UEFI Bootable USB]
### Using dd
`$ sudo dd bs=4M if=/path/to/linuxmint.iso of=/dev/sdx && sync`


[Download]:https://www.linuxmint.com/download.php
[Verify]:https://linuxmint.com/verify.php
[BIOS and UEFI Bootable USB]:https://wiki.archlinux.org/index.php/USB_flash_installation_media#Using_dd
