:: Name:     MyScript.cmd
:: Purpose:  Configures the FooBar engine to run from a source control tree path
:: Author:   stevejansen_github@icloud.com
:: Revision: March 2013 - initial version
::           April 2013 - added support for FooBar v2 switches

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: variables
SET me=%~n0


:END
ENDLOCAL
ECHO ON
@EXIT /B 0

