@REM A common usage of extractor for extracting archives.
@REM call commonExtraction.bat [absolute util directory path] [absolute target directory path] [zip name] [title status]
@REM Path variables accept spaces.
@REM Parameter "zip name" doesn't accept spaces.
@REM Parameter "title status" accepts spaces.
:init
set utilDir=%~1
set targetDir=%~2
set zipName=%3
set titleStatus=%~4
goto start

:start
call setupTitleChanger.bat "%utilDir%" "%titleStatus%"
call "%utilDir%"\extractor.bat "%targetDir%" %zipName%
call setupTitleChanger.bat "%utilDir%" 0
goto :eof