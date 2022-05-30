@REM Final part of the setup.
@REM call :finish [absolute utilDir path]
@REM Path accepts spaces.
set endingTitleStatus=Done
call setupTitleChanger.bat %1 "%endingTitleStatus%"
cls
set message=Java and Maven ready.
call %1\messageWithPause.bat "%message%"
goto :eof