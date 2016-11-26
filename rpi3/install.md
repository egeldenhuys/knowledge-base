# Installing Arch Arm on SD Card for Pi 3 B

- Follow steps 1- 4 from [here](https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-3)

Step 5. Download and extract the root filesystem (as root, not via sudo):
```
wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-2-latest.tar.gz
su root
mkdir tmpDir
bsdtar -xkpf ArchLinuxARM-rpi-2-latest.tar.gz -C tmpDir

# Locks SD Card!
# mv tmpDir/boot/* boot/
# mv tmpDir/ root/

rsync --progress -v -h tmpDir/boot/* boot/
rm -fr tmpDir/boot/*

rsync --progress -v -h tmpDir/ root/
sync
```
