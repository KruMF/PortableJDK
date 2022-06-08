@REM call compile.bat [source path] [source file name]

REM @set jdk=jdk-18
@set jdk=jdk-18.0.1.1

@set rootdir=..
@set jdkdir=%rootdir%\jdk\%jdk%\bin
@set sourcedir=%rootdir%\%~1
@set sourceName=%~2

echo Compiling...
echo.
"%jdkdir%"\javac.exe -d "%sourcedir%\out" "%sourcedir%\src\%sourceName%.java"
echo.
echo Done compiling.
echo.
pause
goto :eof