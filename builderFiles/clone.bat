@echo off
if "%startFlag%"=="" goto :eof

git clone %gitURL% >nul 2>%logClone%

if errorlevel 1 (
	set errorClone=true
)


