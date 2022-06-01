@REM This tests pathGetter.bat
@REM call pathGetterTest.bat
:start
@echo off
@title PathGetter Test
cls
set utilDir=..\..\util
set pathGetterDir=%utilDir%
set pathGetterName=pathGetter.bat

set output=
call "%pathGetterDir%"\%pathGetterName% output
REM Variable "output" should contain full root path.

set resultMessage=Full root path: %output:"=%
call "%utilDir%"\messageWithPause.bat "%resultMessage%"
exit