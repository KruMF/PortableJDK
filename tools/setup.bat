@REM call setup.bat
@REM No arguments needed nor supported.
:init
@echo off
set driveLetter=%~d0
set currentPath=%~p0
set fullCurrentPath=%driveLetter%%currentPath%
set fullRootPath=%fullCurrentPath%..
cd setup
call main.bat "%fullRootPath%"
exit