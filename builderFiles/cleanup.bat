@echo off
if "%startFlag%"=="" goto :eof

if exist %repoName% (
	rd /s /q %repoName%
)

if "%errorClone%"=="false" if exist %logClone% del %logClone%
if "%errorBuild%"=="false" if exist %logBuild% del %logBuild%
if "%errorTests%"=="false" if exist %logTests% del %logTests%
if "%errorSend%"=="false" if exist %logSend% (
	del %logSend%
	if exist %emailFiles% del %emailFiles%
)