:: %COMSPEC% /C /D "path/to/batch4.cmd" arg1 arg2 arg3
:: /C: instructs the chold process to quit when your script quites
:: /D: disables any auto-run scripts (if script calls EXIT, it will close your command prompt window, unless EXIT is called from a child command prompt process)
:: EXIT

:: The environmental variable %ERRORLEVEL% contains the return code of the last executed program or script.
:: A very helpful feature is the built-in DOS commands like ECHO, IF, and SET will preserve the existing value of %ERRORLEVEL%

:: NEQ (Not Equal to)
IF %ERRORLEVEL% NEQ 0 (
	REm do something here to address the error
)

:: ERRORLEVEL 1 statement is  true when the return code is any number equal to or greater than 1.
IF ERRORLEVEL 1 (
	REM do something here to address the error
)

SomeFile.exe
IF %ERRORLEVEL% EQU 9009 (
	ECHO error - SomeFile.exe not found in your PATH
)

SomeCommand.exe && ECHO SomeCommand.exe succeeded!
SomeCommand.exe || ECHO SomeCommand.exe failed with return code %ERRORLEVEL%

:: By default, the command processor will continue executing when an error is raised. You have to code for halting on error.
:: A very simple way to halt on error is to use the EXIT command with the /B switch (to exit the current batch script context, and not the command prompt process).
:: We also pass a specific non-zero return code from the failed command to inform the caller of our script about the failure.
SomeCommand.exe || EXIT /B 1

ECHO continuing

:: A simliar technique uses the implicit GOTO label called :EOF (End-Of-File). Jumping to EOF in this way will exit your current script with the return code of 1.
SomeCommand.exe || GOTO :EOF


:: script example
SET /A errno=0
SET /A ERROR_HELP_SCREEN=1
SET /A ERROR_SOMECOMMAND_NOT_FOUND=2
SET /A ERROR_OTHERCOMMAND_FAILED=4
::2 powered error coes to support bitwise operations

SomeCommand.exe
IF %ERRORLEVEL% NEQ 0 SET /A errno^|=%ERROR_SOMECOMMAND_NOT_FOUND%

OtherCommand.exe
IF %ERRORLEVEL% NEQ 0 (
	SET /A errno^|=%ERROR_OTHERCOMMAND_FAILED%
)

E
