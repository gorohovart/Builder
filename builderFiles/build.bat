@echo off
if "%startFlag%"=="" goto :eof

MSBuild %slnPath%>%logBuild% /p:Configuration=Release;VisualStudioVersion=12.0 >%MSBuildLog%
if errorlevel 1 (
	set errorBuild=true
)
