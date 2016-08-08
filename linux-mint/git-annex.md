git-annex
=========

# [Install git-annex](https://git-annex.branchable.com/install/)
- [Download prebuilt linux tarball](https://downloads.kitenet.net/git-annex/linux/current/)
- [Verify download](https://git-annex.branchable.com/install/verifying_downloads/)
- Extract tarball
- Place extracted directory in `/opt`
- Symlink `git-annex` to `git-annex` in bin. (Make accessible on PATH)

# [Setup repository](https://git-annex.branchable.com/walkthrough/)
- Read walkthrough

# [Setup Dropbox as a special remote](https://git-annex.branchable.com/walkthrough/using_special_remotes/)
## Install rclone
- Install [rclone](http://rclone.org/install/)
    - [Download](http://rclone.org/downloads/)
    - Extract
    - Move extracted folder to `/opt`
    - Symlink to `/home/user/bin` or add to PATH

## Install  [git-annex-remote-rclone](https://github.com/DanielDent/git-annex-remote-rclone)
- Clone [repo](https://github.com/DanielDent/git-annex-remote-rclone.git)
- Copy git-annex-remote-rclone into your $PATH

## Configure rclone
- [Configure rclone Dropbox remote](http://rclone.org/dropbox/)
- See the [rclone Options Documentation](http://rclone.org/docs/)

## Configure Dropbox as special remote
- Configure Dropbox as a remote for the repository
    - `git annex initremote <git-annex_remote_name> type=external externaltype=rclone target=<rclone_remote_name> prefix=git-annex chunk-50MiB encryption=shared mac=HMACSHA512 rclone_layout=lower`
    - The initremote command calls out to GPG and can hang if a machine has insufficient entropy. To debug issues, use the `--debug` flag, i.e. `git-annex initremote --debug`
- Dropbox should now be configured as a remote!
