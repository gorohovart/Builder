@echo off
if "%startFlag%"=="" goto :eof

MSBuild %slnPath% /p:Configuration=Release;VisualStudioVersion=12.0 >%logBuild% 
if errorlevel 1 (
	set errorBuild=true
)
