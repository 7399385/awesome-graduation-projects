<!--#include FILE="inc/upload.inc"-->
<html>
<head>
<title>�ļ��ϴ�</title>
<link rel="stylesheet" href="admin.css" type="text/css">
</head>
<body leftmargin="5" topmargin="3" >

<% 
response.write "<FONT color=red>"&upNum&"</font>"
dim upload,file,formName,formPath,iCount,filename,fileExt
set upload=new upload_5xSoft ''�����ϴ�����

 formPath=upload.form("filepath")
 ''��Ŀ¼���(/)
 if right(formPath,1)<>"/" then formPath=formPath&"/" 


for each formName in upload.file ''�г������ϴ��˵��ļ�
 set file=upload.file(formName)  ''����һ���ļ�����
 if file.filesize<100 then
 	response.write "<font size=2>����ѡ����Ҫ�ϴ����ļ���[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]</font>"
	response.end
 end if
 	
 if file.filesize>30000 then
 	response.write "<font size=2>�ļ���С���������� 30,000K��[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]</font>"
	response.end
 end if

 fileExt=lcase(right(file.filename,4))

 if fileEXT<>".gif" and fileEXT<>".jpg" and fileEXT<>".zip" and fileEXT<>".rar" and fileEXT<>".doc" and fileEXT<>".xsl" and fileEXT<>".exe" and fileEXT<>".ppt"then
 	response.write "<font size=2>�ļ���ʽ����ȷ��[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]</font>"
	response.end
 end if 

 randomize
 ranNum=int(90000*rnd)+10000
 filename=formPath&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&ranNum&fileExt
 
' filename=formPath&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&file.FileName
 
 if file.FileSize>0 then         ''��� FileSize > 0 ˵�����ļ�����
  file.SaveAs Server.mappath(FileName)   ''�����ļ�
'  response.write file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" �ɹ�!<br>"
 end if
 set file=nothing
next
set upload=nothing  ''ɾ���˶���

Htmend FileName

sub HtmEnd(Msg)
 set upload=nothing
 response.write "·����<input type=""text"" size=""45"" value="""&Msg&""" name=softpath> <a href=# onclick=history.go(-1)>�����ϴ�</a>"
 response.end
end sub
%>
</body>
</html>