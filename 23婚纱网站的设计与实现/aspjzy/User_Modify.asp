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
<script>
function useradd(formname)
{
	if(formname.UserName.value=="")
	{
		alert("�������û���")
		formname.UserName.focus()
		return false;
	}

	
	if(formname.PwdConfirm.value!=formname.Password.value)
	{
		alert("�����������벻һ��")
		formname.PwdConfirm.focus()
		return false;
	}
}
</script>
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
            <TD width="71%" class="padding-left-10"><INPUT   maxLength=14 size=20 name=UserName value="<%Tw(RsUser("UserName"))%>" readonly>
                <font color="#FF0000">*(�����޸�)</font></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">����<BR>
            </TD>
            <TD width="71%" class="padding-left-10"><INPUT type=password maxLength=12 size=30 name=Password value="">
                <font color="#FF0000">(�����޸��뱣����)</font></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">ȷ������</TD>
            <TD width="71%" class="padding-left-10"><INPUT type=password maxLength=12 size=30 name=PwdConfirm>                </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">��������</TD>
            <TD width="71%" class="padding-left-10"><INPUT type=text maxLength=50 size=30 name="Question"  value="<%Tw(RsUser("UserName"))%>">
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">�����</TD>
            <TD width="71%" class="padding-left-10"><INPUT   type=text maxLength=20 size=30 name="Answer">
              <span class="style1">(�����޸��뱣����)</span> </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">�Ա�<BR>
            </TD>
            <TD width="71%" class="padding-left-10"><INPUT type=radio value="1" name=sex <% IF RsUser("UserName")="1" Then Tw("CHECKED") End IF%>>
            �� &nbsp;&nbsp;
            <INPUT type=radio value="0" name=sex <% IF RsUser("UserName")="0" Then Tw("CHECKED") End IF%>>
            Ů</TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">Email��ַ<BR>
            </TD>
            <TD width="71%" class="padding-left-10"><INPUT   maxLength=50 size=40 name=Email value="<%Tw(RsUser("Email"))%>">
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��˾��ַ</TD>
            <TD width="71%" class="padding-left-10"><INPUT name=homepage id="homepage" value="<%Tw(RsUser("homepage"))%>" size=40   maxLength=50></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center">��˾����</TD>
            <TD width="71%" class="padding-left-10"><INPUT name=Comane id="Comane" size=40   maxLength=100 value="<%Tw(RsUser("Comane"))%>"></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD width="29%" height="23" align="center"><p>��ϵ��ַ</p></TD>
            <TD width="71%" class="padding-left-10"><input name=Add id="Add" size=40 maxlength=20 value="<%Tw(RsUser("Add"))%>">
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��ϵ��</TD>
            <TD width="71%" class="padding-left-10"><input name=Somane id="Somane" size=20 maxlength=20 value="<%Tw(RsUser("Somane"))%>"></TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��������</TD>
            <TD width="71%" class="padding-left-10"><input name=Zip id="Zip" size=20 maxlength=20 value="<%Tw(RsUser("Zip"))%>">
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">��ϵ�绰</TD>
            <TD width="71%" class="padding-left-10"><input name=Phone id="Phone" size=40 maxlength=20 value="<%Tw(RsUser("Phone"))%>">
            </TD>
          </TR>
          <TR class="table_bg_n" >
            <TD height="23" align="center">�� ��</TD>
            <TD class="padding-left-10"><INPUT name=Fox id="Fox" size=40 maxLength=50 value="<%Tw(RsUser("Fox"))%>"></TD>
          </TR>
          <TR bgcolor="#DAE2F5" >
            <TD width="29%" height="23" align="center">��&nbsp;��</TD>
            <TD width="71%" class="padding-left-10"><input name="LockUser" type="checkbox" id="LockUser" value="True" <%
			IF Request("LockUser")="True" Then
				Tw("checked")
			ElseIF Request("LockUser")="" Then
				IF RsUser("LockUser")=True Then Tw("checked") End IF
			End IF
			%>>
            ͨ�����</TD>
          </TR>
          <TR class="table_bg_n" ><input type="Hidden" name="UserID" value="<%Tw(RsUser("UserID"))%>">
            <TD height="25" colspan="2" align="center"><INPUT   type=submit value="�� �� �� Ա" name=Submit>
&nbsp;&nbsp;
            <input type="reset" name="Submit" value="����"></TD>
          </TR>
      </TABLE></td>
    </tr>
  </table>
</form>
</body>
</html>
