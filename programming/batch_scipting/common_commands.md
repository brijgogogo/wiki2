* Delete folder and files
del folder /Q /S
rmdir folder /Q /S

* touch alternative in windows
echo.>file.ext

* display contents of a text file
type file.ext


* To remove a prefix abcd from abcd1.txt, abcd2.txt, abcd3.txt etc. in order to get 1.txt, 2.txt, 3.txt simply use
rename "abcd*.txt" "////*.txt"
You need the same number of / as the number of initial characters you would like to remove.
Do place double quotes for both arguments.

* to set a variable:
set PATH=%PATH%;C:\xampp\php

* to list all variables:
SET

* taskkill /F /IM MSBuild.exe
* taskkill /pid [pid] /f


