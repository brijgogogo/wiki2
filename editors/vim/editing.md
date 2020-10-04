# Editing

## File
- :w fileName : saves the contents to fileName, but keeps the current file in buffer
- saveas fileName : saves the buffer to fileName, and opens it in buffer


## Undo / Redo
- :help undo-redo
- u : undo
- U : undo whole line
- C-r : redo
- go to text state 4 minute back
  :earlier 4m
- go forward in time 45 seconds
  :later 45s
- go back by 5 changes
  :undo 5
- view undo tree
  :undolist

## Word / chracter
- diw : delete inner word (the entire word under the cursor)
- db : delete until the beginning of the word or a word backward if the cursor is already in the beginning of some word
- r : replace character under cursor
- x/X : delete char under cursor or before it
- cfm: change till characer m
* c/ot: change till ot



## Copy
- y$ : yank rest of the line from cursor
- Y : copies line of cursor

## Line
- C: change remaining part of line
- D: delete until the end of line
- R: replace text
- ggdG [d]elete entire buffer from [gg] beginning to [G] end
- d/8<cr>dd : delete from current line to line which has character 8
- c6j: change 6 lines below
- s/S : substitute char/line
- D : delete line


## Letter-case
- ~ : toggle case


## Numbers
- C-A / C-X increments/decrements a number


## Common
- . repeat last command


## Visual Mode
- o : after selecting some text, press o to switch cursor to start/end
  used to expand selection
- O : toggle betwen start and end of line of selected block
  used to expand selection in block visual mode



## Shortcuts in INSERT mode
- <c-h> : backspace
- <c-w> : backspace a word
- <c-u> : backspace whole line
- <c-v><special-character> : to write special character
  e.g. <c-v><esc> gives: 
  e.g. <c-v><cr> gives: 
  e.g. <c-v><u1234> gives unicode character: ሴ
- <c-o> : accepts one command in NORMAL mode right after pressing <c-o>, then swites bach to NORMAL mode.
  eg. writing text<c-o><j>
  continue writing text
- <c-r> : accepts register to put at current location
  e.g. Hello <c-r><"> continue writing

## Indentation / Formatting
- < and > indents a block (in visual mode) to left or right. Press '.' to repeat last indenting and 'u' to undo
- == (indent single line)
- =G  (indent all file)
- gg=G (Format code of whole page (gg > go to top, = > fix indentation, G > till the end of file))

## Surounding
- cs work like ds but replacing the surround instead of deleting them. For instance, ci"' will turn "text" into 'text'
- ds', ds", ds{, ds[, ds( delete surrounds ('', "", {}, (), [])
- di', di", di{, di[, di( delete content inside the given surround
- da', da", da{, da[, da( delete all content of the given surround, including the surround
- dit delete inner tag content
- vat (visually select a tag)
- dat (delete a tag)

## Others
- :sort (select some lines, then :sort to sort them)
