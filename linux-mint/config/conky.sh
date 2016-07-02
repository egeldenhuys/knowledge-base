#!/bin/bash
printf "Preparing to configure conky...\n"
set -e

printf "Installing conky-all...\n"
sudo apt-get install conky-all

printf "Downloading conky config\n"

set +e
mkdir ~/.conky
set -e

wget "https://gist.githubusercontent.com/egeldenhuys/272af2e6ad177e166165f1e267898f36/raw/bb7c28a4bfec76527b1bba2298ccec63ba044f5a/conkywifi" -O ~/.conky/conkywifi

printf "Creating auto start...\n"

printf "[Desktop Entry]\n\
Type=Application\n\
Exec=conky -c ~/.conky/conkywifi\n\
X-GNOME-Autostart-enabled=true\n\
NoDisplay=false\n\
Hidden=false\n\
Name[en_ZA]=conky\n\
Comment[en_ZA]=Conky Wifi\n\
X-GNOME-Autostart-Delay=5\n" | tee ~/.config/autostart/conky.desktop


printf "Starting conky...\n"
conky -c ~/.conky/conkywifi &> /dev/null &

