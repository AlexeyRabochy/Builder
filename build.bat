@echo off
if "%running%"=="" goto :EOF

%MSBuild%\MSBuild.exe %RepositoryPath%\%ProjectName%\%Solution% /p:Configuration=Release;VisualStudioVersion=13.0 > %BuildLog%
if ERRORLEVEL 1 set Builded=false

for /F %%file in %FileList% do (
	if not exist %BuildPath%\%%file (
		set Builded=false
	)
) 