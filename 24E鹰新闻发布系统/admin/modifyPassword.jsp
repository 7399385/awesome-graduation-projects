<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>�޸�����</title>
</head>

<body>
 
<FORM name=form1 onsubmit="return check()" action="modifyPassword_validate.jsp" method="post"><div align="center"> <table width="768" border="0"> 
  <!--DWLayoutTable-->
  <tr> 
      <td width="762" height="1016" valign="top"><div align="center"> 

            <table width="39%" border="0" cellpadding="4" cellspacing="1" bgcolor="#999999">
              <!--DWLayoutTable-->
              <tr align="center" bgcolor="#f6f6f6"> 
                <td colspan="2"><b>�޸�����</b></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF"> 
                <td><div align="right">ԭ���룺</div></td>
                <td><input name="formerPassword" type="text" id="formerPassword"></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF"> 
                <td width="36%"><div align="right">�����룺</div></td>
                <td width="64%"><input name="newPassword" type="text" id="newPassword" ></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF"> 
                <td>ȷ�������룺</td>
                <td> <div align="center">
                    
                <input name="againNewPassword2" type="password" id="againNewPassword2" >
                  </div></td>
              </tr>
              <tr align="center" bgcolor="#FFFFFF">
                <td><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td><div align="right">
                    <input name="submit" type="reset" value="����" src="img/index.login.gif" width="50" height="22" border="0" >
                    �� 
                    <input name="submit2" type="submit" value="�ύ" src="img/index.login.gif" width="50" height="22" border="0" >
                  </div></td>
              </tr>
            </table>
        </div></td>
</form>
<SCRIPT language=JavaScript type=text/JavaScript>
function check()
{

	if(document.form1.formerPassword.value=='')
	{
		alert('ԭ���벻��Ϊ��');
		document.form1.formerPassword.focus();
		return false;
	}
	if(document.form1.newPassword.value=='')
	{
		alert('�����벻��Ϊ��');
		document.form1.newPassword.focus();
		return false;
	}
	if(document.form1.newPassword.value.length<6||document.form1.newPassword.value.length>15)
	{
		alert('����λ�����ܴ���15С��6');
		document.form1.newPassword.value='';
		document.form1.newPassword.focus();
		return false;
	}
	if(document.form1.newPassword.value!=document1.form1.againNewPassword.value)
	{
		alert('�����������벻ͬ������������');
		document.form1.againPassword.value=='';
		document.form1.againPassword.focus();
		return false;
	}
}
</script>
</body>
</html>
