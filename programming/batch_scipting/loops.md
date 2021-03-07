@ECHO OFF

:: GOTO
:args
SET arg=%~1
IF /I "%arg%" NEQ "" (
	ECHO %arg%
	SHIFT
	GOTO :args
)

:: FOR

:: looping through files
FOR %%I IN (%USERPROFILE%\*) DO @ECHO %%I
:: use %I when not in script

echo ----------------------

:: looping through directories
FOR /D %%I IN (%USERPROFILE%\*) DO ECHO %%I

