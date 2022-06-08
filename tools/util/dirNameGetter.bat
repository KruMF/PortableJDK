@REM call dirNameGetter.bat [target directory] [output]
@REM Both parameters accept spaces.
:start
FOR /D %%G in ("%~1\*") DO set directoryName=%%~nxG
set %~2="%directoryName%"
goto :eof