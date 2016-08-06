Setting up GitHub and git-annex
===============================

# Problem
Have large binary files that cannot be stored on GitHub's servers

# Solution
Use git-annex to store and track location on large files

# Process
## [Install git-annex](https://git-annex.branchable.com/install/)
- [Download prebuilt linux tarball](https://downloads.kitenet.net/git-annex/linux/current/)
- [Verify download](https://git-annex.branchable.com/install/verifying_downloads/)
- Extract tarball
- Place extracted directory in `/opt`
- Symlink `git-annex` to `git-annex` in bin. (Make accessible on PATH)

## [Setup repository](https://git-annex.branchable.com/walkthrough/)
- Read walkthrough

## [Setup Dropbox as a special remote](https://git-annex.branchable.com/walkthrough/using_special_remotes/)
- Install [git-annex-remote-rclone](https://github.com/DanielDent/git-annex-remote-rclone)
    - Install [rclone](http://rclone.org/install/)
        - [Download](http://rclone.org/downloads/)
        - Extract
        - Move extracted folder to `/opt`
        - Symlink to `/home/user/bin` or add to PATH
    - Clone [repo](https://github.com/DanielDent/git-annex-remote-rclone.git)
    - Copy git-annex-remote-rclone into your $PATH
- [Configure rclone Dropbox remote](http://rclone.org/dropbox/)
- See the [rclone Options Documentation](http://rclone.org/docs/)
- Configure Dropbox as a remote for the repository
    - `git annex initremote <set git annex remote name> type=external externaltype=rclone target=<get rclone remote name> prefix=git-annex chunk-50MiB encryption=shared mac=HMACSHA512 rclone_layout=lower`
        - The initremote command calls out to GPG and can hang if a machine has insufficient entropy. To debug issues, use the `--debug` flag, i.e. `git-annex initremote --debug`
- Dropbox should now be configured as a remote!
- You can use `git annex testremote <remote>` to test the remote

## Using GitHub and git-annex with Dropbox as special remote

### Setup Dropbox as public special remote with GitHub
- See [centralized git repository on GitHub tutorial ](https://git-annex.branchable.com/tips/centralized_git_repository_tutorial/on_GitHub/)
- `git annex init 'my laptop'`
- However the public will not be able to access the files using git-annex.
- **Setup public special remote**. We do not want to give the public access to our Dropbox token. So we want to store the annexed file contents unencrypted in the Dropbox public folder.
    - See [publishing your files to the public](https://git-annex.branchable.com/tips/publishing_your_files_to_the_public/)
    - Set remote for push access:
        - `git annex initremote <set git annex remote name> type=external externaltype=rclone target=<get rclone remote name> prefix=Public/git-annex/<repo name> chunk-50MiB encryption=none mac=HMACSHA512 rclone_layout=nodir`
    - Note that we used `rclone_layout=nodir`. This is so we can easily access all files in the public folder.
    - Once you have the special remote set up on your laptop, you can send files to it. See above links for information.
    - **TODO: Make sure public cannot push to my special remote!**
    - Copy files to special remote with `git annex copy --to <remote_name> <files>`

### Adding the Dropbox Public URLs as sources
- Links can be accessed with `https://dl.dropboxusercontent.com/u/57022080/<path_to_annex_folder>/<key>`

Assuming all files in the current directory are available on the public special remote, this will register the public url for the file in git-annex, making it available for everyone _through git-annex_:

```bash
git annex find --in dropbox-public | while read file ; do
  key=$(git annex lookupkey $file)
  echo $key https://dl.dropboxusercontent.com/u/57022080/git-annex/git-annex-public-test_2/$key
done | git annex registerurl
```

- **TODO: Test cloning using a public perspective**
