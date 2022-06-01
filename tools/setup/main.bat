@REM call main.bat [full root path]
@REM Root path accepts spaces.
:init
set fullRootPathQuoted=
call setupPathGetter.bat fullRootPathQuoted
set fullRootPath=%fullRootPathQuoted:"=%

set toolsDir=%fullRootPath%tools
set utilDir=%toolsDir%\util
set title_base=Setup
call setupTitleChanger.bat "%utilDir%" 0
call :setConfig
goto start


@REM Initializes configuration.
@REM call :setConfig
:setConfig
set jdkZip=jdk-zip
set jdkDir=%fullRootPath%\jdk
set mavenZip=apache-maven-zip
set mavenDir=%fullRootPath%\maven
goto :eof


@REM Main part of the script.
:start
cls
REM read config
REM check if setup has already been done
call jdkActions.bat "%utilDir%"
call mavenActions.bat "%utilDir%"
call ending.bat "%utilDir%"
goto :eof