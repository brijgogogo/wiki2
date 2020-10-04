# Navigation

## Directory
- check current directory
:pwd
- change current directory
:cd ../dir

## Line
- go to end of line
$
- go to beginning of line
0
- Go to first character of line
^
- move to next blank line (or paragraph)
}
- move to prev blank line (or paragraph)
{
- jump to line n
nG
- insert at the beginning of line
I
- append to end of line
A

## Words
- :help word-motions
- :help cursor-motions
- move to start of next word
w
- move to next space-separated word
W
- b, e : to the begin/end of the current word. (B / E for space separated only)
- go to insert mode after character
a
- go to insert mode before character
i
- go to next sentence
)
- go to prev sentence
(

## History / Jump List
- <c-o> (to jump back to previous location)
- <c-i>  (to jump forward)
- :jumps (display jump list for current window)

## Screen
- <c-u> : go half screen up
- <c-d> : go half screen down
- <c-f> : go one entire screen forward
- <c-b> : go one entire screen backward
- zz : to instantly center the line where the cursor is located.
- zt : puts current line at top of screen (affected by scroll off)
- zb : puts current line at bottom of screen (affected by scoll off)
- M : jump to the middle line of the screen ("middle")
- L : jump to the last line of the screen ("low")
   3L puts cursor 3 lines above the bottom of the window (affected by scoll off)
- H : jump to the first line of the screen (home)
   3H puts cursor 3 lines below the top of the window (affected by scroll off)

## File
- gf : opens the file with name under cursor


## Characters
- fs : to go to first character s in line,
use ; to jump to nex match and , to jump back
- F : find backward in line
- vfs : to select till first character s in line

## Search
- * : search the word under cursor and jump to next match
- # : same as *, but searches backwards

## Editing
- J : joins two lines
- g; : go back to last change
- g, : go forward to last change
- . : repeat last command (text operation)


- gj or gk, g$, g0 : to move down/up/end/start on wrapped lines
- t/T : works like f/F but puts cursot one char back


## Man page
- K : opens man page for the word under cursor

## VIMRC
- [ or ]: in vimrc moves batween functions

## External app interaction
- gx : opens url in browser
