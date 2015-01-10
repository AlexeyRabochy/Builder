@echo off
if "%start%"=="" goto :EOF

set Git="C:\Program Files\Git\bin"
set MSBuild="C:\Windows\Microsoft.NET\Framework\v4.0.30319"
set Blat="C:\Blat"
set NUnit="C:\Program Files\NUnit-2.6.4\bin"

set RepositoryPath="C:\GitHub"
set ProjectName=Geometry
set RepositoryURL=https://github.com/kazimure/%ProjectName%

set Builded=true
set Cloned=true
set TestSuccess=true
set CloneLog=clone.log
set MSBuildLog=msbuild.log
set TestOut=test.txt

set FileList=files.txt

set Solution=Geometry.sln
set BuildPath="%RepositoryPath%\%ProjectName%\Geometry\bin\Release
set TestPath="%RepositoryPath%\%ProjectName%\Tests\bin\Release

set MailTo=alex.rabochy@gmail.com










set BuildLocation="%RepositoryPath%\%RepositoryName%\UI\bin\Release"
set TestLocation="%RepositoryPath%\%RepositoryName%\Tests\bin\Release"

set EmailReceiver=anastasia.sulyagina@gmail.com