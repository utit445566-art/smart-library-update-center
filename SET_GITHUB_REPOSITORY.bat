@echo off
set /p OWNER=GitHub username/organization: 
set /p REPO=Repository name [smart-library-update-center]: 
if "%REPO%"=="" set REPO=smart-library-update-center
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0SET_GITHUB_REPOSITORY.ps1" -Owner "%OWNER%" -Repository "%REPO%"
pause
