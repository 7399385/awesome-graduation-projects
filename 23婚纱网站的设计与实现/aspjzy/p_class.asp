<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(Products_B)
ID=Request("ID")
ClassName=Server.HTMLEncode(Request("ClassName"))
Sel=SafeRequest("Sel",2)

if ClassName<>Empty then
	ClassName_key=replace(Request("ClassName_key"),"'","''")
	ClassName_En=replace(Request("ClassName_En"),"'","''")
	order=SafeRequest("order",2)
	'ȡ�����ֵ+++++++++++++++++++++++++++++++++++++++++++++++++++
	Set Rs=Conn.execute("select Max(Xu) as PageID from P_Class")
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
			Set B_Order=Conn.execute("select * from P_Class Where ID="&ID&"")
			IF B_Order.Eof then
				twScript("����ʧ��,��Ʒ������û�д�ID��")
			End IF
			B_b=B_Order("Xu")
			IF Order="up" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select top 1 * from P_Class Where Xu<"&B_b&" and ParentClassID=0 Order by Xu Desc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update P_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update P_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
				response.Redirect(request.ServerVariables("HTTP_REFERER"))
				'������һ��ID++++++++++++++++++++++++++++++++++++++++
			Elseif Order="dowm" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select Top 1 * from P_Class Where Xu>"&B_b&" and ParentClassID=0 Order by Xu asc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update P_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update P_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
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
				Conn.execute("insert into P_Class(ClassName,ParentClassID,E_ClassName,Xu)values('"&ClassName_key&"',0,'"&ClassName_En&"',"&PageID+1&")")
				Response.Write("<Script>alert('��Ʒ������ӳɹ�');window.location='p_class.asp'</Script>")
				Response.End()
			'�޸Ĵ���+++++++++++++++++++++++++++++++++++++++++++++++++
			Elseif Sel="Modify1" then
				Conn.execute("Update P_Class Set ClassName='"&ClassName_key&"',E_ClassName='"&ClassName_En&"' Where ID="&ID&" ")
				Response.Write("<Script>alert('��Ʒ�����޸ĳɹ�');window.location='p_class.asp'</Script>")
				Response.End()
			'ɾ������ʹ����Ʒһ��ɾ��+++++++++++++++++++++++++++++++
			Elseif Sel="Delete" then
				'ɾ�������Ʒ+++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from Products Where Big_Class="&ID&"")
				'����+++++++++++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from P_Class Where ParentClassID="&ID&"")
				Conn.execute("delete from P_Class Where ID="&ID&"")
				Response.Write("<Script>alert('��Ʒ����ʹ����Ʒ�ɹ�!!!');window.location='p_class.asp'</Script>")
				Response.End()
			End IF
			'�����������,�޸�,ɾ��+++++++++++++++++++++++++++++++++++
		End if
	'С��
	Elseif ClassName="Small" then
		if order<>Empty Then
			'��IDȡ����ǰ��ID��++++++++++++++++++++++++++++++++++
			Set B_Order=Conn.execute("select * from P_Class Where ID="&ID&"")
			IF B_Order.Eof then
				twScript("����ʧ��,��Ʒ������û�д�ID��")
			End IF
			B_b=B_Order("Xu")
			B_b_P=B_Order("ParentClassID")
			IF Order="up" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select top 1 * from P_Class Where Xu<"&B_b&" and ParentClassID<>0 Order by Xu Desc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update P_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update P_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
				response.Redirect(request.ServerVariables("HTTP_REFERER"))
				'������һ��ID++++++++++++++++++++++++++++++++++++++++
			Elseif Order="dowm" Then
				'��ID��ǰһ������ֵ++++++++++++++++++++++++++++++
				Set B1_Order=Conn.execute("select Top 1 * from P_Class Where Xu>"&B_b&" and ParentClassID<>0 Order by Xu asc")
				IF B1_Order.Eof Then
					twScript("���ܲ���")
				End IF
				conn.execute ("update P_Class set Xu="&B1_Order("Xu")&" where ID="&ID&"")
				conn.execute ("update P_Class set Xu="&B_b&" where ID="&B1_Order("ID")&"")
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
				Conn.execute("insert into P_Class(ClassName,ParentClassID,E_ClassName,pic,content,Xu)values('"&ClassName_key&"',"&BigID&",'"&ClassName_En&"','"&request("smpic")&"','"&request("content")&"',"&PageID+1&")")
				Response.Write("<Script>alert('��ƷС����ӳɹ�');window.location='p_class.asp'</Script>")
				Response.End()
			'�޸�С��+++++++++++++++++++++++++++++++++++++++++++++++++
			ElseIF Sel="Modify1" then
				Conn.execute("Update P_Class Set ClassName='"&ClassName_key&"',E_ClassName='"&ClassName_En&"',ParentClassID="&BigID&",pic='"&request("smpic")&"',content='"&request("content")&"' Where ID="&ID&" ")
				Response.Write("<Script>alert('��ƷС���޸ĳɹ�');window.location='p_class.asp'</Script>")
				Response.End()
			'ɾ��С��+++++++++++++++++++++++++++++++++++++++++++++++++
			ElseIF Sel="Delete" then
				'ɾ�������Ʒ+++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from Products Where Small_Class="&ID&"")
				'����+++++++++++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from P_Class Where ID="&ID&"")
				Response.Write("<Script>alert('��ƷС��ʹ����Ʒ�ɹ�!!!');window.location='p_class.asp'</Script>")
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
if(!confirm('ȷ��ɾ����Ʒ������ɾ���������ڴ����Ʒһ��ɾ��������'))
{
return false;
}
}
function delsmall()
{
if(!confirm('ȷ��ɾ����ƷС����ɾ���������ڴ����Ʒһ��ɾ��������'))
{
return false;
}
}
</Script>
<body>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<!--�������<��ʼ>------------------------------------------------------------------>
  <tr>
    <td height="150"><form name="form1" method="post" action="?modify=modify">
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size">��������(<a href="p_class.asp#Add1" style="text-decoration:none;color:#ffffff">��Ӵ���</a>)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><%
		  Set Rsp=Server.CreateObject("adodb.recordset")
		  StrSql="select * from P_Class Where ParentClassID=0 and ID<>71 Order by Xu Asc"
		  Rsp.open StrSql,conn,1,3
		  if Rsp.eof then
		  Response.Write("���޷���")
		  else
		  Page=Rsp.recordcount
		  %>
              <table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                <tr align="center" class="table_bg_n">
                  <td width="10%" height="22"><B>����</B></td>
                  <td colspan="2"><B>�������</B></td>
                  <td width="10%"><B>����<STRONG>һ</STRONG></B></td>
                  <td width="8%"><B>������</B></td>
                  <td width="8%"><B>������</B></td>
                </tr>
				<%
				Do while Not Rsp.Eof 
				Q=Q+1
				%>
                <tr class="table_bg_n">
                  <td height="22" align="center" style="color:#990000;"><%Response.Write(Q)%></td>
                  <td colspan="2" class="padding-left-10"><img src="images/tree_folder4.gif" width="15" height="15"><%IF banben_China=True Then Tw(Rsp("ClassName")) End IF%><%IF banben_En=True Then Tw("&nbsp;"&Rsp("E_ClassName")) End if%></td>
                  <td align="center"><a href="?ID=<%=Rsp("ID")%>&Sel=Add1&ClassName=Small#Add2">�������</A></td> 
                  <td align="center"><a href="?ID=<%=Rsp("ID")%>&Sel=Modify&ClassName=Big#Modify1">�༭</A></td>
                  <td align="center"><a href="?ID=<%=Rsp("ID")%>&Sel=Delete&ClassName=Big" onClick="return delbig()">ɾ��</A></td>
                </tr>
				<%
				Set rsB=Server.CreateObject("adodb.recordset")
				StrSql="select * from P_Class Where ParentClassID="&rsp("ID")&" Order by Xu Asc"
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
                  <td width="47%" class="padding-left-20 huang"><img src="images/tree_folder3.gif" width="15" height="15">
				  <%IF banben_China=True Then Tw(rsB("ClassName")) End IF%><%IF banben_En=True Then Tw("&nbsp;"&RsB("E_ClassName")) End if%></td>
                  <td colspan="2" align="center">��</td>
                  <td align="center"><a href="?ID=<%=rsB("ID")%>&P_ID=<%=Rsp("ID")%>&Sel=Modify&ClassName=Small#Modify2" class="hui">�༭</a></td>
                  <td align="center"><a href="?ID=<%=rsB("ID")%>&Sel=Delete&ClassName=Small" class="hui" onClick="return delsmall()">ɾ��</a></td>
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
		  %>
          </td>
        </tr>
      </table>
    </form></td>
  </tr>
