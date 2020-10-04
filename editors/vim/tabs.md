# Tab
:help tabpage

- create new tab with new buffer
  :tabnew
- open a file in new tab
  :tabedit <fileName>
- open file in a new tab, or jump to a window/tab containing the file if there is one
  :tab drop <fileName>
- list all tabs including their displayed windows
  :tabs
- Open file under cursor in new tab
  C-w gf

## Tabs navigation
- go to next tab
  gt
- go to previous tab
  gT
- go to tab in position i
  {i}gt
- move current tab to a positon (first tab is at 0)
  :tabm <position>
- move current tab to last
  :tabm
- go to first tab
  :tabfirst
- go to last tab
  :tablast

## Closing tabs
- close current tab
  :tabc[lose]
  :q
- close tab by number
  :tabc <tabNubmer>
- Close all other tabs except current
  :tabonly

## Moving to windows/tabs
- copy the current window to a new tab of its own
  :tab split
- move window to a new tab
  C-w-T






