REM run.bat [source path] [source file name]
set jdk=jdk-18

set rootdir=..
set jdkdir=%rootdir%\jdk\%jdk%\bin
set sourcedir=%rootdir%\%1
set sourceName=%2

REM echo Running...
%jdkdir%\java.exe -cp %sourcedir%\out %sourceName%
REM echo.
REM pause
