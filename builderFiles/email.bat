@echo off
if "%startFlag%"=="" goto :eof
break>%emailFiles%

if %errorClone%==true (
	set emailSubject=%emailSubject% - Error cloning
	set emailBody=An error while cloning repository.
)

if %errorBuild%==true (
	set emailSubject=%emailSubject% - Error building
	set emailBody=An error while building.
)

if %errorCheck%==true (
	set emailSubject=%emailSubject% - Error checking
	set emailBody=File %missingFile% not found while checking the build.
) 

if %errorTests%==true (
	set emailSubject=%emailSubject% - Error testing
	set emailBody=An error while testing library.
	echo %logTests%,>>%emailFiles%
)

blat -s "%emailSubject%" -body "%emailBody%" -to %email% -attacht %emailFiles% 1>%logSend% 2>&1
if errorlevel 1 (
	set errorSend=true
)