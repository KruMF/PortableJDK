@REM call mavenActions.bat [full root path]
set fullRootPath=%~1
set utilDir=%fullRootPath%\tools\util
set mavenDir=%fullRootPath%\maven
set mavenZip=apache-maven-zip
call :downloadMaven "%utilDir%"
call :extractMaven "%utilDir%"
REM todo: get the version of maven
REM todo: save maven version number in config
goto :eof


@REM Downloads the Maven.
@REM call :downloadMaven [utilDir]
:downloadMaven
set url=https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip
call commonDownload.bat %1 %url% "%mavenDir%" %mavenZip% "Downloading Maven"
goto :eof


@REM Extracts the Maven from an archive.
@REM call :extractMaven [utilDir]
:extractMaven
call commonExtraction.bat "%~1" "%mavenDir%" %mavenZip% "Extracting Maven"
goto :eof