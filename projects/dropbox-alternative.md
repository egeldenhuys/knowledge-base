# Dropbox Alternative

## Problem
- Dropbox is no longer providing an acceptable service.
- Google Drive client is also not providing acceptable service.
- John Bucket wants to steal my data

## Requirements
- Delta transfers
- Direct access to files
- Able to manage 300 GB (300K+ files) of data
- Free
- Open Source
- Selective sync for offline access
- Download/Upload files using web interface
- Access files stored on server through internet
- Share files with the public
- Access files from Android, Linux and Windows
- Hosted on RPI 3
- Files locally hosted
- Complete file version history
- Able to use Borg to take encrypted snapshots and store them in the cloud

## Software Reviews

### Dropbox
- Delta transfers
- Direct access to files
- ~~Able to manage 300 GB (300K+ files) of data~~
- ~~Free~~
- ~~Open Source~~
- Selective sync for offline access
- Download/Upload files using web interface
- Access files stored on server through internet
- Share files with the public
- Access files from Android, Linux and Windows
- ~~Hosted on RPI 3~~
- ~~Files locally hosted~~
- ~~Complete file version history
- Able to use Borg to take encrypted snapshots and store them in the cloud

#### Conclusion
- Not suitable for use. Free storage is only 10 GB (on my account)

### Syncthing
- Delta transfers
- Direct access to files
- Able to manage 300 GB (300K+ files) of data
- Free
- Open Source
- ~~Selective sync for offline access~~ Only partial, requires 2-way setup
- ~~Download/Upload files using web interface~~
- Access files stored on server through internet
- ~~Share files with the public~~
- Access files from Android, Linux and Windows
- Hosted on RPI 3
- Files locally hosted
- Complete file version history
- Able to use Borg to take encrypted snapshots and store them in the cloud

#### Conclusion
- Only partial solution. 
- Unable to access files without downloading entire folder
- Lack of public sharing

### OwnCloud (Not Tested)
- ~~Delta transfers~~
- ~~Direct access to files~~
- Able to manage 300 GB (300K+ files) of data
- Free
- Open Source
- Selective sync for offline access
- Download/Upload files using web interface
- Access files stored on server through internet
- Share files with the public
- Access files from Android, Linux and Windows
- Hosted on RPI 3
- Files locally hosted
- Complete file version history
- ~~Able to use Borg to take encrypted snapshots and store them in the cloud~~

#### Conclusion
- Not suitable
- No delta transfer
- Requires setup of databases and LAMP

### git-annex
- Delta transfers
- Direct access to files
- ~~Able to manage 300 GB (300K+ files) of data~~ Need to use multiple repos
- Free
- Open Source
- Selective sync for offline access
- ~~Download/Upload files using web interface~~
- ~~Access files stored on server through internet~~ Not directly
- ~~Share files with the public~~ 
- Access files from Android, Linux and Windows
- Hosted on RPI 3
- Files locally hosted
- Complete file version history
- Able to use Borg to take encrypted snapshots and store them in the cloud

#### Conclusion
- Not suitable
- Unable to handle large number of files

## Overall Conclusion
Currently Syncthing comes closest to solving the problem, however the following issues need to be addressed:
- Access files without downloading (Web interface / SSHFS / SFTP)
- Share files with the public (HTTPS)
