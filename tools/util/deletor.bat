@REM call deletor.bat [folderPath]
@REM Path accepts spaces.
:start
set folderPath=%1
@REM Directory existence error level.
set error_level=
call :directoryExistenceCheck error_level
cls

if %error_level%==0 (call :deleteDir) ^
else (if %error_level%==2 (call :notFoundDir) ^
else (if %error_level%==145 (call :deletePrompt) ^
else (call :undefinedErrorLevel %error_level%)))

goto :eof


@REM call :directoryExistenceCheck [error level]
:directoryExistenceCheck
setlocal enabledelayedexpansion
rmdir %folderPath% || REM 
endlocal & set %~1=%ERRORLEVEL%
@REM 0   - ok
@REM 2   - not found
@REM 145 - not empty
goto :eof


@REM call :errorLevelPrompt
:errorLevelPrompt
echo Error level: %error_level%
goto :eof


@REM call :deletePrompt
:deletePrompt
set deleteChoice=
cls
set /p deleteChoice=Directory %folderPath% already exists. Delete (y/n)? 
if %deleteChoice%==y goto deleteDir
if %deleteChoice%==Y goto deleteDir
if %deleteChoice%==n goto keepDir
if %deleteChoice%==N goto keepDir
goto deletePrompt


@REM Don't call this label as a subroutine!
@REM Use "goto deleteDir" to get here.
:deleteDir
rmdir /s /q %folderPath%
set message=Directory deleted successfully.
call messageWithPause.bat "%message%"
goto :eof


@REM Don't call this label as a subroutine!
@REM Use "goto keepDir" to get here.
:keepDir
set message=Directory not deleted.
call messageWithPause.bat "%message%"
goto :eof


@REM call :notFoundDir
:notFoundDir
call :errorLevelPrompt
set message=Directory %folderPath% not found.
call messageWithPause.bat "%message%"
goto :eof


@REM call :undefinedErrorLevel [errorlevel]
:undefinedErrorLevel
call :errorLevelPrompt
set message=Unexpected errorlevel detected while trying to delete %folderPath%.
call messageWithPause.bat "%message%"
goto :eof