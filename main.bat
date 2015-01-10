@echo off

set start=true

call settings.bat

call cleanup.bat

call clone.bat
if "%Cloned%"=="false" goto :SendMail

call build.bat
if "%Builded%"=="false" goto :SendMail

call test.bat

:SendMail
call mail.bat