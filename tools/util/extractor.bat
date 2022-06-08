@REM call extractor.bat [target directory] [zipName]
@REM Parameter "target directory" accepts spaces.
:start
set targetDir=%1
set zipName=%2
set extension=.zip
set zipPath=%targetDir%\%zipName%%extension%
call :zipExtract
call :zipRemoval
goto :eof


@REM call :zipExtract
:zipExtract
set tarPath=%WINDIR%\SYSTEM32\tar.exe
%tarPath% -xvf %zipPath% -m -C %targetDir%
goto :eof


@REM call :zipRemoval
:zipRemoval
del %zipPath%
goto :eof