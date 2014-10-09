```
1. Log out and fully exit Origin
2. Open your Registry Editor - Type in regedit on the Start Menu Search field and press Enter
3. Navigate through HKEY_LOCAL_MACHINE > SOFTWARE > Wow6432Node > EA Games > Battlefield 4
4. Check if there is a folder named Xpack0 under Battlefield 4
If YES -> Click on Xpack0, on the right pane check if there is a string named Installed, 
the Value data should be True
If NO - right-click on Battlefield 4 > New > Key
- a new folder will be created, name it Xpack0
- right-click on Xpack0 > New > String Value > name it Installed
- on the right-pane, double-click on Installed, set Value Data to True
5. Exit Registry Editor
6. Log in to Origin and Join Second Assualt Maps

Replace 'Xpack0' with the following for each of the other DLC's.
Xpack0 = Second Assault
Xpack1 = China Rising
Xpack2 = Naval Strike
```

## Source:
- POOHSTICK17 (2014-06-27) ["Re: Cant play DLC Second Assault after buying"](http://answers.ea.com/t5/Battlefield-4/Cant-play-DLC-Second-Assault-after-buying/td-p/3045090), post 3.