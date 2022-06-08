@REM call main.bat
@REM No arguments needed nor supported.
:init
set fullRootPathQuoted=
call setupPathGetter.bat fullRootPathQuoted
set fullRootPath=%fullRootPathQuoted:"=%
set toolsDir=%fullRootPath%tools
set utilDir=%toolsDir%\util

call setupTitleChanger.bat "%utilDir%" 0
goto start


@REM Main part of the script.
:start
cls
REM read config
REM check if setup has already been done

call jdkActions.bat "%fullRootPath%"
call mavenActions.bat "%fullRootPath%"
call ending.bat "%utilDir%"
goto :eof