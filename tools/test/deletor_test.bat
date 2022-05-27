@REM This script tests "deletor.bat" script.
:init
@echo off
set scriptDirectory=..\util
set scriptName=deletor.bat
set folderDirectory=..\..\jdk
set folderName=testfold
goto start


:start
cd "%scriptDirectory%"
set folderPath=%folderDirectory%\%folderName%
call %scriptName% "%folderPath%"
exit