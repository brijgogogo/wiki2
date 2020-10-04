# Searching, Finding and Replacing

## character search in line
* f[char] : search character in line, ;-> move forward, ,-> move backward
* F[char]: search character backward in line
* t[char]: same as f[char], just the cursor is places before the character
* T[char]: backwards of t[char]
* :help f, :help t

## pattern search in file/selection
* /search_pattern
* ?search_pattern %:searches backward
* & : repeat last substitution command
* :help /
* :help ?
* // or ?? : repeat last search
* <C-F> during '/' search will open search history.

* /\t : Show all tabs:

* /\s\+$ : Show trailing whitespace:

* /\S\zs\s\+$ : Show trailing whitespace only after some text (ignores blank lines):

* / \+\ze\t : Show spaces before a tab:


* :<C-r>/ : inserts last searched word, see :help c_ctrl-r
https://vimways.org/2018/searches-for-us-newbies/

## regular expression search
* /result\d : search result<number>
* /re.ult\d : search for re followed by any character
* /res\wlt\d : search for res followed by a keyword character

## deletion by search
* :g/<search here>/d : delete all lines containing pattern
* :v/<search here>/d : delete all lines not containing pattern
* :help :global

## replacing
* :%s//WON/g : replace last searched word
* :%s/foo/bar/gc : replace in file with confirmation
* :/searchWordStart/,/searchWordEnd/s/originalWord/newWord/<cr> : replace between two lines, first containing a word and second containing another word

## Ack
:Ack [options] {pattern} [{directories}]
:Ack <pattern>
:Ack -i <pattern> (case insensitive search)


* https://jezenthomas.com/how-i-find-and-replace-in-vim/
  :args `ack -l '\bClass\b' --ignore-dir=compiled`
  :argdo %s/\<Class\>/MooTools.Class/gc | update

  The -l flag in ack tells the tool to just return me the file names. I’m using the \b word-boundary to refine my search results so I’m not overwhelmed with noise.
  Vim’s word-boundaries (\< and \>) look different from the ones in ack.
  The substitute command is passed the g and c flags. The c flag is interesting here; it stands for ‘confirmation’, and will ask me to confirm or deny substitutions with the y and n keys.
  The pipe character in the context of an Ex command is not the same as piping data through the shell; it’s more like a semicolon in C-like languages and allows you to perform separate commands in one move.


* [[vim-reg-ex]]
