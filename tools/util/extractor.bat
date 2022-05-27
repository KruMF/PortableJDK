@REM call extractor.bat [targetDir] [version]
@REM Parameter "targetDir" accepts spaces.
:start
set targetDir=%1
set version=%2
set extension=.zip
call :dirOps %targetDir% %version%
call :extract
call :tempRemoval
goto :eof


@REM call :dirOps [targetDir] [version]
:dirOps
cd %targetDir%
rmdir %version%
mkdir %version%
goto :eof


@REM call :extract
:extract
tar -xvf %version%%extension%
goto :eof


@REM call :tempRemoval
:tempRemoval
del %version%%extension%
goto :eof