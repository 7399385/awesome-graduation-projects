<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="include/style.css" rel="stylesheet" type="text/css" />
</head>
<body><%dim i%>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><!--#include file="top.asp"--></td>
  </tr>
    <tr>
    <td align="center" valign="top" background="images/t1.gif">
	<br><br>
	<table width="680" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="220" height="30" align="left" valign="top"><!--#include file="login.asp"--><!--#include file="left.asp"--></td>
        <td width="460" height="410" align="left" valign="top">
		<div class="title"><div class="text">�û������޸�</div></div><br /><br />
		<form action="modinfo2.asp" method="post"><%
		if(session("UserLogin")<>"") then
		sql="select * from userinfo where username='"&session("UserLogin")&"'"
		rs.open sql,conn,1,1
		if(not rs.eof) then
		%>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          
          <tr>
            <td height="11" colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="20%" height="25" align="right" valign="middle">�û�����</td>
            <td width="80%" align="left" valign="middle"><%=rs("username")%></td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">��½���룺</td>
            <td align="left" valign="middle"><input name="upass" type="password" id="upass" value="<%=rs("userpass")%>" />
            *</td>
          </tr>
          
          <tr>
            <td height="25" align="right" valign="middle">������</td>
            <td align="left" valign="middle"><input name="name" type="text" id="name" value="<%=rs("realname")%>" size="20" />
            *</td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">�Ա�</td>
            <td align="left" valign="middle"><input name="sex" type="radio" value="��"<%if(rs("sex")="��") then Response.Write(" checked='checked'")%> />
              �С��� 
                <input type="radio" name="sex" value="Ů"<%if(rs("sex")="Ů") then Response.Write(" checked='checked'")%> />
                Ů*</td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">�������䣺</td>
            <td align="left" valign="middle"><input name="email" type="text" id="email" value="<%=rs("email")%>" size="40" />
            *</td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">��ϵ�绰��</td>
            <td align="left" valign="middle"><input name="tel" type="text" id="tel" value="<%=rs("tel")%>" size="40" />
            *</td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">��ϵ��ַ��</td>
            <td align="left" valign="middle"><input name="addr" type="text" id="addr" value="<%=rs("addr")%>" size="40" />
            *</td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">���뱣�����⣺</td>
            <td align="left" valign="middle"><label>
              <input name="wt" type="text" id="wt" value="<%=rs("mibaowt")%>" size="40" />
            </label></td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">���뱣���𰸣�</td>
            <td align="left" valign="middle"><label>
            <input name="da" type="text" id="da" value="<%=rs("mibaoda")%>" size="40" />
            </label></td>
          </tr>
          
          <tr>
            <td height="25" colspan="2" align="center" valign="middle"><input type="submit" name="Submit" value="�ύ" />
              ��
              <input type="reset" name="Submit2" value="����" /></td>
            </tr>
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
		<%
		
		end if
		rs.close
		else
			Response.redirect "index.asp"
			response.end
		end if
		%>
        </form>
		</td>
		</tr>
	</table>
	</td>
  </tr>
  <tr>
    <td align="center" valign="top" background="images/t2.gif"></td>
  </tr>
  <tr>
    <td align="center" valign="top"><img src="images/t3.gif"></td>
  </tr>
  <tr>
    <td><!--#include file="bottom.asp"--></td>
  </tr>
</table>
</body>
</html>

