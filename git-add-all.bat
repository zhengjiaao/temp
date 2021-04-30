@echo off&title add remote
@setlocal enableextensions
setlocal enabledelayedexpansion
@cd /d "%~dp0"

:: 执行命令 ./git-add-all.bat

:: 添加多个远程地址
set github=git@github.com:zhengjiaao/temp.git
set gitee=git@gitee.com:zhengjiaao/temp.git
set gitlab=

:: 添加远程地址 解决github无法连接问题
if defined github (
    git remote rm origin
    echo add Remote github: %github%
    git remote add github %github%
    git remote add origin %github%
)

if defined gitee (
    echo add Remote gitee: %gitee%
    git remote add gitee %gitee%
    git remote set-url --add origin %gitee%
)

if defined gitlab (
    echo add Remote gitlab: %gitlab%
    git remote add gitlab %gitlab%
    git remote set-url --add origin %gitlab%
)



