@echo off
if "%start%"=="" goto :EOF

%MSBuild%\MSBuild.exe %RepositoryPath%\%ProjectName%\%Solution% /p:Configuration=Release;VisualStudioVersion=13.0 > %MSBuildLog%
if ERRORLEVEL 1 set Builded=false

for /F %%F in ( %FileList% ) do (
    if not exist %BuildPath%\%%F (
        set Builded=false
    )
)