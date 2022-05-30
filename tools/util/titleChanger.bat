@REM call titleChanger.bat [title base] [status]
set title_base=%~1
if %2==0 (call :resetStatus) ^
else (call :setStatus %2)
goto :eof


@REM Sets title status.
@REM call :setStatus [status]
:setStatus
title %title_base% - %~1
goto :eof


@REM Resets title status.
@REM call :resetStatus
:resetStatus
title %title_base%
goto :eof