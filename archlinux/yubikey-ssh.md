# Move SSH key to Yubikey

https://www.esev.com/blog/post/2015-01-pgp-ssh-key-on-yubikey-neo/
https://github.com/drduh/YubiKey-Guide
https://wiki.archlinux.org/index.php/GnuPG#Start_gpg-agent_with_systemd_user

```
sudo pacman -S yubikey-personalization-gui
ykpersonalize -m86 # Set CCID mode
gpg2 --expert --full-generate-key

```
