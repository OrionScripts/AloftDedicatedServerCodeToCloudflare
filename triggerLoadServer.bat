@echo off
:start
start "" "I:\aloftdedicatedserver\Aloft\AloftServerNoGuiLoad.exe"

:watchdog
timeout /t 10 /nobreak >nul
tasklist | find /i "AloftServerNoGuiLoad.exe" >nul
if %errorlevel% neq 0 (
    echo Server process not found! Restarting system...
    shutdown /r /t 10
    exit
)
goto watchdog