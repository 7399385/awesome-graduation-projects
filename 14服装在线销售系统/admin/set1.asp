<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<script language="JavaScript" type="text/javascript" src="auto.js"></script>
<style type="text/css">
body{
	font-size: 12px;
	color: #000000;
}
</style>
</head>

<body><%
dim nope,title,bottomstr
sql="select * from aboutus"
rs.open sql,conn,1,1

if(not rs.eof) then
	nope=rs("contents")
	title=rs("title")
	bottomstr=rs("bottomstr")
else
	nope=""
	gonggao=""
end if
rs.close
%><form action="set1-1.asp" method="post">
<table width="577" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="577" height="30" align="left" valign="middle">��վ������Ϣ��</td>
  </tr>
  <tr>
    <td height="30" align="left" valign="middle">��վ���⣺
      <label>
      <input name="title" type="text" id="title" value="<%=title%>" />
      </label></td>
  </tr>
  <tr>
    <td height="30" align="left" valign="middle">�������ǣ�<br />
      <textarea name="nope" cols="80" rows="15" id="nope"><%=nope%></textarea></td>
  </tr>
  <tr>
    <td>��վ�ײ���Ȩ��Ϣ��
      <textarea name="bottomstr" cols="80" rows="8"><%=bottomstr%></textarea></td>
  </tr>
  <tr>
    <td height="30" align="center" valign="middle"><input type="submit" name="Submit" value="�ύ" /></td>
  </tr>
</table>
</form>
</body>
</html>
