@REM Specialized use of pathGetter.bat for the setup.
@REM call setupPathGetter.bat [output]
@REM Parameter "output" returns full path of the root directory.
set relativeToolsDir=..
set relativeUtilDir=%relativeToolsDir%\util
set fullRootPath=
call %relativeUtilDir%\pathGetter.bat fullRootPath
set %1=%fullRootPath%
goto :eof