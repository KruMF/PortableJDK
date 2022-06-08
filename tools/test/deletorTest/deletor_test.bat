@REM This script tests "deletor.bat" script.

:init
@echo off
@title Deletor test
@REM Absolute path.
set rootDirectory=..\..\..
set testableScriptDirectory=%rootDirectory%\tools\util
set scriptName=deletor.bat

@REM Path relative to the testable script.
set folderDirectory=..\test\deletorTest
set folderName=deletable
goto start


@REM Main part of the test.
:start
cd "%testableScriptDirectory%"
set folderPath=%folderDirectory%\%folderName%
call %scriptName% "%folderPath%"
exit