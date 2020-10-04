# find
searches the file system so is not instant.

## basic
- `find .` : find all files, folders, symlinks, etc in current directory recursively
- `find . -name \*.php` : find all files, folders, symlinks, etc in current dir recursively (file name must end with .php)
- `find . \*.txt -type f` : search *.txt files
- `find . -mmin -60 -type f` : find files modified in last 60 mins
- `find . -type f -size +500M` : find files larger than 500 MB
- find ~ -iname '*my-photo*'

## find and execute command
- find . \*.txt -type f -exec grep -Hn 'test' {} \;
search and execute grep on results
{} is a placeholder for the result found by find
\; says that for each found result, the command is executed once with the found result
like:
grep [...] file1
grep [...] file2
...

- find . -name "*.pdf" -exec mv {} ../ \;
move all pdf files in current or any subdirectory to one directory back

- find . \*.txt -type f -exec grep -Hn 'test' {} \+
\+ : all result lines are concatenated and the command is executed only a single time with all found results as a parameter
like:
grep [...] file1 file ...

- find . \*.txt -type f -print 0 | xargs -0 -n1 grep -Hn 'test'
-n1 tells xarg to execute the command with only one argument (same as \;)
- find . \*.txt -type f -print 0 | xargs -0 grep -Hn 'test'
if -n[int] is not specified, xargs uses default -n5000. Hence grep is executed once for 5000 parameters (as in \+)

note: + and xargs (without -n1) are faster, as there is no overhead in fork and exec. It decreases I/O.

note: when using `find.... \+` and `| xargs -0` `find -exec` will continue for every file, but `file | xargs` will immediately stop once (nature of piping commands).


## options
* `-type f` : only search for files
* `-print` : print full file name, followed by newline
* `-print0` : print full file name, followed by a null character

## Useful commands
- find dir/* -maxdepth 0 -type d | wc -l
count number of directories in a directory
- find ./ -type f | grep -E ".*\.[a-zA-Z0-9]*$" | sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | sort | uniq -c | sort -n
get count by extensions

- find -type f | sed 's/.*\.//' | sort | uniq -c
Count unique number of files (based on extension) in current directory

- find . -name *.rar -exec unrar x -o+ {} \;
Extract all rar files

- find -regex '.*\.\(pdf\|epub\|azw3\)' -exec mv {} /run/media/vik/Data/_temp/ \;
Move all pdf, epub, azw3 to a loction

- find . -mtime +30 -type f -exec rm -rf {} \;
remove files that were modified 30 days ag

- find . -name '*.java' -mtime +7 -print
files modified in last 7 days

- find . -name '*.java' -mtime +7 -print | xargs grep 'java.awt'
search java.awt in files modified in last 7 days

-   grep '^import ' *.java | sed -e's/.*import  *//' -e's/;.*$//' | sort -u >list
find unique packages

- find . -type d -empty -delete
delete empty directories

## sources
https://www.everythingcli.org/find-exec-vs-find-xargs/

