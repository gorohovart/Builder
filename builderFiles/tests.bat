@echo off
if "%startFlag%"=="" goto :eof

%NUnitPath%\nunit-console.exe %testsBuildPath%\Tests.dll>%logTests%

if errorlevel 1 (
	set errorTests=true
)