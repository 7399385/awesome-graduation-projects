<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(News_B)
ID=Request("ID")
ClassName=Request("ClassName")
Sel=Request("Sel")

if ClassName<>Empty then
	ClassName_key=Request.form("ClassName_key")
	ClassName_En=Request.form("ClassName_En")
	order=Request("order")
	'ȡ�����ֵ+++++++++++++++++++++++++++++++++++++++++++++++++++
	Set Rs=Conn.execute("select Max(Xu) as PageID from N_Class")
		PageID=Rs("PageID")
		IF PageID<>Empty Then
			PageID=PageID
		Else
			PageID=1
		End IF
	Call twClose()
	'����+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	'����
	if ClassName="Big" then
		if order<>Empty Then
			'��IDȡ����ǰ��ID��++++++++++++++++++++++++++++++++++
			Set B_Order=Conn.execute("select * from N_Class Where ID="&ID&"")
			IF B_Order.Eof then
				twScript("����ʧ��,��Ѷ������û�д�ID��")
			End IF
			B_b=B_Order("Xu")
			IF Order="up" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select top 1 * from N_Class Where Xu<"&B_b&" and ParentClassID=0 Order by Xu Desc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update N_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update N_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
				response.Redirect(request.ServerVariables("HTTP_REFERER"))
				'������һ��ID++++++++++++++++++++++++++++++++++++++++
			Elseif Order="dowm" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select Top 1 * from N_Class Where Xu>"&B_b&" and ParentClassID=0 Order by Xu asc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update N_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update N_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
				response.Redirect(request.ServerVariables("HTTP_REFERER"))
				B1_Order.Close
				Set B1_Order=NotHing
				'������һ��ID++++++++++++++++++++++++++++++++++++++++
			End if
			B_Order.Close
			Set B_Order=Nothing
		Else
			'��Ӵ���+++++++++++++++++++++++++++++++++++++++++++++++++
			if Sel="Add" then
				Conn.execute("insert into N_Class(ClassName,ParentClassID,E_ClassName,Xu)values('"&ClassName_key&"',0,'"&ClassName_En&"',"&PageID+1&")")
				Response.Write("<Script>alert('��Ѷ������ӳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'�޸Ĵ���+++++++++++++++++++++++++++++++++++++++++++++++++
			Elseif Sel="Modify1" then
				Conn.execute("Update N_Class Set ClassName='"&ClassName_key&"',E_ClassName='"&ClassName_En&"' Where ID="&ID&" ")
				Response.Write("<Script>alert('��Ѷ�����޸ĳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'ɾ������ʹ�����Ѷһ��ɾ��+++++++++++++++++++++++++++++++
			Elseif Sel="Delete" then
				'ɾ��������Ѷ+++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from News Where Big_Class="&ID&"")
				'����+++++++++++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from N_Class Where ParentClassID="&ID&"")
				Conn.execute("delete from N_Class Where ID="&ID&"")
				Response.Write("<Script>alert('��Ѷ����ʹ�����Ѷ�ɹ�!!!');window.location='N_Class.asp'</Script>")
				Response.End()
			End IF
			'�����������,�޸�,ɾ��+++++++++++++++++++++++++++++++++++
		End if
	'С��
	Elseif ClassName="Small" then
		if order<>Empty Then
			'��IDȡ����ǰ��ID��++++++++++++++++++++++++++++++++++
			Set B_Order=Conn.execute("select * from N_Class Where ID="&ID&"")
			IF B_Order.Eof then
				twScript("����ʧ��,��Ѷ������û�д�ID��")
			End IF
			B_b=B_Order("Xu")
			B_b_P=B_Order("ParentClassID")
			IF Order="up" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select top 1 * from N_Class Where Xu<"&B_b&" and ParentClassID="&B_b_P&" Order by Xu Desc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update N_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update N_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
				response.Redirect(request.ServerVariables("HTTP_REFERER"))
				'������һ��ID++++++++++++++++++++++++++++++++++++++++
			Elseif Order="dowm" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select Top 1 * from N_Class Where Xu>"&B_b&" and ParentClassID="&B_b_P&" Order by Xu asc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update N_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update N_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
				response.Redirect(request.ServerVariables("HTTP_REFERER"))
				B1_Order.Close
				Set B1_Order=NotHing
				'������һ��ID++++++++++++++++++++++++++++++++++++++++
			End if
			B_Order.Close
			Set B_Order=Nothing
		Else
			BigID=Request.Form("BigID")
			'���С��+++++++++++++++++++++++++++++++++++++++++++++++++
			if Sel="Add" then
				Conn.execute("insert into N_Class(ClassName,ParentClassID,E_ClassName,Xu)values('"&ClassName_key&"',"&BigID&",'"&ClassName_En&"',"&PageID+1&")")
				Response.Write("<Script>alert('��ѶС����ӳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'�޸�С��+++++++++++++++++++++++++++++++++++++++++++++++++
			ElseIF Sel="Modify1" then
				Conn.execute("Update N_Class Set ClassName='"&ClassName_key&"',E_ClassName='"&ClassName_En&"',ParentClassID="&BigID&" Where ID="&ID&" ")
				Response.Write("<Script>alert('��ѶС���޸ĳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'ɾ��С��+++++++++++++++++++++++++++++++++++++++++++++++++
			ElseIF Sel="Delete" then
				'ɾ��������Ѷ+++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from News Where Small_Class="&ID&"")
				'����+++++++++++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from N_Class Where ID="&ID&"")
				Response.Write("<Script>alert('��ѶС��ʹ�����Ѷ�ɹ�!!!');window.location='N_Class.asp'</Script>")
				Response.End()
			End if
			'����С�����,�޸�,ɾ��+++++++++++++++++++++++++++++++++++
		End if
	End if
	'�����
End if

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<Script>
function Classname(formname)
{
	if(formname.ClassName_key.value=="")
	{
	alert("������Ʋ���Ϊ��")
	formname.ClassName_key.focus()
	return false;
	}
}
function delbig()
{
if(!confirm('ȷ��ɾ����Ѷ������ɾ���������ڴ�����Ѷһ��ɾ��������'))
{
return false;
}
}
function delsmall()
{
if(!confirm('ȷ��ɾ����ѶС����ɾ���������ڴ�����Ѷһ��ɾ��������'))
{
return false;
}
}
</Script>
<body>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<!--�������<��ʼ>------------------------------------------------------------------>
  <tr>
    <td height="150">
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size">������Ѷ����ѡ����Ӧ����Ŀ���������Ѷ��</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><%
		  Set Rsp=Server.CreateObject("adodb.recordset")
		  StrSql="select * from N_Class Where ParentClassID=0 Order by Xu Asc"
		  Rsp.open StrSql,conn,1,3
		  if Rsp.eof then
		  Response.Write("���޷���")
		  else
		  Page=Rsp.recordcount
		  %>
              <table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                <tr align="center" class="table_bg_n">
                  <td width="10%" height="23"><B>����</B></td>
                  <td width="68%"><B>�������</B></td>
                  <td width="19%"><STRONG>����</STRONG></td>
                  <td width="3%">&nbsp;</td>
                </tr>
				<%
				Do while Not Rsp.Eof 
				Q=Q+1
				%>
                <tr class="table_bg_n">
                  <td height="22" align="center" style="color:#990000;"><%Response.Write(Q)%></td>
                  <td class="padding-left-10"><img src="images/tree_folder4.gif" width="15" height="15"><%IF banben_China=True Then Tw(Rsp("ClassName")) End IF%><%IF banben_En=True Then Tw("&nbsp;"&Rsp("E_ClassName")) End if%></td>
                  <td colspan="2" align="center">&nbsp;</td>
                </tr>
				<%
				Set rsB=Server.CreateObject("adodb.recordset")
				StrSql="select * from N_Class Where ParentClassID="&rsp("ID")&" Order by Xu Asc"
				rsB.open StrSql,conn,1,3
				if Not rsB.eof then
				Do While Not rsB.eof
				Pagesmall=RsB.recordcount
				W=W+1
				%>
				<tr class="table_bg_n1">
                  <td height="22" align="center"><span class="huang">
                    <%Response.Write(W)%>
                  </span></td>
                  <td class="padding-left-20 huang"><img src="images/tree_folder3.gif" width="15" height="15">
				  <%IF banben_China=True Then Tw(rsB("ClassName")) End IF%><%IF banben_En=True Then Tw("&nbsp;"&RsB("E_ClassName")) End if%></td>
                  <td align="center"><a href="N_add.asp?Big_Class=<%= rsp("ID") %>&Small_Class=<%= rsb("ID") %>">������Ϣ</a></td>
                  <td align="center">&nbsp;</td>
				</tr>
				<%
				rsB.MoveNext
				Loop
				End if
				W=0
				Rsp.MoveNext
				Loop
				%>
              </table>
            <%
		  End if
		  Rsp.Close
		  %>          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
