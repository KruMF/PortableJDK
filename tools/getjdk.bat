@REM No arguments needed nor supported.
@REM call getjdk.bat
:start
call :initializeConstants
call :setConfig
goto main


@REM Initializes constants.
@REM call :initializeConstants
:initializeConstants
@echo off
set driveLetter=%~d0
set currentPath=%~p0
set fullCurrentPath=%driveLetter%%currentPath%
set rootDir=..
set utilDir=%fullCurrentPath%\util

set title_base=Getter
call :changeStatus 0
goto :eof


@REM Initializes configuration.
@REM call :setConfig
:setConfig
set jdkVersion=jdk-18.0.1.1
set jdkDir=%fullCurrentPath%%rootDir%\jdk
set mavenVersion=apache-maven-3.8.5
set mavenDir=%fullCurrentPath%%rootDir%\maven
goto :eof


@REM Main part of the script.
:main
cls
call :downloadJDK
call :extractJDK
call :downloadMaven
call :extractMaven
goto finish
@REM Below "goto :eof" has been added for redundancy.
goto :eof


@REM Downloads the JDK.
@REM call :downloadJDK
:downloadJDK
set url=https://download.oracle.com/java/18/latest/jdk-18_windows-x64_bin.zip
call :prepareDownload %url% "%jdkDir%" %jdkVersion% "Downloading JDK"
goto :eof


@REM Downloads the Maven.
@REM call :downloadMaven
:downloadMaven
set url=https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip
call :prepareDownload %url% "%mavenDir%" %mavenVersion% "Downloading Maven"
goto :eof


@REM Common preparations prior to downloading.
@REM call :prepareDownload [url] [destPath] [version] [status]
:prepareDownload
set status=%4
call :changeStatus %status%
cd "%utilDir%"
call downloader.bat %1 %2 %3 %status%
cls
cd "%fullCurrentPath%"
call :changeStatus 0
goto :eof


@REM Change status.
@REM call :changeStatus [status]
:changeStatus
if %1==0 (call :resetStatus) ^
else (call :setStatus %1)
goto :eof

@REM Set status.
@REM call :setStatus [status]
:setStatus
title %title_base% - %~1
goto :eof

@REM Reset status.
@REM call :resetStatus
:resetStatus
title %title_base%
goto :eof


@REM Extracts the JDK from an archive.
@REM call :extractJDK
:extractJDK
set status=Extracting JDK
call :commonExtraction "%jdkDir%" %jdkVersion% "%status%"
goto :eof


@REM Extracts the Maven from an archive.
@REM call :extractMaven
:extractMaven
set status=Extracting Maven
call :commonExtraction "%mavenDir%" %mavenVersion% "%status%"
goto :eof


@REM A placeholder for extracting from archive
@REM call :commonExtraction [targetDir] [version] [status]
:commonExtraction
call :changeStatus %3
cd "%utilDir%"
call extractor.bat %1 %2
cd "%fullCurrentPath%"
call :changeStatus 0
goto :eof


@REM Final part of the script.
:finish
title %title_base% - Done
cd "%utilDir%"
cls

set message=Java and Maven ready.
call messageWithPause.bat "%message%"
exit