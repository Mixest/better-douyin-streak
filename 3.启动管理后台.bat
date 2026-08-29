@echo off

title 抖音云端自动续火花 - 启动 Web 管理控制台

cd /d "%~dp0"



echo =======================================================
echo        抖音云端自动续火花 - 启动 Web 管理控制台
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



echo [*] 正在启动 Web 管理控制台...
echo [*] 地址: http://127.0.0.1:8000
echo.
echo [*] 等待自动打开默认浏览器...
start http://127.0.0.1:8000



echo.
echo [提示] 请保持此窗口开启以维持后台服务。关闭窗口将停止运行
echo =======================================================
echo.

"%~dp0.venv\Scripts\python.exe" app.py



pause