#!/bin/bash
printf "Preparing to configure nemo...\n"
set -e

printf "Installing dconf-cli...\n"
sudo apt-get install dconf-cli

printf "Setting nemo preferences...\n"
dconf write /org/nemo/preferences/default-folder-viewer "'list-view'"
dconf write /org/nemo/preferences/show-new-folder-icon-toolbar "true"
dconf write /org/nemo/preferences/show-open-in-terminal-toolbar "true"
dconf write /org/nemo/preferences/close-device-view-on-device-eject "true"
dconf write /org/nemo/preferences/show-advanced-permissions "true"
dconf write /org/nemo/preferences/show-hidden-files "true"
dconf write /org/nemo/preferences/show-reload-icon-toolbar "true"
dconf write /org/nemo/preferences/thumbnail-limit "1048576"
dconf write /org/nemo/preferences/show-icon-text "'local_only'"

printf "Finished configuring nemo.\n"
