Setting up bup
==============

# Problem
Need a system for backups that meet the following requirements:
- Open Source
- Version Control
    - Need to be able to restore to a file version from years ago
- Manage a backup set larger than 500 GB
- Incremental
- Support for secure off-site backup

# Solution
- [bup](https://github.com/bup/bup)

# Process
## Install bup
```
git clone https://github.com/bup/bup

sudo apt-get install pandoc # for manpage
sudo apt-get install python2.7-dev python-fuse
sudo apt-get install python-pyxattr python-pylibacl
sudo apt-get install linux-libc-dev
sudo apt-get install acl attr
sudo apt-get install python-tornado # optional

make
make test
make install DESTDIR=/opt/bup PREFIX=''

ln -s /opt/bup/bin/bup /home/$USER/bin/bup
```

- See [Using bup](https://github.com/bup/bup#using-bup)
