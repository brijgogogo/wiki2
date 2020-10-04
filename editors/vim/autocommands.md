# vim autocommands

:help :autocmd

- format
  autocmd {event} {pattern} {cmd}

- events (multiple events can be specified as comma separated)
  BufReadPost
  BufWritePost
  BufNewFile
  FileType (for filetype event {pattern} is matched against the filetype)
  BufNew
  WinNew
  TabNew
  BufReadPre
  VimEnter
  VimLeave
  TestChanged
  CursorMoved

  :help {event}

- patterns (use command as separator for multiple patterns)
  * : all buffers
  *.vim,vimrc : matches vim scripts and vimrc file
If the buffer's filepath matches the pattern defined then Vim executed the specified {cmd}

## example
autocmd BufReadPost * echo 'Reading: ' . expand('<afile>')
autocmd BufWritePost * echo 'Writing: ' . expand('<afile>')
autocmd FileType vim
      \ echo 'Editing vim script:' . expand('<afile>') . \n'
      \ . 'FileType: ' . expand('<amatch>')

<afile> item stands for the name of the current file.


- check autocmd
  :autocmd <name of command>
- remove autocmd
  :autocmd! <name>

- defining autocmd
  augroup unique_group_name
    autocmd!
    " Define autocommands here
  augroup [END](END)

- disable persistent undo for temporary files
audocmd BufWritePre /tmp/* setlocal noundofile
