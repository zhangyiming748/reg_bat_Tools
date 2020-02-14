@echo off
echo  ------´ò¿ª²¢±à¼­hosts------
if exist "%systemroot%\SysWOW64" goto  x64 
goto x86
:x86
start "" notepad "%systemroot%\System32\drivers\etc\hosts"
:x64
start "" notepad "%systemroot%\System32\drivers\etc\hosts"
exit