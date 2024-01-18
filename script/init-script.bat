@echo off

REM 检测操作系统类型
ver | findstr /i "Windows" > nul
if %errorlevel% neq 0 (
    echo Unsupported operating system
    exit /b 1
)

REM 获取当前脚本所在目录的绝对路径
set script_dir=%~dp0

REM 构建配置文件的绝对路径
set config_dir=%script_dir%..\config

REM 切换工作目录到配置文件目录
pushd %config_dir%

REM 复制 Git 钩子脚本到 .git/hooks/ 目录
copy "git-hooks\pre-commit" "%script_dir%..\.git\hooks\"

REM 切回原来的工作目录
popd

REM 输出提示信息
echo Git hook installed and configured on Windows
