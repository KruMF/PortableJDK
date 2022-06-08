@REM This tests a maven project (particularly Delay Calculator by Krumuvecis).
@REM call mavenProjectTest.bat
@set testableProjectOutputableName=Delay Calculator
@set testableProjectVersion=DelayCalculator-0.3
:start
@echo off
@title Maven project test - %testableProjectOutputableName%
set utilDir=..\..\util
set fullRootPath=
call "%utilDir%"\pathGetter.bat fullRootPath
set fullRootPath=%fullRootPath:"=%

call :setJavaHome
call :setMavenDirectory
call :mavenVersionTest
exit


@REM call :setJavaHome
:setJavaHome
set javaVersion=jdk-18.0.1.1
set javaDir=%fullRootPath%\jdk\%javaVersion%
set JAVA_HOME=%javaDir%
goto :eof


@REM call :setMavenDirectory
:setMavenDirectory
set mavenVersion=apache-maven-3.8.5
set mavenDir=%fullRootPath%\maven\%mavenVersion%\bin
goto :eof


@REM call :mavenVersionTest
:mavenVersionTest
cls
echo Maven status:
echo.
call "%mavenDir%"\mvn.cmd --version
echo.
pause
goto :eof