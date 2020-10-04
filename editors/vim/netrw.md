# vim netrw

- opening netrw
  :e .
  :Explore
  :Sex[plore]
  :Vexplore
- Open help
  F1
  :help nterw
- switch views
  i
- toggle banner
  I
- delete file/Directory
  D
- create directory
  d
- create fle
  %
- rename file/directory
  R
- go into dir or open file in same window
  Enter
- open file in tab
  t
- open file in vertical split
  v
- go up one dir
  -
- In banner going to quick help and pressing Enter cycles through quick help

## vimrc config
- set list style
  let g:netrw_liststyle = 3
- hide banner
  let g:netrw_banner = 0
- how to open files
  let g:netrw_browse_split = 3
    1 - horizontal split
    2 - vertical split
    3 - new tab
    4 - in previous window
- set width of netrw
  let g:netrw_winsize = 25

## vim-vinegar
- open netrw
  -
- pre-populate file in command line
  .
- pre-populate file with ! in command line (eg. :!chmod +x path/to/file)
  !
- yank file path
  y
- go to home
  ~
- toggle hidden files
  gh
