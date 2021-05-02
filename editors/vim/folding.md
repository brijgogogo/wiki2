# Folding
Vim's folding command begin with z.
dd, Y, yy when carried out in folded text work on entire folded section.

:help folding


## Fold Methods
:set foldmethod=indent
- indent
- marker
- manual

## Creating fold
- zf2j: creates fold for next 2 lines
- zf: creates fold for lines in visual mode
- :20,101 fo[ld] : creates fold for line range
- zfa}: if cursor in on opeting brace {, creates fold to matching closig brace
Use :mkview to save folds. Use :loadview to load restore on reload of file.
Can use below to do it automatically:
  au BufWinLeave * mkview
  au BufWinEnter * silent loadview

## Close/Open folds
- zc : closes fold
- zo : opens fold
- zO: opens all folds at the cursor
- za : toggles fold
- zd: deletes the fold at the cursor
- zE: deletes all folds
- zm: incrase the foldlevel by one
- zM : closes all open folds
- zr: decrease the foldlevel by one
- zR: decrease the foldlevel to zero (all folds will be open)

## Move in folds
- zj, zj: move to the next/previous fold
- [z, ]z: move to start/end of open fold


## Enable / Disable
- zn: disable folding
- zN: re-enable folding
