@echo ����Java8U201�û��������� 
ȷ�ϵ�ǰ���԰�װ����Java8U201�����������
@echo off
setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_201"
setx CLASSPATH ".;%JAVA_HOME%\lib;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar"
setx Path %Path%;"%JAVA_HOME%\bin"
setx Path %Path%;"%JAVA_HOME%\jre\bin"