# exapnding
:: ~ expands the given variable
echo %~0

:: run script with argument "hello"
:: below will print it by removing surrounding quotes ("")
echo %~1

:: expands %0 to a fully qualified path name
echo %~f0
:: drive letter
echo %~d0

:: path only (without drive)
echo %~p0

:: combine ~d, ~p
echo %~dp0

:: only extension
echo %~x0

:: ~n is the file name (without extension)
echo %~n0

:: short name
echo %~s0

:: ~t is the timestamp of file
echo %~t0

:: ~z is the size of file
echo %~z0

:: file attributes
echo %~a0

:: %cd% is also available in command prompt
echo %CD%

:: %!dp0 is available only in batch file
echo %~dp0




