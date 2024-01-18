#!/bin/bash

# 检测操作系统类型
os_type=$(uname)

# 如果是 Linux 或者 Unix 系统
if [ "$os_type" == "Linux" ] || [ "$os_type" == "Darwin" ]; then
    cp config/git-hooks/pre-commit .git/hooks/
    chmod +x .git/hooks/pre-commit
    echo "Git hook installed and configured on $os_type"
# 如果是 Windows 系统
elif [ "$os_type" == "MINGW64_NT-10.0" ]; then
    # 在 Windows 上你可能需要使用 cp 命令的替代
    # 例如，可以使用 PowerShell 的 Copy-Item 命令
    Copy-Item -Path config/git-hooks/pre-commit -Destination .git/hooks/ -Force
    # Windows 不需要为脚本添加额外的执行权限
    echo "Git hook installed and configured on $os_type"
else
    echo "Unsupported operating system: $os_type"
fi
