@echo off&title add remote
@setlocal enableextensions
setlocal enabledelayedexpansion
@cd /d "%~dp0"

:: 执行命令 ./git-add-all.bat

:: 添加多个远程地址
set github=git@github.com:zhengjiaao/temp.git
set gitee=git@gitee.com:zhengjiaao/temp.git

git remote rm origin

git remote add origin %github%

git remote add all %github%

git remote set-url --add all %gitee%
