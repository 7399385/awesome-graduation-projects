<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(Register_B)
UserID=Request("UserID")
IF UserID=Empty Then 
	TwScript("�Բ��𣬲�������")
End IF
Set RsUser=Conn.execute("select * from [User] where UserID="&UserID&"")
IF RsUser.Eof Then
	TwScript("�Բ���û�д˻�Ա")
End IF
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.b_t {padding-left:10px;padding-right:10px;}
.style1 {color: #FF0000}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="User_Sava.asp?action=Modify" onSubmit="return useradd(this)">
  <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
    <tr bgcolor="#DBE6FF">
      <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
          <tr>
            <td align="center" class="table_bg_size"> �޸Ļ�Ա </td>
          </tr>
      </table></td>
    </tr>
    <tr bgcolor="#DBE6FF">
      <td colspan="2"><table width=100% border=0 align="center" cellpadding=0 cellspacing=1 bordercolor="#FFFFFF" bgcolor="#FFFFFF" style="border-collapse: collapse">
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">�û���</TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("UserName"))%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">�Ա�<BR>
            </TD>
            <TD width="71%" class="padding-left-10"><%
			IF RsUser("UserName")="1" Then 
			Tw("��") 
			Else
			Tw("Ů")
			End IF%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">Email��ַ<BR>
            </TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("Email"))%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��˾��ַ</TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("homepage"))%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">��˾����</TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("Comane"))%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center"><p>��ϵ��ַ</p></TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("Add"))%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��ϵ��</TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("Somane"))%></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��������</TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("Zip"))%>
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��ϵ�绰</TD>
            <TD width="71%" class="padding-left-10"><%Tw(RsUser("Phone"))%>
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">�� ��</TD>
            <TD class="padding-left-10"><%Tw(RsUser("Fox"))%></TD>
          </TR>
          <TR bgcolor="#DAE2F5" >
            <TD width="29%" height="23" align="center">��&nbsp;��</TD>
            <TD width="71%" class="padding-left-10">
			<%
				IF RsUser("LockUser")=True Then 
				Tw("ͨ�����") 
				Else
				Tw("δ���") 
				End IF
			%>
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="25" colspan="2" align="center"><INPUT   type=button value="��������һҳ" name=Submit onClick="javascript:history.back();"></TD>
          </TR>
      </TABLE></td>
    </tr>
  </table>
</form>
</body>
</html>
