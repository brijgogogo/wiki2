SET filepath=%~f1

IF NOT EXIST "%filepath%" (
	ECHO %~n0: file not found - %filepath% >&2
	EXIT /B 1
)

SET filepath=%dp0\default.txt

IF EXIST "%~f1" SET filepath=%~f1
ECHO %filepath%

:confirm
SET /P "Continue [y/n]>" %confirm%
FINDSTR /I "^(y|n|yes|no)$" > NUL || GOTO: confirm

