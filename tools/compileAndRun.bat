REM compileAndRun.bat [source path] [source file name]

set rootdir=..
set toolsdir=tools
set sourcedir=%1
set sourceName=%2

echo Compiling...
call %rootdir%\%toolsdir%\compile.bat %1 %2
echo.
echo Done.

echo.
echo Running...
echo.
call %rootdir%\%toolsdir%\run.bat %1 %2
echo.
pause