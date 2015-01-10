@echo off
if "%start%"=="" goto :EOF

%NUnit%\nunit-console.exe %TestPath%\Tests.dll > %TestOut%
if ERRORLEVEL 1 set TestSuccess=false