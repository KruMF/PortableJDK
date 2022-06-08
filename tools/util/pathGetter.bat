@REM Gets full root path.
@REM call pathGetter.bat [output]
@REM Parameter "output" returns full path of the root directory.
set driveLetter=%~d0
set currentPath=%~p0
set fullCurrentPath=%driveLetter%%currentPath%
set utilDir=%fullCurrentPath%
set toolsDir=%utilDir%..
set fullRootPath=%toolsDir%\..
set %1="%fullRootPath%"
goto :eof