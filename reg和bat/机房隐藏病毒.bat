@echo off
attrib -s -r -h *.* /s /d
del /q *.exe *.in?
chkdsk /r /f
exit
