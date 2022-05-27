@REM call downloader.bat [url] [dir] [fileName] [displayName]
@REM Parameter "dir" accepts spaces.
@REM Parameter "displayName" accepts spaces.
:start
set destDir=%~2
set destName=%3
set destinationPath=%destDir%\%destName%.zip
call :download %1 "%destinationPath%" %4
goto :eof


@REM call :download [url] [destination path] [display name]
@REM Path accepts spaces.
@REM Display name accepts spaces.
:download
REM set priority=LOW
set priority=NORMAL
REM set priority=HIGH
REM set priority=FOREGROUND
bitsadmin /transfer %3 /download /priority %priority% %1 "%~2"
goto :eof