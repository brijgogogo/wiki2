# ranger
configuration files at ~/.config/ranger
if not present, generate using ranger --copy-config
rc.conf has settings

## navigation
- h : go up
- j : move down (5j will move down by 5 lines)
- k : move up
- l : enter dir/ open file
- g :cd ...  (gh = cd ~)
- R : reload this directory
- J or <c-D> : move down half page
- K or <c-U> : move up half page
- H : back in history
- F : forward in history
- [, ] : move up/down in parent dir (left most section)


## file/directory actions
- M : change linemode (Mf: file name, Mp : permissions, Mi: information, Mt : metadata)
- i : inspect file
- E : open with $VISUAL or $EDITOR
- r : :open-with
- yy : copy
- dd : cut
- pp : paste
- A : :rename(append)
- a : :rename(skip extension)
- :rename <newName>
- cw : rename current file
- :bulkrename %s : rename selected files
- <space> : select one or more files (3<space> selects 3 files)
- da (or ya) : to add files to copy buffer. Allows to copy from multiple folders
- u : undo
- :mkdir <dirname>
- - : chmod
- + : chmod
- = : chmod
- dc : calculate content size of directory
- F7 : :mkdir
- ct : search next tagged file
- <delete> : delete selected file
- :delete
- <C-h> : toggle hidden files
- z : toggle options (like zh = show hidden files)
- zf or :filter .pdf : to see pdf files
- :touch : to make a file

## searching / sorting
- / :search
- f : :find
- n : serch next
- N : search previous
- o : sort / order
- :filter <text>

## tabs
- <c-n> : new tab
- gt / gT : next/prev tab
- tab/ TAB : next/prev tab, 4<tab> moves to 4th tab
- q or <C-w>: cloes tab
- Q: quit

## bookmarks / tags
- m<a-z> : add bookmark
- ' or ` : open bookmarks
- " tag files with custom tag
- t : tag files

## macros
- %f : base name of current file
- %d : current dir path
- %s : names of currently selected files


## others
- ranger --copy-config=all : to copy default config to ~/.config/ranger
- plugins in plugins/ subdirectory
- W : show log
- w : show background tasks
- <c-L> : redraw
- ? : help
- 1? = keybindings help
- 2? = command help
- 3? = settings help

## command line
- ! : execute command from shell (non-ranger)
- : / ; : execute a ranger command
- S:  switch to terminal (exit to back)
- s : :shell
- du : measure disk usage of current directory
- :chmod

## placeholders
- %s : selected files (:bulkrename %s)
- %t : tagged files
- %d : current directory
- %s : highlighted file

## image previews
- pacman -Ss w3m
- ranger --copy-config=scope
- in ~/.config/ranger/rc.conf add below:
  set preview_images true
- pacman -S feh

## theme
You just have to create a your_theme.py in the colorsheme directory and define inside a class Scheme inheriting from Default class.
- set colorscheme scheme : default, jungle, snow, solarized
- colorschemes in colorschemes/

## sources
/usr/share/doc/ranger
https://github.com/ranger/ranger
https://ranger.github.io/cheatsheet.svg
https://wiki.archlinux.org/index.php/Ranger
https://github.com/ranger/ranger/wiki/Image-Previews
https://ihommani.github.io/ranger.html
https://github.com/ranger/ranger/wiki/Official-user-guide
http://ranger.nongnu.org/cheatsheet.png

