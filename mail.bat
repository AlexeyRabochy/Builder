@echo off
if "%start%"=="" goto :EOF

set Subject=Results of building
set Text=Congratulations! Build successfull and tests passed.
set File=%MSBuildLog%

if %Cloned%==false (
  set Text=Cloning failed.
  set File=%CloneLog%
)
 
if %Builded%==false set Text=Build failed.

if %TestSuccess%==false (
  set Text=Testing failed.
  set File=%TestOut%
)

%Blat%\blat.exe -s "%Subject%" -body "%Text%" -to %MailTo% -attacht %File% 