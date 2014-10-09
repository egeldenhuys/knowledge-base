> The AVG Free version includes multiple buttons/tiles you can click
> - some on the main interface and some on a drop-down Notification panel.

> But many of these are not features of the AVG Free version 
> - instead they open all sorts of adverts and sales pitches for non-free upgrades and addons. 

> I find this very annoying and it also confuses many inexperienced users into upgrading or buying extra options. 
> It is possible to remove these advertising buttons - but previously posted methods no longer work. 

> This is a summary of the current working fixes.
> This has been tested as of December 2013 and has no apparent side-effects

> The quickest way to disable the Notification Panel and Advertising Tiles in AVG Free 2013/2014

> 1. Disable AVG self protection:
> Right click the AVG icon in the taskbar (near the clock) 
> Select to Temporarily Disable AVG Protection
> Agree the default timeout - usually 10 minutes?​
> 2. Open My Computer or Windows Explorer and Navigate to:
> C:\Program Files\AVG\AVG201x\ ...... for 32bit systems (201x means 2013 or 2014)
> C:\Program Files (x86)\AVG\AVG201x\ for 64bit systems​
> 3. Delete the following three folders: Awacs, Banners, Tuneup
> Do not delete anything else you see inside the AVG201x folder.
> If you accidentally delete anything else go to the recycle bin and restore it.
> Note: If you have already paid for the Tuneup addon then keep this folder​
> 4. Close the My Computer/Explorer window
> 5. Enable AVG self protection:
> Right click the AVG icon in the taskbar (near the clock) 
> Select to Enable AVG Protection - takes 20 seconds or so to fully activate.​

> Open the AVG program - you should now have a clean AVG interface.
> This fix survives the AVG daily updates and minor program updates but
> after each major program update you will need to redo the fix.

### Source
- DougCuk (2013-12-12) "[AVG 2013/2014 - Disable the Advertising Tiles and Panel](http://www.wilderssecurity.com/threads/avg-2013-2014-disable-the-advertising-tiles-and-panel.357139/)". Retrieved 2014-06-19.