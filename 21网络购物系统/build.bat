rem ��ȷ���ڴ�֮ǰ���ú�jdk��tomcat����

rem ���޸�e:/tomcat4.1 Ϊ����tomcat��ַ
set CLASSPATH=e:/tomcat4.1/common/lib/servlet.jar;%CLASSPATH%
rem ���޸�e:/jdk1.4.1 Ϊ����jdk��ַ
set PATH=E:/jdk1.4.1/bin;%PATH%
javac -d ..\WEB-INF\classes src/*.java   
