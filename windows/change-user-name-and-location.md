Change User Name
================

Aim: To change the profile name along with the profile directory name.

- `x` - The account you want to rename
- `new-name` - The new name you want for the user account
- 'C:\Users\new-name' - The new path for the user account

1. Create a new user account with administrator priviledges.
2. Log off and log into the newly created account.
3. Go to `Control Panel > User Accounts > Manage Accounts > Change Account` or similar.
4. Rename account 'x' to 'new-name' in the control panel
5. Rename `C:\Users\x' to `C:\Users\new-name` in explorer
6. Open regedit.exe
7. Browse to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList`
8. In the left pane under the Profilelist key, select and look at each S-1-5 key 
with the long number until you see the user account name and path (step 3) that you 
want to move in the value Data column of ProfileImagePath in the right pane. When the 
correct user name is found, right click on ProfileImagePath, and click on Modify.
9. Type in the full path of the new user account location. `C:\Users\new-name`
10. Log in with the newly named account

## Sources
- [Brink (2010-04-27) - "User Profile - Change Default Location" - sevenforums.com](http://www.sevenforums.com/tutorials/87555-user-profile-change-default-location.html)
- [Answer by Malkeleah (2009-10-30) - "How to change user name in windows 7 professional?" - answers.microsoft.com](https://answers.microsoft.com/en-us/windows/forum/windows_7-security/how-to-change-user-name-in-windows-7-professional/d95ddaa7-4235-454e-83d6-77232207c7e2)
- [TNJMAN (2013-09-22) - "How to Rename a Windows 7 User Account and Related Profile Folder" - social.technet.microsoft.com](http://social.technet.microsoft.com/wiki/contents/articles/19834.how-to-rename-a-windows-7-user-account-and-related-profile-folder.aspx)
