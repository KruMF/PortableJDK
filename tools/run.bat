REM run.bat [source path] [source file name]

set rootdir=..
set jdkdir=%rootdir%\jdk\jdk-18\bin
set sourcedir=%rootdir%\%1
set sourceName=%2

REM echo Running...
%jdkdir%\java.exe -cp %sourcedir%\out %sourceName%
REM echo.
REM pause