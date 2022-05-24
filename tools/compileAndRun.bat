REM compileAndRun.bat [source path] [source file name]

@set rootdir=..
@set toolsdir=tools
@set sourcedir=%1
@set sourceName=%2
call :compile
call :run
goto :eof

:compile
call %rootdir%\%toolsdir%\compile.bat %sourcedir% %sourceName%
goto :eof

:run
call %rootdir%\%toolsdir%\run.bat %sourcedir% %sourceName%
goto :eof
