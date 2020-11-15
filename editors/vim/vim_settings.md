# vim settings
Vim has two types of settings
1. Boolean Setings
%%  e.g. number, wrap
%% :set number
%% :set nonumber
%% :set number!         (toggles number boolean command)
%% :set number?         (use ? to know current value)
2. Non boolean settings
%% :set background=light
%% :set background=dark
%% :set bg              (use to know current value)

## How to set settings
1. set
%% All setings an be set using :set.
%% :set nowrap nubmer bg=dark      (setting multiple settings)
2. setlocal
%% To set locally (in buffer) we can use :setlocal or :setl
%% autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4


:map
%% allows you to see all mapping for current filetype

we cannot put " (comment) at the end of a mapping as it assumes it is part of mapping
eg. noremap <left> <nop>  " comment here is invalid

