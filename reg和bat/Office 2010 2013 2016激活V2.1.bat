@echo off
set sz=%~n0
title (��ͨ�û�)%SZ%
color 9F
mode con cols=70 lines=35
reg query "HKU\S-1-5-19" >nul 2>&1 || (goto of)
goto 100
:of
echo.
echo ���Ҽ����Թ���Ա������С�
echo.
pause
exit
:100
::�޸���������ݣ�����ѡ����ʹ�õ�KMS����������������˶�Σ�������Ч

::set KMS_Sev=192.168.2.8
::set KMS_Sev=1.2.7.0
set KMS_Sev=kms.lotro.cc
::set KMS_Sev=54.223.212.31
::set KMS_Sev=kms.guowaifuli.com
::set KMS_Sev=mhd.kmdns.net
::set KMS_Sev=xykz.f3322.org
::set KMS_Sev=106.186.25.239
::set KMS_Sev=110.noip.me
::set KMS_Sev=3rss.vicp.net:20439
::set KMS_Sev=45.78.3.223
::set KMS_Sev=kms.chinancce.com
::set KMS_Sev=kms.didichuxing.com
::set KMS_Sev=skms.ddns.net
::set KMS_Sev=zh.us.to
::set KMS_Sev=franklv.ddns.net
::set KMS_Sev=k.zpale.com
::set KMS_Sev=m.zpale.com
::set KMS_Sev=mvg.zpale.com
::set KMS_Sev=122.226.152.230
::set KMS_Sev=222.76.251.188
::set KMS_Sev=annychen.pw
::set KMS_Sev=heu168.6655.la
::set KMS_Sev=kms.aglc.cc
::set KMS_Sev=kms.landiannews.com
::set KMS_Sev=kms.shuax.com
::set KMS_Sev=kms.xspace.in
::set KMS_Sev=winkms.tk
::set KMS_Sev=wrlong.com

::======================= ��������������� ======================
setlocal EnableDelayedExpansion&color 3e & cd /d "%~dp0"
title KMS_Activation_for_Office2010_2013_2016 - [hnfeng]
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
call :strset
cls
if not defined str1 goto en
echo %bar%%bar%%bar%
echo               %str0%
echo.&echo %str1%
echo.&echo %str2%
echo    Office_KMS_Activation.bat
echo.&echo %str3%
echo    Office_KMS_Activation+GVLK.bat
echo.&echo %str4%
echo.&echo %str5%
echo.&echo %str6%
echo.&echo %str7%
echo.&echo %str8%
echo.&echo %str9%
set space=                         
echo.&echo %space%%space%2015.9 hnfeng
echo %bar%%bar%%bar%
timeout /t 30
:en

call :GetOfficePath 14 Office2010
call :ActOffice 14 Office2010
echo %bar%%bar%

call :GetOfficePath 15 Office2013
call :ActOffice 15 Office2013
echo %bar%%bar%

if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" set _Office16Path=%ProgramFiles%\Microsoft Office\Office16
if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" set _Office16Path=%ProgramFiles(x86)%\Microsoft Office\Office16
if DEFINED _Office16Path (echo.&echo %str18% Office2016 %str13%
    call :ActOffice 16 Office2016
  ) else (echo.&echo %str19% Office2016 %str13%)

echo %bar%%bar%

echo.&pause
exit

:ActOffice
if DEFINED _Office%1Path (
    cd /d "!_Office%1Path!"
    if %1 EQU 16 call :Licens16
    echo.&echo %str12% %2 %str13%...&echo.
    cscript //nologo ospp.vbs /sethst:%KMS_Sev% >nul
    cscript //nologo ospp.vbs /act | find /i "successful" && (
        echo.&echo ***** %2 %str14% ***** & echo.) || (echo.&echo ***** %2 %str15% ***** & echo.)
)    
cd /d "%~dp0"
goto :EOF

:GetOfficePath
echo.&echo %str16% %2 %str17%...
set _Office%1Path=
set _Reg32=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%1.0\Common\InstallRoot
set _Reg64=HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%1.0\Common\InstallRoot
reg query "%_Reg32%" /v "Path" > nul 2>&1 && FOR /F "tokens=2*" %%a IN ('reg query "%_Reg32%" /v "Path"') do SET "_OfficePath1=%%b"
reg query "%_Reg64%" /v "Path" > nul 2>&1 && FOR /F "tokens=2*" %%a IN ('reg query "%_Reg64%" /v "Path"') do SET "_OfficePath2=%%b"
if DEFINED _OfficePath1 (if exist "%_OfficePath1%ospp.vbs" set _Office%1Path=!_OfficePath1!)
if DEFINED _OfficePath2 (if exist "%_OfficePath2%ospp.vbs" set _Office%1Path=!_OfficePath2!)
set _OfficePath1=
set _OfficePath2=
if DEFINED _Office%1Path (echo.&echo %str18% %2 %str13%) else (echo.&echo %str19% %2 %str13%)
goto :EOF

