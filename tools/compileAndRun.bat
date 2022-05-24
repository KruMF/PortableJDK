REM compileAndRun.bat [source path] [source file name]

set rootdir=..
set toolsdir=tools
set sourcedir=%1
set sourceName=%2
call :compile
goto :eof

:compile
echo Compiling...
call %rootdir%\%toolsdir%\compile.bat %sourcedir% %sourceName%
echo.
echo Done.
goto :eof

:run
echo.
echo Running...
echo.
call %rootdir%\%toolsdir%\run.bat %sourcedir% %sourceName%
echo.
pause
goto :eof
