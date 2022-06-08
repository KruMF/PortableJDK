@REM call compileAndRun.bat [source path] [source file name]

@set rootDir=..
@set toolsDir=tools
@set sourceDir=%~1
@set sourceName=%~2
call :compile
cls
call :run
goto :eof

:compile
call %rootDir%\%toolsDir%\compile.bat "%sourceDir%" "%sourceName%"
goto :eof

:run
call %rootDir%\%toolsDir%\run.bat "%sourceDir%" "%sourceName%"
goto :eof