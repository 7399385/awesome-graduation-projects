<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(Products_B)
'-------------------------------------------------------��ʼ����
ID=Trim(Request.Form("ID"))								'ID����
BigClassName=trim(request.form("BigClassName"))			'��������
SmallClassName=trim(request.form("SmallClassName"))		'С������
P_Item=trim(request.form("P_Item"))						'��Ʒ���Ž���
P_Name=trim(request.form("P_Name"))						'��Ʒ���ƽ���
P_Other1_Name=trim(request.form("P_Other1_Name"))		'��̨�ֶν���1
P_Other2_Name=Trim(Request.Form("P_Other2_Name"))		'��̨�ֶν���2
P_Other3_Name=trim(request.form("P_Other3_Name"))		'��̨�ֶν���3
smpic=trim(Request.Form("smpic"))						'СͼƬ����
bigpic=trim(request.form("bigpic"))						'��ͼƬ����
Content=trim(request.Form("Content"))					'��ע����
P_Hits=trim(request.form("P_Hits"))						'���������
P_Time=Trim(Request.form("P_Time"))						'������ڽ���
P_Index=Trim(Request.form("P_Index"))					'�Ƿ���Ϊ��ҳ����
P_Register=Trim(Request.form("P_Register"))				'�Ƿ�Ϊ��Ա��Ʒ����
'-------------------------------------------------------'English�ֶν���
P_Name_En=trim(request.form("P_Name_En"))
P_Other1_Name_En=trim(request.form("P_Other1_Name_En"))
P_Other2_Name_En=trim(request.form("P_Other2_Name_En"))
P_Other3_Name_En=trim(request.form("P_Other3_Name_En"))
Content_En=trim(request.form("Content_En"))
'-------------------------------------------------------��������
IF P_Name=Empty or smpic=Empty or bigpic=Empty then
	twScript("��*�ű�����д")
End IF

IF P_Index=Empty Then
	P_Index="False"
End IF

IF P_Register=Empty Then
	P_Register="False"
End IF

Set Rs=Conn.execute("select Max(P_X) as PageID from Products")
		PageID=Rs("PageID")
		IF PageID<>Empty Then
			PageID=PageID
		Else
			PageID=1
		End IF
Call twClose()
	
set rs=server.createobject("adodb.recordset")
	if request("action")="add" then
		sql="select * from Products where (ID is null)" 
		rs.open sql,conn,1,3
		rs.addnew
			call SaveData
			rs("P_X")=PageID+1
		rs.update
		rs.close
		set rs=nothing
	Tw("<Script>")
	Tw("if(!confirm('��Ʒ��ӳɹ�;�Ƿ������Ӳ�Ʒ!!!')){window.location='P_manages.asp'}else{window.location='P_Add.asp'}")
	Tw("</Script>")
	Response.End
	elseif request("action")="Modify" then
  		if ID<>"" then
			sql="select * from Products where ID=" & ID
			rs.open sql,conn,1,3
			if not (rs.bof and rs.eof) then
					call SaveData
				rs.update
				rs.close
				set rs=nothing
				Response.Write("<Script>alert('�޸ĳɹ�');window.location='P_manages.asp?"&session("Se")&"';</Script>")
				Response.End
 			else
				TwScript("�Ҳ����˲�Ʒ�������Ѿ���������ɾ����")
			end if
		else
			TwScript("����ȷ��ID��ֵ")
		end if
	else
		TwScript("û��ѡ������")
	end if
	
sub SaveData()
	rs("Big_Class")=BigClassName
	rs("Small_Class")=SmallClassName
	rs("P_Item")=P_Item
	rs("P_Name")=P_Name
	rs("P_Other1_Name")=P_Other1_Name
	rs("P_Other2_Name")=P_Other2_Name
	rs("P_Other3_Name")=P_Other3_Name
	rs("P_Smallpic")=smpic
	rs("P_Bigpic")=bigpic
	rs("P_Content")=Content
	'rs("P_Hits")=P_Hits
	rs("P_Time")=P_Time
	rs("P_Index")=P_Index
	rs("P_Register")=P_Register
	'----------------------------
	rs("P_Name_En")=P_Name_En
	rs("P_Other1_Name_En")=P_Other1_Name_En
	rs("P_Other2_Name_En")=P_Other2_Name_En
	rs("P_Other3_Name_En")=P_Other3_Name_En
	rs("P_Content_En")=Content_En
end sub
%>