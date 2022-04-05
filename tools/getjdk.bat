@echo off
:init
set driveLetter=%~d0
set currentPath=%~p0
set fullCurrentPath=%driveLetter%\%currentPath%
set rootdir=..
set jdkdir=%fullCurrentPath%\%rootdir%\jdk
cls

:download
set jdk=jdk-18
set url=https://download.oracle.com/java/18/latest/jdk-18_windows-x64_bin.zip

bitsadmin /transfer DownloadJDK /download /priority normal %url% %jdkdir%\%jdk%.zip

:extract
cd %jdkdir%
rmdir %jdk%
mkdir %jdk%
tar -xvf %jdk%.zip
del %jdk%.zip

:finish
echo.
pause
exit