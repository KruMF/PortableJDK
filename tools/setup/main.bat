@REM call main.bat
@REM No arguments needed nor supported.
:start
call :initializeConstants
call :setConfig
goto main


@REM Initializes constants.
@REM call :initializeConstants
:initializeConstants
set driveLetter=%~d0
set currentPath=%~p0
set fullCurrentPath=%driveLetter%%currentPath%
set rootDir=..
set utilDir=%fullCurrentPath%util

set title_base=Setup
call setupTitleChanger.bat "%utilDir%" 0
goto :eof


@REM Initializes configuration.
@REM call :setConfig
:setConfig
set jdkZip=jdk-zip
set jdkDir=%fullCurrentPath%%rootDir%\jdk
set mavenZip=apache-maven-zip
set mavenDir=%fullCurrentPath%%rootDir%\maven
goto :eof


@REM Main part of the script.
:main
cls
REM read config
REM check if setup has already been done
call jdkActions.bat "%utilDir%"
call mavenActions.bat "%utilDir%"
call ending.bat "%utilDir%"
goto :eof