:Licens16
for /f %%x in ('dir /b ..\root\Licenses16\project???vl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\standardvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\visio???vl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\project???vl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\standardvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\visio???vl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
cscript ospp.vbs /inpkey:NYH39-6GMXT-T39D4-WVXY2-D69YY >nul
cscript ospp.vbs /inpkey:7WHWN-4T7MP-G96JF-G33KR-W8GF4 >nul
cscript ospp.vbs /inpkey:RBWW7-NTJD4-FFK2C-TDJ7V-4C2QP >nul
cscript ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul
cscript ospp.vbs /inpkey:YG9NW-3K39V-2T3HJ-93F3Q-G83KT >nul
cscript ospp.vbs /inpkey:PD3PC-RHNGV-FXJ29-8JK7D-RJRJK >nul
goto :EOF

:strset
chcp | find "936" > nul && (
	set bar=*************************
	set str0=���� �������� KMS ��ʽ���� Office ϵ�в�Ʒ
	set str1=1��������������ڼ��� VL�棨VOL,��ͻ��棩Office2010��2013��2016���Ѻ�����תKMS��
	set str2=2�������Ĭ�ϰ�װ��Office VL�棨����δ�����������MAK��������ʹ�ã�
	set str3=3������㰲װ��Office VL�����������������MAK������ʹ�ã�
	set str4=4������㰲װ�������۰��Office������ʹ��ת������ת��ΪVL�棬�����°�װVL��
	set str5=5��֧��ϵͳ��ͬʱ��װ�в�ͬ�汾��Office������2010+2013��
	set str6=6��֧��32λϵͳ��װ32λOffice��64λϵͳ��װ32λ��64λOffice
	set str7=7��֧���Զ����Office��װ·���������Office��װ���������̣�
	set str8=8�����˲��Ը����������κα�֤�����Լ����÷��գ��������Ƿ�ʹ��
	set str9=9�����������������ʱ���Զ����������� Ctrl+C �˳�
	set str10=���ڰ�װ
	set str11=ϵ�в�Ʒ��Կ�����Ե�...
	set str12=���Լ���
	set str13=ϵ�в�Ʒ
	set str14=����ɹ�
	set str15=����ʧ��
	set str16=���ڼ��
	set str17=ϵ�в�Ʒ�İ�װ·��
	set str18=�ѷ���
	set str19=δ����
)
chcp | find "950" > nul && (
	set bar=*************************
	set str0=�Τ_ �§�B�z KMS �覡�ҥ� Office �t�C���~
	set str1=1�B�ӧ�B�z�ȥΤ_�ҥ� VL���]VOL,�j�Ȥ᪩�^Office2010�B2013�B2016
	set str2=2�B�p�G�A�q�{�w�˪�Office VL���]�Ҧp����J�L��L��MAK�^�A��ĳ�ϥΡJ
	set str3=3�B�p�G�A�w�˪�Office VL�����g��J�L��L��MAK�A��ĳ�ϥΡJ
	set str4=4�B�p�G�A�w�˪��O�s�⪩��Office�A�Х��ϥ��ഫ�u���ഫ��VL���A�έ��s�w��VL��
	set str5=5�B����t�Τ��P�ɦw�˦����P������Office�]�Ҧp2010+2013�^
	set str6=6�B���32��t�Φw��32��Office�A64��t�Φw��32���64��Office
	set str7=7�B����۩w�q��Office�w�˸��|�]�Ҧp��Office�w�˨��L�ϽL�^
	set str8=8�B���H����ӧ�B�z�@����O���A�Цۤv�r�u���I�A�}�M�w�O�_�ϥ�
	set str9=9�B�����N���~��]�W�ɦZ�۰��~��^�A�� Ctrl+C �h�X
	set str10=���b�w��
	set str11=�t�C���~�K�_�A�еy��...
	set str12=���ձҥ�
	set str13=�t�C���~
	set str14=�ҥΦ��\
	set str15=�ҥΥ���
	set str16=���b�˴�
	set str17=�t�C���~���w�˦�m
	set str18=�w�o�{
	set str19=���o�{
)
if not defined str1 (
	set bar=*************************
	set str1=
	set str10=Installing
	set str11=GVLK, Just a moment, please...
	set str12=Trying to activate
	set str13=series products
	set str14=activation success
	set str15=activation failure
	set str16=Identifying install_path of
	set str17=series products
	set str18=Have been found
	set str19=Not found
)
goto :EOF
