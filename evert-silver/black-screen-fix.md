# Black Screen fix for AMD Radeon HD 6xxx M/G on Linux

## Problem
Black screen on startup when the proprietary drivers are not installed.

## Solution
- Change resolution on startup

### Implementation

#### fix.sh
```
#!/bin/bash
xrandr --output LVDS --mode 1280x720
xrandr --output LVDS --mode 1366x768

echo Fix at $(date) >> /home/evert/fix_log.txt
```

- `chmod +x fix.sh`

#### /etc/rc.local
```
...

sh /evert/home/fix.sh
exit 0
```
