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
				twScript("����ʧ��,����������û�д�ID��")
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
				Response.Write("<Script>alert('���Ŵ�����ӳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'�޸Ĵ���+++++++++++++++++++++++++++++++++++++++++++++++++
			Elseif Sel="Modify1" then
				Conn.execute("Update N_Class Set ClassName='"&ClassName_key&"',E_ClassName='"&ClassName_En&"' Where ID="&ID&" ")
				Response.Write("<Script>alert('���Ŵ����޸ĳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'ɾ������ʹ�������һ��ɾ��+++++++++++++++++++++++++++++++
			Elseif Sel="Delete" then
				'ɾ����������+++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from News Where Big_Class="&ID&"")
				'����+++++++++++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from N_Class Where ParentClassID="&ID&"")
				Conn.execute("delete from N_Class Where ID="&ID&"")
				Response.Write("<Script>alert('���Ŵ���ʹ������ųɹ�!!!');window.location='N_Class.asp'</Script>")
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
				twScript("����ʧ��,����������û�д�ID��")
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
				Response.Write("<Script>alert('����С����ӳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'�޸�С��+++++++++++++++++++++++++++++++++++++++++++++++++
			ElseIF Sel="Modify1" then
				Conn.execute("Update N_Class Set ClassName='"&ClassName_key&"',E_ClassName='"&ClassName_En&"',ParentClassID="&BigID&" Where ID="&ID&" ")
				Response.Write("<Script>alert('����С���޸ĳɹ�');window.location='N_Class.asp'</Script>")
				Response.End()
			'ɾ��С��+++++++++++++++++++++++++++++++++++++++++++++++++
			ElseIF Sel="Delete" then
				'ɾ����������+++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from News Where Small_Class="&ID&"")
				'����+++++++++++++++++++++++++++++++++++++++++++++++++
				Conn.execute("delete from N_Class Where ID="&ID&"")
				Response.Write("<Script>alert('����С��ʹ������ųɹ�!!!');window.location='N_Class.asp'</Script>")
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
if(!confirm('ȷ��ɾ�����Ŵ�����ɾ���������ڴ�������һ��ɾ��������'))
{
return false;
}
}
function delsmall()
{
if(!confirm('ȷ��ɾ������С����ɾ���������ڴ�������һ��ɾ��������'))
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
                <td align="center" class="table_bg_size">���ŷ�������(<a href="N_Class.asp#Add1" style="text-decoration:none;color:#ffffff">��Ӵ���</a>)</td>
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
                  <td width="10%" height="22"><B>����</B></td>
                  <td width="47%"><B>�������</B></td>
                  <td width="17%"><STRONG>����</STRONG></td>
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
                  <td class="padding-left-10"><img src="images/tree_folder4.gif" width="15" height="15"><%IF banben_China=True Then Tw(Rsp("ClassName")) End IF%><%IF banben_En=True Then Tw("&nbsp;"&Rsp("E_ClassName")) End if%></td>
                  <td align="center"><%if Q<>1 then%><a href="?ID=<%=Rsp("ID")%>&order=up&ClassName=Big"><img src="images/arrow_up.gif" width="17" height="14" border="0"></a>
                    <%End if %><%if Q<>Page then%><a href="?ID=<%=Rsp("ID")%>&order=dowm&ClassName=Big"><img src="images/arrow_down.gif" width="17" height="14" border="0"></a>
                    <%End if%></td>
                  <td align="center"><a href="?ID=<%=Rsp("ID")%>&Sel=Add1&ClassName=Small#Add2">���С��</A></td>
                  <td align="center"><a href="?ID=<%=Rsp("ID")%>&Sel=Modify&ClassName=Big#Modify1">�༭</A></td>
                  <td align="center"><a href="?ID=<%=Rsp("ID")%>&Sel=Delete&ClassName=Big" onClick="return delbig()">ɾ��</A></td>
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
                  <td colspan="2" align="center"><%if W<>1 then%><a href="?ID=<%=rsB("ID")%>&order=up&ClassName=Small"><img src="images/arrow_up.gif" width="17" height="14" border="0"></a>
                    <%End if %><%if W<>Pagesmall then%><a href="?ID=<%=RsB("ID")%>&order=dowm&ClassName=Small"><img src="images/arrow_down.gif" width="17" height="14" border="0"></a><%End if%></td>
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
  <!--�������<����>------------------------------------------------------------------>
  <%
  Select case ClassName
  case "Big"
  if Sel="Modify" then
  '--------------------------------------------------------------------------------------------
  Set RsBigModify=Conn.execute("select * from N_Class Where ID="&ID&"")
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
                <td align="center" class="table_bg_size"> �޸����ŷ���(һ��)</td>
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
    <td height="130"><form action="?ClassName=Small&Sel=Add" method="post" name="Add" id="Add" onSubmit="return Classname(this)">
      <a name="Add2"></a>
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size"> ������ŷ���(����)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
            <tr class="table_bg_n">
              <td height="25" align="center">��������</td>
              <td class="padding-left-10"><select name="BigID" id="BigID">
                <%
				Set rsbig=Conn.execute("select * from N_Class Where ParentClassID=0 Order by Xu Asc")
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
	<form action="?ClassName=Small&Sel=Modify1" method="post" name="Add" id="Add" onSubmit="return Classname(this)">
      <%
	  Set RsSmallModify=Conn.execute("select * from N_Class Where ID="&ID&"")
	  IF RsSmallModify.eof then
	  	twScript("��������")
	  End IF
	  %>
	  <a name="Modify2"></a>
	  <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size"> �޸����ŷ���(����)</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
              <tr class="table_bg_n">
                <td height="25" align="center">��������</td>
                <td class="padding-left-10"><select name="BigID" id="BigID">
                    <%
				Set rsbig=Conn.execute("select * from N_Class Where ParentClassID=0 Order by Xu Asc")
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
                <td align="center" class="table_bg_size"> ������ŷ���(һ��)</td>
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
