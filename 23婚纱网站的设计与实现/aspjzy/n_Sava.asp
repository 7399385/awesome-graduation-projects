<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(News_B)
'-------------------------------------------------------��ʼ����
ID=Trim(Request.Form("ID"))								'ID����
BigClassName=trim(request.form("BigClassName"))			'��������
SmallClassName=trim(request.form("SmallClassName"))		'С������
N_title=trim(request.form("N_title"))					'��Ѷ����
N_fabu=trim(request.form("N_fabu"))						'��Ѷ������
N_Time=Trim(Request.Form("N_Time"))						'��������
Content=trim(request.form("Content"))					'����
N_Hits=trim(request.form("N_Hits"))						'���������
N_Index=Trim(Request.form("N_Index"))					'�Ƿ���Ϊ��ҳ����
N_file=trim(request("N_file"))
'-------------------------------------------------------ͼƬ
d_picture=Request("d_picture")
d_originalfilename=Request("d_originalfilename")
d_savefilename=Request("d_savefilename")
d_savepathfilename=Request("d_savepathfilename")
'-------------------------------------------------------��������

IF SmallClassName=Empty Then 
	TwScript("��ѡ����Ѷ����")
End IF

IF N_title=Empty  then
	twScript("��Ѷ��������ݲ���Ϊ��")
End IF

IF IsNumeric(N_Hits)=False Then
	TwScript("���������Ϊ����")
End IF



IF N_Index=Empty Then
	N_Index="0"
End IF

Set Rs=Conn.execute("select Max(N_X) as PageID from News")
		PageID=Rs("PageID")
		IF PageID<>Empty Then
			PageID=PageID
		Else
			PageID=1
		End IF 
Call twClose()
	
set rs=server.createobject("adodb.recordset")
	if request("action")="add" then
		
		session("News")=session("News")+1
		IF session("News")>1 Then
			Tw("<Script>alert('��Ѷ��ӳɹ�');window.location='N_add.asp'</Script>")
			Response.End()
		End IF
		
		sql="select * from News where (ID is null)" 
		rs.open sql,conn,1,3
		rs.addnew
			call SaveData
			rs("N_X")=PageID+1
		rs.update
		rs.close
		set rs=nothing
	Tw("<Script>")
	Tw("if(!confirm('��Ѷ��ӳɹ�;�Ƿ���������Ѷ!!!')){window.location='N_manages.asp'}else{window.location='N_Add.asp?Big_Class="&BigClassName&"&Small_Class="&SmallClassName&"'}")
	Tw("</Script>")
	Response.End()
	elseif request("action")="Modify" then
  		if ID<>"" then
			sql="select * from News where ID=" & ID
			rs.open sql,conn,1,3
			if not (rs.bof and rs.eof) then
					call SaveData
				rs.update
				rs.close
				set rs=nothing
				Response.Write("<Script>alert('�޸ĳɹ�!');window.location='"&request("BackOldUrl")&"';</Script>")
				Response.End
 			else
				TwScript("�Ҳ�������Ѷ�������Ѿ���������ɾ����")
			end if
		else
			TwScript("����ȷ��ID��ֵ")
		end if
	else
		TwScript("û��ѡ������")
	end if
	Tw(ID)
	Response.End()
sub SaveData()
	rs("Big_Class")=BigClassName
	rs("Small_Class")=SmallClassName
	rs("N_title")=N_title
	rs("N_fabu")=N_fabu
	rs("N_Time")=N_Time
	rs("N_Content")=Content
	rs("N_Hits")=N_Hits
	rs("N_Index")=N_Index
end sub
%>