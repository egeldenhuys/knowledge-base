Assign default group to all new files in folder
=======================================

## Problem
- Samba share. Drop new file. User cannot access because new file does
not have correct group set.

## Solution
- http://superuser.com/questions/277775/ensuring-new-files-in-a-directory-belong-to-the-group
    - `chmod g+s dir`
