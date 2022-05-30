@REM call jdkActions.bat [utilDir]
set utilDir=%1
REM call :downloadJDK %utilDir%
REM call :extractJDK %utilDir%
REM get the version of jdk
REM save jdk version number in config
goto :eof


@REM Downloads the JDK.
@REM call :downloadJDK [utilDir]
:downloadJDK
set url=https://download.oracle.com/java/18/latest/jdk-18_windows-x64_bin.zip
call commonDownload.bat %1 %url% "%jdkDir%" %jdkZip% "Downloading JDK"
goto :eof


@REM Extracts the JDK from an archive.
@REM call :extractJDK [utilDir]
:extractJDK
call commonExtraction.bat %1 "%jdkDir%" %jdkZip% "Extracting JDK"
goto :eof