@echo off

REM 检测操作系统类型
ver | findstr /i "Windows" > nul
if %errorlevel% neq 0 (
    echo Unsupported operating system
    exit /b 1
)

REM 复制 Git 钩子脚本到 .git/hooks/ 目录
copy config\git-hooks\pre-commit .git\hooks\

REM 输出提示信息
echo Git hook installed and configured on Windows
