# ripgrep
- command line tool that searches files for patterns
- searches line by line, if line matches it is printed


## examples
$ rg <text_to_search> <file_name>
searches literal string in a file

- rg 'fast\w+' README.md
searches lines containing "fast" followed by some letters (regular expression)

- rg 'text'
recursively searches entire directory of files

- rg 'fn wirte\('
escapes ( with \ as it has a special meaning inside regular expressions
- rg -F 'fn write('
interprets pattern as literal string

- rg 'fn run' -g '*.rs'
searches only *.rs files
-g: glob pattern
- rg 'fn run' --type rust
same as above
- rg 'fn run' -trust
same as above

- rg 'int main' -g '*.{c,h}'
searches C source files and C header files
- rg 'int main' -tc

- rg clap --type-not rust
do not serach rust files
- rg clap -Trust
same as above


- rg --type-list
see globs that make up a type (for use in -t or -T)

## sources
https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md

