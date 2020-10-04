# vifm
Vifm is an ncurses based file manager with vi like keybindings.
has two panes
remembers location of both panes

- Esc / Ctrl + C
cancel most operations or clear selected files
- R
reload view

## copy, delete, select
- yy
yank file
- dd
send to trash
- DD
permanent delete
- p
paste yanked file
- P
move yanked file
- t
select/tag current file
- v
visual mode - select files
- :invert s
invert selection
- mkdir <dir_name>
- :e
load file in vi
- C
clone file
- cw
rename
- c-a/x
inc/dec number in name

## navigation
- lkjh
* [count]h
-o back by count
- :pwd
- :cd
go to home
- :cd /path
- :sort
- :his[tory]
show history of locations visited
- :h[elp]
- M
move to middle
- c-u/d
scroll half pag up/down
- c-i/o
history forward/backward

## panes
- Space or Tab
toggle between two panes
- :view
enable quick view on side pane
- :sync
navigates to same panel in other
- :split
split horizontally
- :vsplit
split vertically
- :only
show only one pane
- c-w- or C-w|
inscrease size of pane
c-w>
c-w<
- c-w=
reset pane sizes
- c-w[hkjl]
move to pane
- c-ww
cycle among panes
- c-wHKJL
move pane to

## marks
- m[a-z][A-Z][0-9]
set mark
- '[a-z][A-Z][0-9]
visit mark
- :marks
show marks

## searching
- /<regex pattern>
search, n/N to move forward/backward
- filter <pattern>
hides files matching pattern
- filter s$
hides files ending with s
- C-G
show details info about file
- zm, zo, za
hide/show/toggle hidden files
- zf
filter selected files
- zO
show filtered files (remove filter)
- filter /^.*\.(pdf|epub|mobi)$/
filter multiple file extensions
- invert
invert file name filter


## commands
- :com
lists commands
- :com <command_name> <action>
creates custom command
- delcommand <command_name>

## shell
- sh
starts shell
- :q
- ! <program>
executes program in shell
- !!
executes last program in shell
- !! <program>
execute program and pause


## sources
https://wiki.vifm.info
https://wiki.archlinux.org/index.php/Vifm
https://github.com/vifm/vifm.vim
https://vifm.info/cheatsheets.shtml
https://wiki.vifm.info/index.php/HOWTOs
https://wiki.vifm.info/index.php/Utility_scripts
https://wiki.vifm.info/index.php/Vifm_on_the_Web
https://vifm.info/manual.shtml

