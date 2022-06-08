@REM call setupTitleChanger.bat [utilDir] [status]
set title_base=Setup
call %1\titleChanger.bat "%title_base%" %2
goto :eof