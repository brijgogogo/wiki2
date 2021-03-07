:: function

:: Your quasi functions need to be defined as labels at the bottom of your script.
:: The main logic of your script must have a EXIT /B [errorcode] statement. This keeps your main logic from falling through into your functions.

@ECHO OFF
SETLOCAL

:: script global variables
SET me=%~n0
SET log=%TEMP%\%me%.txt

:: The "main" logic of the script
IF EXIST "%log%" DEL /Q %log% >NUL

:: We use the CALL keyword to invoke the quasi function labelled :tee. We can pass command line arguments just like we’re calling another batch file.
:: do something cool, then log it
CALL :tee "%me%: Hello, world!"

:: force execution to quit at the end of the "main" logic
EXIT /B %ERRORLEVEL%

:: a function to write to a log file and write to stdout
:tee
ECHO %* >> "%log%"
ECHO %*
EXIT /B 0
:: We have to remember to EXIT /B keyword at the end our function.

