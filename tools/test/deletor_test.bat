@REM This script tests "deletor.bat" script.

:init
@echo off
@REM Absolute path.
set rootDirectory=..\..
set testableScriptDirectory=%rootDirectory%\util
set scriptName=deletor.bat

@REM Path relative to the testable script.
set folderDirectory=test
set folderName=deletable
goto start


@REM Main part of the test.
:start
cd "%testableScriptDirectory%"
set folderPath=%folderDirectory%\%folderName%
call %scriptName% "%folderPath%"
exit