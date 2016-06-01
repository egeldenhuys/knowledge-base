Vim Copy and Paste from System Clipboard
========================================

The "* and "+ registers are for the system's clipboard. (`:help registers`)

if `:echo has('clipboard')` returns `0` then vim is not compiled with the +clipboard feature
and the `vim-gtk` package can be installed for extra features such as the clipboard.

To paste from a register press the following keys `"*p` or `"+p`.

To yank text from Vim to a register use `"*yy` or `"+yy`.

- See [Answer by Conner (2012-07-15). "How to make vim paste from (and copy to) system's clipboard?" - stackoverflow.com]
(https://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard)
