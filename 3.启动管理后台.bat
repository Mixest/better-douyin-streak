@echo off
title �����ƶ��Զ����� - ���� Web ������̨
cd /d "%~dp0"

echo =======================================================
echo        �����ƶ��Զ����� - ���� Web ������̨
echo =======================================================
echo.

if not exist ".env" (
    if exist ".env.example" (
        copy .env.example .env >nul
    ) else (
        echo PORT=8000 > .env
        echo HOST=0.0.0.0 >> .env
        echo AUTH_TOKEN=spark_secret_token_change_me >> .env
    )
)

echo [*] �������� Web ������̨����...
echo [*] �����ַ: http://127.0.0.1:8000
echo.
echo [*] �����Զ���Ĭ�������...
start http://127.0.0.1:8000

echo.
echo [��ʾ] ���ִ˴��ڿ�������ά�ֺ�̨���񡣹رմ��ڽ�ֹͣ����
echo =======================================================
echo.
"%~dp0.venv\Scripts\python.exe" app.py


pause
