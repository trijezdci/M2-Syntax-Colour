## Modula-2 Syntax Highlighting for Vim

In order to add multi-dialect Modula-2 syntax/filetype support to Vim,
some VIM configuration files need to be patched and syntax description
files for Modula-2 dialects need to be added.

### Adding Dialect Specific Syntax Descriptions ####

(1) **find** your Vim runtime directory

(2) **copy** the files

* m2pim.vim
* m2iso.vim
* m2r10.vim

into the syntax directory below the runtime directory,
then **remove** the file

* modula2.vim

from that directory.

### Adding Dialect Specific Menu Items ###

Follow the instructions in file

* syntax-menu.vim

to **patch** (edit) the files

* makemenu.vim
* synmenu.vim

within the Vim runtime directory.

### Adding File Type Mapping and Disambiguation ###

Follow the instructions in files

* filetype-def.vim
* filetype-mod.vim

to **patch** (edit) the file

* filetype.vim

within the Vim runtime directory.

### Testing the Patched Version of Vim ###

Start the patched Vim executable and open the files

* vimtest-pim.def
* vimtest-iso.def
* vimtest-r10.def

to verify file recognition and syntax colouring.

Further, check the Syntax menu for a new Modula-2 submenu.
The submenu should have three choices: RIM, ISO and R10.

+++
