:: universal files: stdin (0), stdout (1), stderr (2)

:: > operator redirects stdout to another files
DIR > temp.txt
:: it will overwrite the contents of temp.txt

:: >> operator appends to a target files
DIR >> temp.txt

:: To redirect stderr (use 2 in front of operator)
DIR SomeFile.txt 2>> error.txt

:: combile stdout and stderr streams using file number and & prefix
DIR SomeFile.txt 2>&1

:: to use file contents as input to a program (instead of keyboard), use <
SORT < temp.txt

:: The pseudofile NUL is used to discard any output from a program.
ping 127.0.0.1 > NUL

:: piping
DIR /B | SORT

REM start typing, press CTRL + Z/C when done
:: command prompt's own stdin: CON
TYPE CON > output.txt

