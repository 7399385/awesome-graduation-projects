<!--#include file="inc/conn.asp"-->
<%

Call QuanXian(Register_B)
UserID=Request("ID")
IF UserID=Empty Then 
	TwScript("�Բ��𣬲�������")
End IF
Set Rs=Conn.execute("select * from [Net_Order] where ID="&UserID&"")
IF Rs.Eof Then
	TwScript("�Բ���û�д˶���")
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
            <td align="center" class="table_bg_size"> ���߶��� </td>
          </tr>
      </table></td>
    </tr>
    <tr bgcolor="#DBE6FF">
      <td colspan="2"><table width=100% border=0 align="center" cellpadding=0 cellspacing=1 bgcolor="#FFFFFF" style="border-collapse: collapse">
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
                size="2">ԤԼ�ˣ�</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2"><%= Rs("order1") %><font 
                  size="2">(������) </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
              QQ��<%= Rs("order2") %></font></td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font size="2">�Ա�</font></div>
              <div align="right"></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2"><%= Rs("order3") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���䣺<%= Rs("order4") %></font> </td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
size="2">������</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2"><%= Rs("order5") %></font></td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
                size="2">�̶��绰��</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2">
                <%= Rs("order6") %>              (סլ)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= Rs("order7") %>
              (��λ�绰)
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= Rs("order8") %>              (�ֻ�) </font></td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
                  size="2">E-mail��</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2"><%= Rs("order9") %></font></td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
                size="2">������ϵ��</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2"><%= Rs("order10") %></font></td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
                  size="2">Ԥ���������ڣ�</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2">
                                               <%= Rs("order11") %></font></td>
            </tr>
            <tr>
              <td width="106" height="25" align="right" bgcolor="#DBE6FF"><div align="right"><font 
                  size="2">Ԥ������ʱ�䣺</font></div></td>
              <td width="509" height="25" bgcolor="#DBE6FF"><font size="2"><%= Rs("order12") %></font></td>
            </tr>
            <tr>
              <td width="106" height="91" bgcolor="#DBE6FF"><p align="right"><font size="2">�ر�˵����</font></p>
                  <p align="right"><font 
                size="2"><br />
              </font></p></td>
              <td width="509" height="91" valign="top" bgcolor="#DBE6FF"><font size="2"><%= Rs("order13") %></font></td>
            </tr>
          <TR class="table_bg_n" ><input type="Hidden" name="ID" value="<%Tw(Rs("ID"))%>">
            <TD height="25" colspan="2" align="center">
            <input type="reset" name="Submit" value="����" onclick='javascript:window.location.href("Gorder.asp")'></TD>
          </TR>
      </TABLE></td>
    </tr>
  </table>
</form>
</body>
</html>
