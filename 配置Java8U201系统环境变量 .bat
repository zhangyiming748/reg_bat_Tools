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
@echo 配置Java8U201系统环境变量
pause
确认当前电脑安装的是Java8U201后按任意键继续
@echo off
setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_201"
setx /M CLASSPATH ".;%JAVA_HOME%\lib;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar"
setx /M Path %Path%;"%JAVA_HOME%\bin"
setx /M Path %Path%;"%JAVA_HOME%\jre\bin"