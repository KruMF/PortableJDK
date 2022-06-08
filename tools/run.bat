@REM call run.bat [source path] [source file name]

REM @set jdk=jdk-18
@set jdk=jdk-18.0.1.1

@set rootdir=..
@set jdkdir=%rootdir%\jdk\%jdk%\bin
@set sourcedir=%rootdir%\%~1
@set sourceName=%~2

echo Running java...
echo.
REM "%jdkdir%"\java.exe -cp "%sourcedir%\out" "%sourceName%.class"
"%jdkdir%"\java.exe -cp "out" "%sourceName%"
echo.
echo Java finished.
echo.
pause
goto :eof