# sed
A very powerful program that has its own language.
- [substitution](./substitution.md)



- sed -i s/foo/bar/g somefile
To replace all occurrences of foo with bar in a file.

The Stream EDitor   sed is used to edit streams of text. It is extremely powerful but can also be used for simple tasks like search and replace. It works on files or with text on standard input, hence the name.

The -i option replaces the file with the changed version instead of simply outputting the changed data.

Use -i.bak to create a backup of the original file.

- sed --version
- sed -n 5p
print a specific line from file
- sed 'p' /etc/passwd
(prints the pattern and matching line)(since no pattern is specified, all lines are printed twice)
- sed -n 'p' /etc/passwd
only print matching line
- sed -n '1,5 p' /etc/passwd
print lines from 1 to 5
- sed -n ' /^vik/ p' /etc/passwd
prints lines starting with vik
- sed ' /^#/ d' file.sh
removes the commented lines
- sed ' /^#/ d ; /^$/ d' file.sh
removes the commented lines, then remove empty lines
- sed -i.bak ' /^#/ d ; /^$/ d' file.sh
removes the commented lines, then remove empty lines, saves previous file content in file.sh.bak, and saves the file being edited


 https://ferd.ca/awk-in-20-minutes.html
- awk -W version
- awk ' { print } ' /etc/passwd
(prints content of file)
- awk ' BEGIN { print "passwd file" } { print } END { print NR }' /etc/passwd
awk with begin and end block. NR prints number of rows
- awk ' BEGIN { print "passwd file" } { print NR, $0 } END { print NR }' /etc/passwd
(in main block, NR gives line number and $0 gives current line)
- ifconfig eth0 | awk -F":" '/HWaddr/{print $3 $4 $5 $6 $7}'
(-F for field separator, $1, $2, and so on give the field number value)
- ifconfig eth0 | awk -F":" '/HWaddr/{print toupper($3 $4 $5 $6 $7)}'


## sources
http://www.grymoire.com/Unix/Sed.html

