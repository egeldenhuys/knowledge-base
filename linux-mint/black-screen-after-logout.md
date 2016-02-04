Black Screen After Logout
=========================

In the past, some drivers (notably Intel's) made the X server crash when trying to regenerate the X session at logout. In essence, instead of shutting down X and starting it again, it tries to reuse the same process to save time and resources. If so, I think there will be a crash backtrace in /var/log/kdm.log.

You can disable this resetting behavior in /etc/kde4/kdm/kdmrc by finding the TerminateServer=true line and uncommenting it.

```
# Restart instead of resetting the local X-server after session exit.
# Use it if the server leaks memory etc.
# Default is false
TerminateServer=true
```

Use whichever text editor you're comfortable with.

To do it all from the terminal;

```
$ FILE=/etc/kde4/kdm/kdmrc
$ sudo cp $FILE ${FILE}.orig
$ sudo sed -ie 's/\#TerminateServer/TerminateServer/g' $FILE
```

#### Source
http://ubuntuforums.org/showthread.php?t=1665405&p=10349427#post10349427
