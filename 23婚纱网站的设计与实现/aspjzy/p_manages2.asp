<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Function.asp"-->
<%
Call QuanXian(Products_B)
ParentClassID=Request("ParentClassID")
ClassNameID=Request("ClassNameID")
session("ClassNameID")=ClassNameID
IF session("ClassNameID")="" Then session("ClassNameID")=0 End IF
Type_Class=Request("Type_Class")
key=Request("key")
Order=Request("order")
ID=Request("ID")
'***************************************************************************************************
IF Order<>Empty And ID<>Empty Then
	Set B_Order=Conn.execute("select * from Products Where ID="&ID&"")
	IF B_Order.Eof then
		twScript("����ʧ��!!!")
	End IF
	B_b=B_Order("P_X")
	IF Order="up" Then
		IF Type_Class="Big" Then 
			Set B1_Order=Conn.execute("select top 1 * from Products Where P_X>"&B_b&" and Big_Class="&ClassNameID&" Order by P_X Asc")
		ElseIF Type_Class="Small" Then 
			Set B1_Order=Conn.execute("select top 1 * from Products Where P_X>"&B_b&" and Small_Class="&ClassNameID&" Order by P_X Asc")
		Else
			Set B1_Order=Conn.execute("select top 1 * from Products Where P_X>"&B_b&" Order by P_X Asc")
		End IF
			IF B1_Order.Eof Then
				twScript("���ܲ���")
			End IF
			conn.execute ("update Products set P_X="&B1_Order("P_X")&" where ID="&ID&"")
			conn.execute ("update Products set P_X="&B_b&" where ID="&B1_Order("ID")&"")
			Tw("<Script>window.location='P_manages2.asp?Page="&Request("Page")&"&ClassNameID="&Request("ClassNameID")&"&ParentClassID="&ParentClassID&"&key="&key&"&Type_Class="&Type_Class&"'</Script>")
	ElseIF Order="dowm" Then
		IF Type_Class="Big" Then 
			Set B1_Order=Conn.execute("select top 1 * from Products Where P_X<"&B_b&" and Big_Class="&ClassNameID&" Order by P_X Desc")
		ElseIF Type_Class="Small" Then 
			Set B1_Order=Conn.execute("select top 1 * from Products Where P_X<"&B_b&" and Small_Class="&ClassNameID&" Order by P_X Desc")
		Else
			Set B1_Order=Conn.execute("select top 1 * from Products Where P_X<"&B_b&" Order by P_X Desc")
		End IF
		IF B1_Order.Eof Then
			twScript("���ܲ���")
		End IF
		conn.execute ("update Products set P_X="&B1_Order("P_X")&" where ID="&ID&"")
		conn.execute ("update Products set P_X="&B_b&" where ID="&B1_Order("ID")&"")
		Tw("<Script>window.location='P_manages2.asp?Page="&Request("Page")&"&ClassNameID="&ClassNameID&"&ParentClassID="&ParentClassID&"&key="&key&"&Type_Class="&Type_Class&"'</Script>")
	End IF
End IF
'***************************************************************************************************

'***************************************************************************************************
	SQL="select * from Products where Big_Class=71 "
	IF (ClassNameID<>Empty and Type_Class<>Empty) or key<>Empty Then
		SQL=SQL+" and "
		IF ClassNameID<>Empty Then
			IF Type_Class="Big" Then
				SQL=SQL+"Big_Class="&ClassNameID&" "
			ElseIF Type_Class="Small" Then
				SQL=SQL+"Small_Class="&ClassNameID&" "
			End IF
		End IF
		IF key<>Empty Then
			SQL=SQL+"P_Item Like '%"&key&"%'"
		End IF
	End IF
	SQL=SQL+"order by P_X Desc"
	set Rspro=Server.CreateObject("Adodb.Recordset")
	Rspro.open SQL,Conn,1,1
	dim strFileName,MaxPerPage
	strField=trim(request("Field"))
	if request("page")<>"" then
		currentPage=cint(request("page"))
	else
		currentPage=1
	end if
	ShowSmallClassType=ShowSmallClassType_Default
	MaxPerPage=10
	strFileName="?ClassNameID="&ClassNameID&"&ParentClassID="&ParentClassID&"&key="&key&"&Type_Class="&Type_Class&"&"
	totalput=Rspro.Recordcount
'************************************************************************************************
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style>
.b_t{padding-left:10px;padding-right:10px;}
</style>
<Script>
function CheckAll(form)
  {
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.Name != "chkAll")
       e.checked = form.chkAll.checked;
    }
  }
 function keya(formname)
 {
 if (formname.key.value=="")
 {
 alert("��������Źؽ���!!!")
 formname.key.focus()
 return false;
 }
 }

</Script>
</head>

