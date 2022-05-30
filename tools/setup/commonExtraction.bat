@REM A common usage of extractor for extracting archives.
@REM call :commonExtraction [absolute util directory path] [absolute target directory path] [zip name] [title status]
@REM Path variables accept spaces.
@REM Parameter "zip name" doesn't accept spaces.
@REM Parameter "title status" accepts spaces.
call setupTitleChanger.bat %1 %4
call %1\extractor.bat %2 %3
call setupTitleChanger.bat %1 0
goto :eof