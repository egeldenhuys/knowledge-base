VirtualBox Shared Folders
=========================

### Problem:

Added a shared fodler on VirtualBox but the user does not have the permissions required
to view the folder on the guest OS.

### Solution

- See [ring0 (2013-06-07). "I can't change permissions in /media folder" - Superuser.com](http://superuser.com/a/605035)

That directory sf_... is mounted by VirtualBox with type vboxsf 
(ie all operations managed by vbox). You cannot change easily owner or access rights.

The recommend way to allow a user to access the directory is to 
make that user a member of the group vboxsf. To make myuser a member of that group:

`sudo usermod -G vboxsf -a myuser`

Then log out and back in for the changes to take effect.

#### Also see

- ["Why can't I chown a VirtualBox shared directory?" - Superuser.com](http://superuser.com/questions/640027/why-cant-i-chown-a-virtualbox-shared-directory)
- ["Adding user to a group - Why had to reboot? - askubuntu.com](http://askubuntu.com/questions/69221/adding-user-to-a-group-why-had-to-reboot)

