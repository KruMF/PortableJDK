@REM This tests if maven is set up properly.
@REM call mavenTest.bat
:start
@echo off
@title Maven test - Version check
cls
set utilDir=..\..\util

set fullRootPath=
call "%utilDir%"\pathGetter.bat fullRootPath
set fullRootPath=%fullRootPath:"=%

call :javaHomeTest
call :mavenDirectoryTest
call :mavenVersionTest
exit


@REM call :javaHomeTest
:javaHomeTest
set javaVersion=jdk-18.0.1.1
set javaDir=%fullRootPath%\jdk\%javaVersion%
set JAVA_HOME=%javaDir%
REM cls
set resultMessage=JAVA_HOME : %JAVA_HOME%
call "%utilDir%"\messageWithPause.bat "%resultMessage%"
goto :eof


@REM call :mavenDirectoryTest
:mavenDirectoryTest
set mavenVersion=apache-maven-3.8.5
set mavenDir=%fullRootPath%\maven\%mavenVersion%\bin
REM cls
set resultMessage=Maven directory : %mavenDir%
call "%utilDir%"\messageWithPause.bat "%resultMessage%"
goto :eof


@REM call :mavenVersionTest
:mavenVersionTest
REM cls
echo Maven status:
echo.
call "%mavenDir%"\mvn.cmd --version
echo.
pause
goto :eof