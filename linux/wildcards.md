# wildcards
A character or sring used for pattern matching.
Sometimes wildcards are referred to as glob or glob patterns.

Globbing expands the wildcard pattern into a list of files and/or directories.

Wildcards can be used with most commands like ls, rm, cp, etc.


- * : matches zero or more characters
*.txt
a*
a*.txt

- ? : matches exactly one character
?.txt
a?
a?.txt

- [] : a character class. Maches any of the characters included between the brackets. Matches exactly one characer
[aeiou]
ca[nt]*


- [!] : matches any of the characters not included between brackets. Matches exactly one character
[!aeiou]*

- use hypen for ranger of characters
[a-g]*
[3-6]*

- named character classes
`[[:alpha:]]`
`[[:alnum]]`
`[[:digit]]`
`[[:lower]]`
`[[:upper]]`
`[[:space]]`

- use \ to escape character to match a wild characger
*\?  (example match file done?)

## examples
ls *.txt
ls a*
ls a*.txt
ls ?
ls ??
mv *.txt notes

