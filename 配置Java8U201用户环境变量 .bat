@echo 配置Java8U201用户环境变量 
确认当前电脑安装的是Java8U201后按任意键继续
@echo off
setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_201"
setx CLASSPATH ".;%JAVA_HOME%\lib;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar"
setx Path %Path%;"%JAVA_HOME%\bin"
setx Path %Path%;"%JAVA_HOME%\jre\bin"