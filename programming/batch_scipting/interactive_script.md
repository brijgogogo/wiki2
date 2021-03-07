@ECHO OFF
SET interactive=0

ECHO %CMDCMDLINE%
ECHO.
ECHO %COMSPEC%

ECHO %CMDCMDLINE% | FINDSTR /L /I %COMSPEC% >NUL 2>&1
IF %ERRORLEVEL% == 0 SET interactive=1

ECHO.
ECHO do work %interactive%

IF "%interactive%"=="0" PAUSE
PAUSE
EXIT /B 0

