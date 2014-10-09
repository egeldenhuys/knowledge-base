Vim
===

[Vim](http://www.vim.org/index.php) is a highly configurable text editor built to enable efficient text editing. It is an improved version of the vi editor distributed with most UNIX systems.

Vim is often called a "programmer's editor," and so useful for programming that many consider it an entire IDE. It's not just for programmers, though. Vim is perfect for all kinds of text editing, from composing email to editing configuration files. 

#### Installation
`sudo apt-get install vim`

#### Tips
**[How to make vim paste from (and copy to) system's clipboard?](https://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard)**


Be aware that copying/pasting from the system clipboard will not work if :echo has('clipboard') returns 0. In this case, vim is not compiled with the +clipboard feature and you'll have to install a different version or recompile it. Some linux distros supply a minimal vim installation by default, but generally if you **install the vim-gtk package** you can get the extra features.
