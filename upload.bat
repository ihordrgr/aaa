@echo off
title Загрузка на GitHub - ОДНА КОМАНДА
color 0A
echo.
echo 🚀 ЗАГРУЖАЮ НА GITHUB...
echo.

cd /d "%~dp0"

git init && git add . && git commit -m "Bot Management Dashboard" && git branch -M main && git remote add origin https://github.com/ihordrgr/aaa.git && git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ Ошибка! Попробуй принудительную загрузку:
    git push -f origin main
)

echo.
echo ✅ ГОТОВО! Проект загружен: https://github.com/ihordrgr/aaa
pause