@echo off

title 抖音云端自动续火花 - 同步登录凭证到云服务器

cd /d "%~dp0"



"%~dp0.venv\Scripts\python.exe" sync_to_server.py

