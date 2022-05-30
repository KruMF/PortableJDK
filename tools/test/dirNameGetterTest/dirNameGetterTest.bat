@REM Gets the name of the directory
@echo off
set utilDir=..\..\util
set targetDir=%~p0
cls
call %utilDir%\dirNameGetter.bat "%targetDir%" dirName
set outputMessage=This directory contains a folder named '%dirName:"=%'
call %utilDir%\messageWithPause.bat "%outputMessage%"
exit