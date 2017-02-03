Fix Black Screen On Startup
===========================

## Script
Simple script to toggle resolution

`~/bin/fix.sh`

```bash
#!/bin/bash
xrandr --output LVDS --mode 1280x720
xrandr --output LVDS --mode 1366x768
```

## Shortcut
System Settings > Keyboard > Shortcuts > Custom Shortcuts > Add

- Command: `fix.sh`
- Shortcut: `Super + R`
