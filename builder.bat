@echo off
set startFlag=true

set resDir=builderFiles

call %resDir%\settings.bat

call %resDir%\cleanup.bat

call %resDir%\clone.bat
if "%errorClone%"=="true" goto :finalize

call %resDir%\build.bat
if "%errorBuild%"=="true" goto :finalize

call %resDir%\buildCheck.bat
if "%errorCheck%"=="true" goto :finalize

call %resDir%\tests.bat
if "%errorTests%"=="true" goto :finalize


:finalize
call %resDir%\email.bat

call %resDir%\cleanup.bat
