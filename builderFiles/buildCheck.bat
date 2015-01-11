@echo off
if "%startFlag%"=="" goto :eof

for /F "tokens=*" %%i in (%binFiles%) do (
	if not exist "%buildPath%\%%i" (
		set missingFile=%%i
		goto :error
	)
)
goto :eof

:error
set errorCheck=true
