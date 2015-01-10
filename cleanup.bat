@echo off

if "%start%"=="" goto :EOF

rmdir /s /q %RepositoryPath%\%ProjectName%