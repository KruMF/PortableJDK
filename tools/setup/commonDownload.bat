@REM A common usage of downloader for downloading archives.
@REM call :prepareDownload [absolute util directory path] [url] [absolute destination path] [zip name] [title status]
@REM Path variables accept spaces.
@REM Url variable doesn't accept spaces.
@REM Parameter "zip name" doesn't accept spaces.
@REM Parameter "title status" accepts spaces.
call setupTitleChanger.bat %1 %5
call %1\downloader.bat %2 %3 %4 %5
cls
call setupTitleChanger.bat %1 0
goto :eof