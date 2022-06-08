@REM A common usage of downloader for downloading archives.
@REM call commonDownload.bat [absolute util directory path] [url] [absolute destination path] [zip name] [title status]
@REM Path variables accept spaces.
@REM Url variable doesn't accept spaces.
@REM Parameter "zip name" doesn't accept spaces.
@REM Parameter "title status" accepts spaces.
:init
set utilDir=%~1
set url=%2
set targetDir=%~3
set zipName=%4
set titleStatus=%~5
goto start

:start
call setupTitleChanger.bat "%utilDir%" "%titleStatus%"
call "%utilDir%"\downloader.bat %url% "%targetDir%" %zipName% "%titleStatus%"
cls
call setupTitleChanger.bat "%utilDir%" 0
goto :eof