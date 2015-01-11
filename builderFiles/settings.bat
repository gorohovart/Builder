@echo off
if "%startFlag%"=="" goto :eof

set pathGit=C:\Users\artem_000\AppData\Local\GitHub\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad\bin
set pathMSBuild=C:\Windows\Microsoft.NET\Framework\v4.0.30319
set pathBlat="C:\Program Files (x86)\blat323\full"
set NUnitPath="C:\Program Files (x86)\NUnit-2.6.4\bin"
set PATH=%PATH%;%pathMSBuild%;%pathBlat%;%NUnitPath%;%pathGit%

set repoName=Geometry
set slnName=IsRightTriangle

set gitURL=http://github.com/gorohovart/%repoName%

set buildPath=%repoName%\%slnName%\bin\Debug
set testsBuildPath=%repoName%\Tests\bin\Debug
set slnPath=%repoName%\%slnName%.sln

set binFiles=%resDir%\buildCheckBinaries.txt
set missingFile=

set logClone=logClone.log
set logBuild=logBuild.log
set logSend=logSend.log
set logTests=logTests.log

set errorClone=false
set errorBuild=false
set errorCheck=false
set errorSend=false
set errorTests=false

set email=gorohov.art@gmail.com
set emailSubject=%slnName% build info
set emailBody=OK.
set emailFiles=emailFiles.txt