<tr>
    <td height="150"><form name="form1" method="post" action="?modify=modify">
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size">��������(<a href="p_class.asp#Add1" style="text-decoration:none;color:#ffffff">����</a>)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2">
              <table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                <tr align="center" class="table_bg_n">
                  <td width="10%" height="22"><B>����</B></td>
                  <td width="64%"><B>�������</B></td>
                  <td width="26%"><STRONG>����</STRONG></td>
                </tr>
				<%
				Set rsB=Server.CreateObject("adodb.recordset")
				StrSql="select * from P_Class Where ParentClassID<>0 Order by Xu Asc"
				rsB.open StrSql,conn,1,3
				if Not rsB.eof then
				Do While Not rsB.eof
				Pagesmall=RsB.recordcount
				W=W+1
				Set rsB2=Server.CreateObject("adodb.recordset")
				StrSql2="select * from P_Class Where ID="&RsB("ParentClassID")&" Order by Xu Asc"
				rsB2.open StrSql2,conn,1,3
				Bigname=rsB2("ClassName")
				rsB2.close
				%>
				<tr class="table_bg_n1">
                  <td height="22" align="center"><span class="huang">
                    <%Response.Write(W)%>
                  </span></td>
                  <td class="padding-left-20 huang"><img src="images/tree_folder3.gif" width="15" height="15">
				  <%IF banben_China=True Then Tw(rsB("ClassName")) End IF%><%IF banben_En=True Then Tw("&nbsp;"&RsB("E_ClassName")) End if%>
				  (<%= Bigname %>)</td>
                  <td align="center"><%if W<>1 then%><a href="?ID=<%=rsB("ID")%>&order=up&ClassName=Small"><img src="images/arrow_up.gif" width="17" height="14" border="0"></a>
                    <%End if %><%if W<>Pagesmall then%><a href="?ID=<%=RsB("ID")%>&order=dowm&ClassName=Small"><img src="images/arrow_down.gif" width="17" height="14" border="0"></a><%End if%></td>
                </tr>
				<%
				rsB.MoveNext
				Loop
				End if
				rsB.close
				%>
              </table>
          </td>
        </tr>
      </table>
    </form></td>
  </tr>
  <!--�������<����>------------------------------------------------------------------>
  <%
  Select case ClassName
  case "Big"
  if Sel="Modify" then
  '--------------------------------------------------------------------------------------------
  Set RsBigModify=Conn.execute("select * from P_Class Where ID="&ID&"")
  IF RsBigModify.eof then
	twScript("��������")
  End IF
  %>
  <!--һ�������޸Ĺ���<��ʼ>------------------------------------------------------------------>
  <tr>
    <td height="100"><form action="?ClassName=Big&Sel=Modify1" method="post" name="Add" id="Add" onSubmit="return Classname(this)">
      <a name="Modify1"></a>
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size"> �޸ķ���(һ��)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
            <%
			'�Ƿ���China�汾
			IF banben_China=True Then
			%>
			<tr class="table_bg_n">
              <td height="25" align="center">��������(China)</td>
              <td class="padding-left-10"><input name="ClassName_key" type="text" id="ClassName_key" size="50" value="<%Response.Write(RsBigModify("ClassName"))%>"></td>
            </tr>
			<%
			End IF
			'�Ƿ���English�汾
			IF banben_En=True Then
			%>
              <tr class="table_bg_n">
                <td width="30%" height="25" align="center">��������(En)</td>
                <td class="padding-left-10"><input name="ClassName_En" type="text" id="ClassName_En" size="50" value="<%Response.Write(RsBigModify("E_ClassName"))%>"></td>
              </tr>
			<%
			End IF
			'�����ж�Enlgish
			%>
			
              <tr class="table_bg_n"><input name="ID" type="hidden" id="ID" size="50" value="<%Response.Write(RsBigModify("ID"))%>">
                <td height="22" colspan="2" align="center"><input type="submit" name="Submit" value="�����޸�"></td>
              </tr>
          </table></td>
        </tr>
      </table>
    </form></td>
  </tr>
  <%RsBigModify.Close%>
  <!--һ�������޸Ĺ���<����>------------------------------------------------------------------>
  <%
  End IF 
  case "Small"
  if Sel="Add1" then
  %>
  <!--����������ӹ���<��ʼ>------------------------------------------------------------------>
  <tr>
    <td height="130"><form action="?ClassName=Small&Sel=Add" method="post" name="myform" id="myform" onSubmit="return Classname(this)">
      <a name="Add2"></a>
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size"> ��ӷ���(����)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
            <tr class="table_bg_n">
              <td height="25" align="center">��������</td>
              <td class="padding-left-10"><select name="BigID" id="BigID">
                <%
				Set rsbig=Conn.execute("select * from P_Class Where ParentClassID=0 Order by Xu Asc")
				If Not rsbig.eof then
				Do While Not rsbig.eof
				%>
				<option <%IF Rsbig("ID")=Cint(ID) then response.Write("selected") end if%> value="<%Response.Write(Rsbig("ID"))%>"><%Response.Write(Rsbig("ClassName"))%></option>
				<%
				Rsbig.MoveNext
				loop
				End IF
				Rsbig.Close
				%>
              </select></td>
            </tr>
			<%
			'�Ƿ���China�汾
			IF banben_China=True Then
			%>
            <tr class="table_bg_n">
              <td height="25" align="center">��������(China)</td>
              <td class="padding-left-10"><input name="ClassName_key" type="text" id="ClassName_key" size="50"></td>
            </tr>
			<%
			End IF
			'�Ƿ���English�汾
			IF banben_En=True Then
			%>
              <tr class="table_bg_n">
                <td width="30%" height="25" align="center">��������(En)</td>
                <td class="padding-left-10"><input name="ClassName_En" type="text" id="ClassName_En" size="50"></td>
              </tr>
			<%
			End IF
			'�����ж�Enlgish
			%>
			<tr class="table_bg_n">
            <td height="25" align="center">Сͼ</td>
            <td class="padding-left-10"><input name="smpic" type="text" id="smpic" size="41" maxlength="120"><input type="button" name="Submit2" value="�� ��" onClick="window.open('upload_flash.asp?formname=myform&editname=smpic&uppath=../products_pic&filelx=jpg','','status=no,scrollbars=no,top=20,left=110,width=420,height=165')">
              <span class="style1">*</span></td>
          </tr>
		  <tr class="table_bg_n">
            <td height="80" align="center"> �������</td>
            <td class="padding-left-10">
			<input name="Content" type="hidden">
			<iframe id="eWebEditor1" src="../WebEditor/ewebeditor.asp?id=Content&style=s_mini1" frameborder="0" scrolling="no" width="380" height="250"></iframe>			</td>
          </tr>
              <tr class="table_bg_n">
                <td height="22" colspan="2" align="center"><input type="submit" name="Submit" value="ȷ�����"></td>
              </tr>
          </table></td>
        </tr>
      </table>
    </form></td>
  </tr>
  <!--����������ӹ���<����>------------------------------------------------------------------>
  <%
  End if
  if Sel="Modify" then
  %>
  <!--���������޸Ĺ���<��ʼ>------------------------------------------------------------------>
  <tr>
    <td height="130">
	<form action="?ClassName=Small&Sel=Modify1" method="post" name="myform" id="myform" onSubmit="return Classname(this)">
      <%
	  Set RsSmallModify=Conn.execute("select * from P_Class Where ID="&ID&"")
	  IF RsSmallModify.eof then
	  	twScript("��������")
	  End IF
	  %>
	  <a name="Modify2"></a>
	  <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size"> �޸ķ���(����)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
              <tr class="table_bg_n">
                <td height="25" align="center">��������</td>
                <td class="padding-left-10"><select name="BigID" id="BigID">
                    <%
				Set rsbig=Conn.execute("select * from P_Class Where ParentClassID=0 Order by Xu Asc")
				If Not rsbig.eof then
				Do While Not rsbig.eof
				%>
                    <option <%if Rsbig("ID")=Cint(Request("P_ID")) Then Response.Write("selected") End if%> value="<%Response.Write(Rsbig("ID"))%>"><%Response.Write(Rsbig("ClassName"))%></option>
                    <%
				Rsbig.MoveNext
				loop
				End IF
				Rsbig.Close
				%>
                </select></td>
              </tr>
			 <%
			'�Ƿ���China�汾
			IF banben_China=True Then
			%>
              <tr class="table_bg_n">
                <td height="25" align="center">��������(China)</td>
                <td class="padding-left-10"><input name="ClassName_key" type="text" id="ClassName_key" size="50" value="<%Response.Write(RsSmallModify("ClassName"))%>"></td>
              </tr>
			<%
			End IF
			'�Ƿ���English�汾
			IF banben_En=True Then
			%>
              <tr class="table_bg_n">
                <td width="30%" height="25" align="center">��������(En)</td>
                <td class="padding-left-10"><input name="ClassName_En" type="text" id="ClassName_En" size="50" value="<%Response.Write(RsSmallModify("E_ClassName"))%>"></td>
              </tr>
			<%
			End IF
			'�����ж�Enlgish
			%>
			<tr class="table_bg_n">
            <td height="25" align="center">Сͼ</td>
            <td class="padding-left-10"><input name="smpic" type="text" id="smpic" size="41" maxlength="120" value="<%Response.Write(RsSmallModify("pic"))%>"><input type="button" name="Submit2" value="�� ��" onClick="window.open('upload_flash.asp?formname=myform&editname=smpic&uppath=../products_pic&filelx=jpg','','status=no,scrollbars=no,top=20,left=110,width=420,height=165')">
              <span class="style1">*</span></td>
          </tr>
		  <tr class="table_bg_n">
            <td height="80" align="center"> �������</td>
            <td class="padding-left-10">
			<input name="Content" type="hidden" value="<%Response.Write(RsSmallModify("content"))%>">
			<iframe id="eWebEditor1" src="../WebEditor/ewebeditor.asp?id=Content&style=s_mini1" frameborder="0" scrolling="no" width="380" height="250"></iframe>			</td>
          </tr>
              <tr class="table_bg_n"><input name="ID" type="hidden" id="ID" size="50" value="<%Response.Write(RsSmallModify("ID"))%>">
                <td height="22" colspan="2" align="center"><input type="submit" name="Submit" value="�����޸�"></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <%
	  RsSmallModify.close
	  Set RsSmallModify=Nothing
	  %>
    </form></td>
  </tr>
  <!--���������޸Ĺ���<����>------------------------------------------------------------------>
  <%
  End IF
  End Select
  %>
   <!--һ��������ӹ���<��ʼ>------------------------------------------------------------------>
  <tr>
    <td height="100"><form action="?ClassName=Big&Sel=Add" method="post" name="Add" id="Add" onSubmit="return Classname(this)">
      <a name="Add1"></a>
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size"> ��ӷ���(һ��)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
            <%
			'�Ƿ���China�汾
			IF banben_China=True Then
			%>
			<tr class="table_bg_n">
              <td height="25" align="center">��������(China)</td>
              <td class="padding-left-10"><input name="ClassName_key" type="text" id="ClassName_key" size="50"></td>
            </tr>
			<%
			End IF
			'�Ƿ���English�汾
			IF banben_En=True Then
			%>
              <tr class="table_bg_n">
                <td width="30%" height="25" align="center">��������(English)</td>
                <td class="padding-left-10"><input name="ClassName_En" type="text" id="ClassName_En" size="50"></td>
              </tr>
			<%
			End IF
			'�����ж�Enlgish
			%>
              <tr class="table_bg_n">
                <td height="22" colspan="2" align="center"><input type="submit" name="Submit" value="ȷ�����"></td>
              </tr>
          </table></td>
        </tr>
      </table>
    </form></td>
  </tr>
  <!--һ��������ӹ���<����>------------------------------------------------------------------>
</table>
</body>
</html>
