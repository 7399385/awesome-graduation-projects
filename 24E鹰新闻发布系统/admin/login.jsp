<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����ע��</title>
</head>

<body>
<div align="center"> 
  <table width="768" border="0">
    <!--DWLayoutTable-->
    <tr> 
      <td width="762" height="1016" valign="top"><div align="center"> 
          <form name="form1" method="post" action="login_validate.jsp">
            <table width="38%" border="0" cellpadding="4" cellspacing="1" bgcolor="#999999">
              <!--DWLayoutTable-->
              <tr align="center" bgcolor="#f6f6f6"> 
                <td colspan="2"><b>��Ա��¼</b></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF"> 
                <td><div align="right">�û�����</div></td>
                <td><input name="userName" type="text" id="userName"></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF"> 
                <td width="36%"><div align="right">�ܡ� �룺</div></td>
                <td width="64%"><input name="userPassword" type="password" id="userPassword" ></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF">
                <td><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td><div align="right">
                    <input name="submit" type="reset" value="����" src="img/index.login.gif" width="50" height="22" border="0" >
                    <input name="submit2" type="submit" value="�ύ" src="img/index.login.gif" width="50" height="22" border="0" >
                  </div></td>
              </tr>
            </table>
          </form>
        </div></td>
    </tr>
  </table>
</div>
</form>
</body>
</html>
