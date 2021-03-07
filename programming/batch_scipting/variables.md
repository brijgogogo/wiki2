:: http://steve-jansen.github.io/guides/windows-batch-scripting/part-2-variables.html

::The value of undeclared/uninitialized variables is an empty string, or ""

:: SET command assigns a value to a variable
SET var=val
:: do not use whitespace between the name and value

:: /A switch supports arithmetic operations during assignments
SET /A four=2+2

:: conventionally use lowercase names for script's variables.
:: System variables (or environment variables) use uppercase names.
:: DOS is case insensitive

echo %var%
echo %four%
echo %TEMP%
echo %SYSTEMROOT%
echo %USERPROFILE%
echo %JAVA_HOME%
echo %DATE%
echo %DATE:~10,4%
echo %TIME%
echo %RANDOM%
echo %CD%

:: SET command with no arguments will list all variables for the current command prompt session.
:: regular/static variables
:: dynamic variables: %DATE%, %CD%
:: to see help for SET: SET /?

:: by default, variables are global to your entire command prompt session.
:: Call the SETLOCAL command to make variables local to the scope of your script.
:: After calling SETLOCAL, any variable assignments revert upon calling ENDLOCAL, calling EXIT, or when execution reaches the end of file (EOF) in your script.
SETLOCAL
SET v=Local Value
echo v=%v%
ENDLOCAL

echo %v%

:: The arguments passed on the command line to your script are also variables, but,
:: don’t use the %var% syntax. Rather, you read each argument using a single %
:: with a digit 0-9, representing the ordinal position of the argument.
echo %0
echo %1
:: The zero ordinal argument is the name of the batch file itself.

:: DOS does support more than 9 command line arguments, however, you cannot directly
:: read the 10th argument of higher. This is because the special variable syntax
:: doesn’t recognize %10 or higher. In fact, the shell reads %10 as postfix the %0
:: command line argument with the string “0”. Use the SHIFT command to pop the first
:: argument from the list of arguments, which “shifts” all arguments one place to the
:: left. For example, the the second argument shifts from position %2 to %1, which
:: then exposes the 10th argument as %9.

SETLOCAL ENABLEEXTENSIONS
SET parent=%~dp0
SET me=echo %~n0
echo %me%: some message


:: IF "%GF_JAVA_HOME%%"=="" (
::	SET GF_JAVA_HOME=%JAVA_HOME%
:: )