<body>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="middle"><!--<table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
      <tr bgcolor="#DBE6FF">
        <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
            <tr>
              <td align="center" class="table_bg_size"> ��Ʒ�������</td>
            </tr>
        </table></td>
      </tr>
      <tr bgcolor="#DBE6FF">
        <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
            <tr class="table_bg_n">
              <td height="22">
			  
			  <table border=0 cellpadding="5" cellspacing="0">
			    <tr>
				<td class="b_t"><strong><a href="P_manages2.asp">���в�Ʒ</a></strong></td>
				<%
				Set RsBigClass=Conn.execute("select * from P_Class Where ParentClassID=0 and ID<>71 Order By Xu Asc")
				IF RsBigClass.eof then
					Tw("���޲�Ʒ����")
				Else
				Do While Not RsBigClass.eof
				D=D+1
				%>
				<td class="b_t <%IF RsBigClass("ID")=Cint(session("ClassNameID")) Then Tw("table_bg_n1") End IF%>" ><strong><a href="?Type_Class=Big&ClassNameID=<%Tw(RsBigClass("ID"))%>&ParentClassID=<%Tw(RsBigClass("ID"))%>"><%Tw(RsBigClass("ClassName"))%></a></strong></td>
				<%
				IF D=8 Then Tw("</tr>") End IF
				RsBigClass.MoveNext
				Loop
				End if
				%>
				</tr>
			  </table>
				
				</td>
              </tr>
			  <%
			  IF ParentClassID<>Empty Then
			  Set RsSmallClass=Conn.execute("select * from P_Class Where ParentClassID="&ParentClassID&" Order By Xu Asc")
			  IF Not RsSmallClass.eof then
			  %>
            <tr class="table_bg_n">
              <td height="22" class="table_bg_n1">
			  <table border=0 cellpadding="5" cellspacing="0">
                <tr>
			    <%
				Do While Not RsSmallClass.eof
				W=W+1
				%>
                  <td class="b_t"><a href="?Type_Class=Small&ClassNameID=<%Tw(RsSmallClass("ID"))%>&ParentClassID=<%Tw(RsSmallClass("ParentClassID"))%>" <%IF RsSmallClass("ID")=Cint(session("ClassNameID")) Then Tw("Class='link_red'") End IF %>><%Tw(RsSmallClass("ClassName"))%></a></td>
                  <%
				IF W=7 Then Tw("</tr>") End IF
				RsSmallClass.MoveNext
				Loop
				%>
                </tr>
              </table>
			  </td>
            </tr>
			<%
			End IF
			End IF
			%>
        </table></td>
      </tr>
    </table> --></td>
  </tr>
  <tr>
    <td height="130" valign="top" style="padding-top:10px;">
      <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
        <tr bgcolor="#DBE6FF">
          <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size">��Ӱʦ����</td>
              </tr>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
              <form name="form1" method="post" action="P_Del2.asp?Action=Del" style="margin:0px ">
			  <tr align="center" class="table_bg_n">
                <td width="8%" height="22"><strong>����</strong></td>
                <td width="8%"><strong>ѡ��</strong></td>
                <td width="24%"><strong>����</strong></td>
                <td width="14%"><strong>����</strong></td>
                <td width="13%"><strong>����</strong></td>
                <td width="13%"><strong>����ʱ��</strong></td>
                <td><strong>����һ</strong></td>
                <td><strong>������</strong></td>
              </tr>
		   <%
			IF Not Rspro.Eof then
				IF currentPage<>1 then
				Rspro.Move MaxPerPage*(currentPage-1)
				End if
			for T=1 to MaxPerPage
		   %>
              <tr class="table_bg_n">
                <td height="22" align="center"><%Tw(T)%></td>
                <td align="center"><input name='ID' type='checkbox' onClick="unselectall()" id="ID" value='<%Tw(Rspro("ID"))%>'></td>
                <td class="padding-left-10"><%Tw(Rspro("P_Name"))%></td>
                <td align="center">
				<%
				Set rsb=Conn.execute("select * from P_Class Where ID="&Rspro("Big_Class")&"")
				IF Not Rsb.Eof Then
					Tw(Rsb("ClassName"))
				End IF
				TClose(Rsb)
				%>
				</td>
                <td width="13%" align="center"><%IF Rspro("P_Index")=True Then Tw("<font style='color:#006600'>��ҳ&nbsp;</font>") End IF%>
                  <%IF Rspro("P_Register")=True Then Tw("<font style='color:#CC3300'>��Ա</font>") End IF%></td>
                <td align="center"><%Tw(Rspro("P_Time"))%></td>	
                <td align="center"><a href="?ID=<%=Rspro("ID")%>&order=up&ClassNameID=<%=ClassNameID%>&ParentClassID=<%=ParentClassID%>&key=<%=key%>&Page=<%=currentPage%>&Type_Class=<%=Type_Class%>"><img src="images/arrow_up.gif" width="17" height="14" border="0"></a> <a href="?ID=<%=Rspro("ID")%>&order=dowm&ClassNameID=<%=ClassNameID%>&ParentClassID=<%=ParentClassID%>&key=<%=key%>&Page=<%=currentPage%>&Type_Class=<%=Type_Class%>"><img src="images/arrow_down.gif" width="17" height="14" border="0"></a> </td>
                <td align="center"><a href="p_Modify2.asp?ID=<%=Rspro("ID")%>">�༭</a></td>
              </tr>
		  <%
		  	Rspro.MoveNext
			IF Rspro.Eof then exit for 
			Next
			End if
			Call tclose(Rspro)
		  %>
              <tr class="table_bg_n">
                <td height="25" align="center">ȫѡ</td>
                <td align="center"><input name="chkAll" type="checkbox" id="chkAll" onclick=CheckAll(this.form) value="checkbox"></td>
                <td colspan="6" class="padding-left-10"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="18%" align="center"><input type="submit" name="Submit" value="ɾ��ѡ����Ӱʦ"></td>
                    <td width="82%" align="right"></td>
                  </tr>
                </table>
				</td>
                </tr>
			  </form>
          </table></td>
        </tr>
        <tr bgcolor="#DBE6FF">
          <td height="25" colspan="2" align="center" class="table_bg_n"><%call showpage(strFileName,totalput,MaxPerPage,true,true,"����Ʒ")%></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="130">&nbsp;</td>
  </tr>
  <tr>
    <td height="130">&nbsp;</td>
  </tr>
</table>
<%session("Se")=Request.ServerVariables("QUERY_STRING")%>
</body>
</html>
