REM compile.bat [source path] [source file name]

set rootdir=..
set jdkdir=%rootdir%\jdk\jdk-18\bin
set sourcedir=%rootdir%\%1
set sourceName=%2

REM echo Compiling...
%jdkdir%\javac.exe -d %sourcedir%\out %sourcedir%\src\%sourceName%.java
REM echo.
REM pause