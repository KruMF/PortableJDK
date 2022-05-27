@REM This script tests "deletor.bat" script.
:init
@echo off
set rootDirectory=..\..
set testableScriptDirectory=%rootDirectory%\util
set scriptName=deletor.bat

REM relative to the testable script
set folderDirectory=test
set folderName=deletable
goto start


:start
cd "%testableScriptDirectory%"
set folderPath=%folderDirectory%\%folderName%
call %scriptName% "%folderPath%"
exit