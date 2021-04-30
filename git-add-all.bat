@echo off&title add remote
@setlocal enableextensions
setlocal enabledelayedexpansion
@cd /d "%~dp0"

:: 执行命令 ./git-add-all.bat

:: 添加多个远程地址
set github=git@github.com:zhengjiaao/temp.git
set gitee=git@gitee.com:zhengjiaao/temp.git

:: 添加远程地址 解决github无法连接问题
git remote rm origin

git remote add origin %github%

git remote set-url --add origin %gitee%

git remote add github %github%

git remote add gitee %gitee%



