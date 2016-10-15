Backup Windows Disk from Linux
==============================

1. Enable Administrative remotes on Windows [^1]
2. Mount Windows remote [^2], [^3], [^4]
   - `sudo mount -t cifs //<WINDOWS_IP>/<WINDOWS_DRIVE_LETTER>$ <DESTINATION> -o user=<LOCAL_WINDOWS_USER>,password=<LOCAL_WINDOWS_PASSWORD>,ro,noperm,dir_mode=0775,file_mode=0664,uid=<LINUX_UID>,gid=<LINUX_GID>`
3. Run borg
  
 
[^1]:https://tommynation.com/enable-remote-access-administrative-shares-windows-10/
[^2]:http://unix.stackexchange.com/a/104652
[^3]:https://access.redhat.com/solutions/448263
[^4]:https://kb.iu.edu/d/adwf
