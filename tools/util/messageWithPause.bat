@REM call messageWithPause.bat [message]
@REM Message accepts spaces.
set message=%~1
echo.
echo %message%
echo.
pause
echo.
goto :eof