<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="include/style.css" rel="stylesheet" type="text/css" />
</head>

<body><br>
<%
dim id
id=Trim(Request.QueryString("id"))

if(isnumeric(id)) then
	sql="select * from guest where id="&id
	rs.open sql,conn,1,1
	
	if(not rs.eof) then
		%>
		<table width="480" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#89613D" bgcolor="#C4C1A6">
          <tr>
            <td width="120" height="25" align="right" valign="middle">���Ա��⣺</td>
            <td colspan="3" align="left" valign="middle"><%=rs("title")%></td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">�����ߣ�</td>
            <td colspan="3" align="left" valign="middle"><%=rs("name")%></td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">�������䣺</td>
            <td width="180"><%=rs("email")%></td>
            <td width="70" align="right" valign="middle">QQ:</td>
            <td width="120"><%=rs("qq")%></td>
          </tr>
          <tr>
            <td height="20" align="right" valign="middle">�������ݣ�</td>
            <td colspan="3" align="left" valign="top"><%=rs("content")%><div style="text-align:right;">����ʱ�䣺<%=rs("adddate")%>&nbsp;</div></td>
          </tr>
          <tr>
            <td height="20" align="right" valign="middle">�ظ����ݣ�</td>
            <td colspan="3" align="left" valign="top"><%=rs("reply")%><div style="text-align:right;">�ظ�ʱ�䣺<%=rs("replydate")%>&nbsp;</div></td>
          </tr>
</table>
<%
	else
		Response.Write("<script language='javascript'>alert('û���ҵ����ݡ�');window.close();</script>")
	end if
	rs.close
else
	Response.Write("<script language='javascript'>alert('û���ҵ����ݡ�');window.close();</script>")
end if

%>
</body>
</html>
