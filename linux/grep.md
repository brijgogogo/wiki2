# GREP (Global Regular Expression Print)

- grep "text_to_search" file_to_search

- grep -n "text_to_search" file_to_search
show line numbers also

- grep -vn "text_to_search" file_to_search
shows negative results, i.e., lines that do not match

- grep -c "text_to_search" file_to_search
show only line numbers and no matching line

- grep -l "text_to_search" *
lists the files which have matching line

- grep -i "text_to_search" file_to_search
ignores case


- grep -f file_with_search_content file_to_search
- grep "e$" file_to_search
searches for lines ending with e
- grep "boots?" file
? matches 0 or 1 occurrences of previous character
- grep -H 'test' : print file name for each match (or use --with-filename)
- grep -n 'test' : prefix each line with line number (or use --line-number)

## Extended Grep (egrep)
%(or use grep -E) (but egrep also provide more functionality like pipe below)

- | : Alternation operator - looks for matches for either the search pattern to its left or right
egrep "boot|boots" (matches boot or boots)


- Anchoring - search specific part of a line
grep -E '^am' geeks.txt
^ : caret - consider character sequence if it appears at the start of a line
$ : dollar - represents end of line
\< : start of word anchor.  e.g. '\<h' matches words starting with "h" (\ is escaping character)
\> : end of word anchor. e.g. 'y\>' matches words ending with y
\b : boundary operator : looks for entire word. e.g. '\bBrij\b'
\B : boundary operator : sequence inside larger word. e.g. '\Bway\B' (matches Highwayland)

- Wildcars
. : represents single character (e.g 'J..n')
- : zero or more occurences of preceding character (eg. 'J.*n')

- Character classes
'[NW]' : N or W
'^[NW]' : starts with N or W
'T[oi]m : Tim or Tom
'T[^o]m' : Not Tom
[A-Z]
[a-z]
[0-9]


- Interval expressions
Number of times your want the preceding character or group to be found
'T[aeiou]{1,2}m': At least one, but no more than two.
'Tel{2}' : Tell
'Tel{2,}' : two or more

- Escaping characters
'\.$': matches "." at the end of line


## Fast Grep (fgrep)
%% (searches for strings of literal characters) (or use grep -F)
- fgrep "book$" file (will search for book$, $ is not treated as special character)

Witty Examples
- find | grep "hello" (search for file in current directory with "hello" in name)
- tail -n8 file | grep "boo" (search boo in last 8 lines of file)
- find . -exec grep "boo" {} \; (search for text in every directory below the current directory)
- grep "\([a-z]\)\1" file (using backreferences, searches for lines that contain two instances of a letter in succession )

Source: http://www.uccs.edu/~ahitchco/grep/

- grep -c name /prod/cpuinfo
(count number of cores within the cpu)

