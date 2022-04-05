REM compile.bat [source path] [source file name]
set jdk=jdk-18

set rootdir=..
set jdkdir=%rootdir%\jdk\%jdk%\bin
set sourcedir=%rootdir%\%1
set sourceName=%2

REM echo Compiling...
%jdkdir%\javac.exe -d %sourcedir%\out %sourcedir%\src\%sourceName%.java
REM echo.
REM pause
