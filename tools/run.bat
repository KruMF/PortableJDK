REM run.bat [source path] [source file name]
@set jdk=jdk-18

@set rootdir=..
@set jdkdir=%rootdir%\jdk\%jdk%\bin
@set sourcedir=%rootdir%\%1
@set sourceName=%2

echo Running java...
echo.
%jdkdir%\java.exe -cp %sourcedir%\out %sourceName%
echo.
echo Java finished.
echo.
pause
