@echo off
color 9F
mode con cols=70 lines=35
set sz=%~n0
title (��ͨ�û�)%SZ%
reg query "HKU\S-1-5-19" >nul 2>&1 || (goto of)
goto win10

:of
cls
echo.
echo ���Ҽ����Թ���Ա������С�
echo.
echo.
goto Q

:win10
title (����Ա)%SZ%
for /f "delims=" %%i in ('ver') do (set ver0=%%i)
set ver1=%ver0:~-11%
set ver2=%ver1:~0,2%
set ver3=%ver1:~0,3%
if "%ver2%"=="10" cls & goto 100
if "%ver3%"==" 10" cls & goto 100
echo ��������ϵͳ����Win10
set /p wm10="��1������������˳�>��"
if "%wm10%"=="1" cls & goto 100
exit

:100
Rem Ĭ������
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
echo        �����ߣ�С��936��
echo ============================================================
echo.���������ڻָ�ϵͳĬ����Կ��ר���ڻָ���kms�ƻ������ü���
echo ============================================================
timeout /t 5
goto 1

:1
echo ��ע����Ļ����ļ���������ܱ������ڸ��ǡ������С���
echo        (������϶࣬�ɲ�ȡ����Enter������)
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
echo ��������ϵͳ����Win10���������Ҳ�֪����ĳ���汾��
echo �����ز���װ΢���������ʽ��Win10
goto Q

:2
slmgr.vbs -ato >nul
if "%errorlevel%"=="0" goto 3
echo ��������ϵͳ�޷����ּ����δ������
goto Q
:3
slmgr.vbs -dlv
echo �ָ�Ĭ����Կ�ɹ�������ɹ�����ʾ�������ü��
slmgr.vbs -xpr
goto Q

:Q
echo ��������˳���
pause>nul
exit
