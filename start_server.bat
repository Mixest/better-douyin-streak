@echo off
cd /d "%~dp0"
echo [%date% %time%] starting web admin >> server.log 2>&1
".venv\Scripts\python.exe" app.py >> server.log 2>&1
