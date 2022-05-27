@REM call extractor.bat [targetDir] [zipName]
@REM Parameter "targetDir" accepts spaces.
@REM TODO: cd to relevant dir before calling this batch (somewhere in the main batch) in order to check the version
:start
set targetDir=%1
set zipName=%2
set extension=.zip
call :dirOps %targetDir% %zipName%
call :extract
call :zipRemoval
goto :eof


@REM call :dirOps [targetDir] [zipName]
:dirOps
cd %targetDir%
REM rmdir %zipName%
REM mkdir %zipName%
goto :eof


@REM call :extract
:extract
tar -xvf %zipName%%extension%
goto :eof


@REM call :tempRemoval
:zipRemoval
del %zipName%%extension%
goto :eof