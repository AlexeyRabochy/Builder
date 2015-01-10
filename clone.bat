@echo off
if "%start%"=="" goto :EOF

git clone -b master %RepositoryURL% %RepositoryPath%\%ProjectName% > %CloneLog%
if ERRORLEVEL 1 set Cloned=false