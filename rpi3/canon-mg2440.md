# Installing Canon Pixma MG2440 Printer on Raspberry Pi 3 B

## Install Driver from Canon
- Download source: https://dl.dropboxusercontent.com/u/57022080/mirror/cnijfilter-source-4.00-1.tar.gz
- Compile some something. TODO: What are we compiling?

```
cd pstocanonij
./autogen.sh --prefix=/usr --enable-progpath=/usr/local/bin
make
make install
``` 

## Install and configure CUPS and gutenprint
'''
pacman -S cups gutenprint
usermod -a G sys <USER> #So user can admin the CUPS server

add Allow @local to cupsd/conf?
'''

See
- http://www.penguintutor.com/linux/printing-cups
- https://wiki.archlinux.org/index.php/CUPS/Troubleshooting#Printers_are_not_present_in_the_print_dialog_for_GTK3_applications
- https://wiki.archlinux.org/index.php/fonts#Font_packages
