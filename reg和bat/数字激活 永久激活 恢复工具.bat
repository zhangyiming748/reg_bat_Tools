@echo off
color 9F
mode con cols=70 lines=35
set sz=%~n0
title (普通用户)%SZ%
reg query "HKU\S-1-5-19" >nul 2>&1 || (goto of)
goto win10

:of
cls
echo.
echo 请右键“以管理员身份运行”
echo.
echo.
goto Q

:win10
title (管理员)%SZ%
for /f "delims=" %%i in ('ver') do (set ver0=%%i)
set ver1=%ver0:~-11%
set ver2=%ver1:~0,2%
set ver3=%ver1:~0,3%
if "%ver2%"=="10" cls & goto 100
if "%ver3%"==" 10" cls & goto 100
echo 错误：您的系统不是Win10
set /p wm10="按1继续，任意键退出>："
if "%wm10%"=="1" cls & goto 100
exit

:100
Rem 默认设置
set qw1=YTMG3-N6DKC-DKB77-7M9GH-8HVX7
set qw2=VK7JG-NPHTM-C97JM-9MPGT-3V66T
set qw3=N2434-X9D7W-8PF6X-8DV9T-8TYMD
set qw4=XGVPP-NMH47-7TTHJ-W3FW7-8HV2C
set qw5=YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY
set qw6=BT79Q-G7N6G-PGBYW-4YWX6-6F4BT
set qw7=2B87N-8KFHP-DKV6R-Y2C8J-PKCKT
set qw8=WGGHN-J84D6-QYCPR-T7PJ7-X766F
set qw9=FWN7H-PF93Q-4GGP8-M8RF3-MDWWW
set qw10=84NGF-MHBT6-FXBX8-QWJK7-DRR8H
cls
echo.
echo        （作者：小程936）
echo ============================================================
echo.本工具用于恢复系统默认密钥，专用于恢复被kms破坏的永久激活
echo ============================================================
timeout /t 5
goto 1

:1
echo 请注意屏幕中央的激活弹窗，可能被本窗口覆盖。激活中……
echo        (激活弹窗较多，可采取长按Enter键无视)
slmgr.vbs -upk >nul
slmgr.vbs -ckms >nul
slmgr.vbs -ipk %qw1% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw2% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw3% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw4% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw5% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw6% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw7% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw8% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw9% >nul
if "%errorlevel%"=="0" goto 2
slmgr.vbs -ipk %qw10% >nul
if "%errorlevel%"=="0" goto 2
echo 错误：您的系统不是Win10？或者是我不知道的某个版本？
echo 请下载并安装微软官网的正式版Win10
goto Q

:2
slmgr.vbs -ato >nul
if "%errorlevel%"=="0" goto 3
echo 错误：您的系统无法数字激活或未联网。
goto Q
:3
slmgr.vbs -dlv
echo 恢复默认密钥成功！激活成功将显示：“永久激活”
slmgr.vbs -xpr
goto Q

:Q
echo 按任意键退出。
pause>nul
exit
