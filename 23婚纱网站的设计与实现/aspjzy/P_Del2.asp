<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(Products_B)
dim ArticleID,Action,sqlDel,rsDel,FoundErr,ErrMsg,ObjInstalled
ID=trim(request("ID"))
Action=Trim(Request("Action"))

if ID="" or Action<>"Del" then
	TwScript("��ѡ��Ҫɾ�������!!!")
end if

if instr(ID,",")>0 then
	idArr=split(ID)
	for i = 0 to ubound(idArr)
		call DelArticle(clng(idarr(i)))
	next
else
	call DelArticle(clng(ID))
end if
if PurviewChecked=False Then
	Response.Write("<script>alert('ɾ���ɹ�');window.location='P_manages2.asp'</script>")
Else
	twscript("����δ�ɹ�!!!")
End IF
sub DelArticle(ID)
	PurviewChecked=False
	sqlDel="select * from Products where ID=" & CLng(ID)
	Set rsDel= Server.CreateObject("ADODB.Recordset")
	rsDel.open sqlDel,conn,1,3
	dim fso
	'�����ǿ�ʼɾ��ͼƬ�Ĵ�������
	Set fso = CreateObject("Scripting.FileSystemObject")
	'����ͼ
	smpic=rsDel("P_Smallpic")
	'��ͼƬ
	bigpic=rsDel("P_Bigpic")
	'ɾ������ͼ
	if smpic<>Empty then
		if fso.fileexists(server.mappath(smpic)) then
			Set thisfile = fso.GetFile(server.mappath(smpic)) 
			thisfile.Delete True
		end if
	End IF
	'ɾ����ͼƬ
	if bigpic<>Empty then
		if fso.fileexists(server.mappath(bigpic)) then
			Set thisfile = fso.GetFile(server.mappath(bigpic)) 
			thisfile.Delete True
		end if
	End if
	Set fso = nothing
rsDel.delete
rsDel.update
set rsDel=nothing
end sub
%>