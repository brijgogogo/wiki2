:: Check if a file exists
IF EXIST "temp.txt" ECHO found
IF NOT EXIST "temp1.txt" ECHO not found

IF EXIST "temp.txt" (
	ECHO found
) ELSE (
	ECHO not found
)

:: Check if a variable is not set
IF "%var%"=="" (SET var=default value)
ECHO %var%

IF NOT DEFINED var1 (SET var1=default value)
ECHO %var1%

:: Check if a variable matches a string
IF "%var%"=="default value" (
	ECHO found
)

:: Arithmetic comparisons
SET /A var=1

:: /I - case insensitive string comparison
IF /I "%var%" EQU "1" ECHO equality with 1

IF /I "%var%" NEQ "0" ECHO inequality with 0

IF /I "%var%" GEQ "1" ECHO greather than or euqal to 1

IF /I "%var%" LEQ "1" ECHO less than or equality to 1


