How to enable the F8 key to start Safe Mode in Windows 8
========================================================

1. Open an elevated command prompt
2. Enter `bcdedit /set {default} bootmenupolicy legacy`

To disable the F8 key use `bcdedit /set {default} bootmenupolicy standard`

### Source
[Lawrence Abrams (2013-03-20) "How to enable the F8 key to start Safe Mode in Windows 8" - bleepingcomputer.com](http://www.bleepingcomputer.com/tutorials/enable-the-f8-key-in-windows-8/)
