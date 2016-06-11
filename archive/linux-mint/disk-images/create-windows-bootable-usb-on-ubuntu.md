Create Windows bootable USB on Ubuntu/Linux Mint
================================================

Create a bootable Windows USB from Ubuntu through [WinUSB](http://en.congelli.eu/prog_info_winusb.html) software.

Run the below commands on terminal to install WinUSB from a [PPA](https://launchpad.net/~colingille/+archive/freshlight/)
```
sudo add-apt-repository ppa:colingille/freshlight
sudo apt-get update
sudo apt-get install winusb
```
![WinUsb](https://googledrive.com/host/0Bx-d6G8hYwBPRzVRMENISm1qUHM/images/winusb.png)

## Notes

Received an error the first time. Used GParted to create a `msdos` partition table and a fat32 partition.

----
[Avinash Raj (Nov 24 2013 at 13:05) "How can I create a Windows bootable USB stick with Ubuntu?"](http://askubuntu.com/a/381560)
