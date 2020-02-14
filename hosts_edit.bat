@echo off  
  
:: BatchGotAdmin  
:-------------------------------------  
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (  
    echo Requesting administrative privileges...  
    goto UACPrompt  
) else ( goto gotAdmin )  
  
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
  
    "%temp%\getadmin.vbs"  
    exit /B  
  
:gotAdmin  
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )  
    pushd "%CD%"  
    CD /D "%~dp0"  
@echo off
echo  ------´ò¿ª²¢±à¼­hosts------
if exist "%systemroot%\SysWOW64" goto  x64 
goto x86
:x86
start "" notepad "%systemroot%\System32\drivers\etc\hosts"
:x64
start "" notepad "%systemroot%\System32\drivers\etc\hosts"
exit