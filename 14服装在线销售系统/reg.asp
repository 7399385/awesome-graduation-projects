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
    <td align="left" valign="middle"><!--#include file="top.asp"--></td>
  </tr>
  <tr>
    <td align="center" valign="top" background="images/t1.gif">
	<br><br>
	<table width="680" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="220" height="30" align="left" valign="top"><!--#include file="login.asp"--><!--#include file="left.asp"--></td>
        <td width="460" height="410" align="left" valign="top">
		<div class="title"><div class="text">�û�ע��</div></div><br /><br />
		<form action="reg2.asp" method="post"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="28%" height="30" align="right" valign="middle">�û�����</td>
            <td width="72%" align="left" valign="middle"><input name="uname" type="text" class="input" id="uname" />
              * (��½�û���������1-12λ) </td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">���룺</td>
            <td align="left" valign="middle"><input name="upass" type="password" class="input" id="upass" />
              *</td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">�ظ����룺</td>
            <td align="left" valign="middle"><input name="upass2" type="password" class="input" id="upass2" />
              *</td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">��ʵ������</td>
            <td align="left" valign="middle"><input name="name" type="text" class="input" id="name" />
              *</td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">�Ա�</td>
            <td align="left" valign="middle"><input name="sex" type="radio" value="��" checked="checked" />
              ��
                <input type="radio" name="sex" value="Ů" />
                Ů</td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">סַ��</td>
            <td align="left" valign="middle"><input name="addr" type="text" class="input" id="addr" />
              *</td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">�绰��</td>
            <td align="left" valign="middle"><input name="tel" type="text" class="input" id="tel" />
              *</td>
          </tr>
          <tr>
            <td height="30" align="right" valign="middle">�������䣺</td>
            <td align="left" valign="middle"><input name="email" type="text" class="input" id="email" />
              *</td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">���뱣�����⣺</td>
            <td align="left" valign="middle"><label>
              <input name="wt" type="text" id="wt" />
            </label></td>
          </tr>
          <tr>
            <td height="25" align="right" valign="middle">���뱣���𰸣�</td>
            <td align="left" valign="middle"><label>
            <input name="da" type="text" id="da" />
            </label></td>
          </tr>
          <tr>
            <td height="40" colspan="2" align="center" valign="middle"><input type="submit" name="Submit" value="�ύ" class="btn" />��
              <input type="reset" name="Submit2" value="����" class="btn" /></td>
          </tr>
        </table>
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
