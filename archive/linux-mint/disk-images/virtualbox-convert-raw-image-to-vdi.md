VirtualBox - convert RAW image to VDI
=====================================

- See [Milosz Galazka (2012-04-29) "VirtualBox - convert RAW image to VDI"](https://blog.sleeplessbeastie.eu/2012/04/29/virtualbox-convert-raw-image-to-vdi-and-otherwise/)

[VirtualBox](http://www.virtualbox.org/) command-line interface (VBoxManage) provides an easy way to convert raw disk image to the VDI/VMDK format and otherwise.

`sudo dd if=/dev/sdx of=./sdx.raw`

To use it in VirtualBox we need to convert it to the VDI format

`VBoxManage convertdd sdx.raw sdx.vdi --format VDI`
