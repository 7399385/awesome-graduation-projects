<%@ page language="java" contentType="text/html;charset=GB2312"%>

<%
    String getLoginmessage=(String)session.getValue("loginSign");
    if(getLoginmessage!="OK")
    {
        response.sendRedirect("index2.jsp");
    }	
%>
<HTML>
<HEAD>
<TITLE>CHANGEPASSWORD</TITLE>
<script language=JavaScript>
function check(form){
    if (form1.unit_ID.value=="")
    { 
       alert("�����뵥λ���룡");
       form1.unit_ID.focus();
       return false; 
     }
    if (form1.oldPassword.value=="")
    { 
       alert("������ԭ���룡");
       form1.oldPassword.focus();
       return false; 
     }
    if (form1.newPassword.value=="")
    {
      alert("�����������룡");
      form1.newPassword.focus();
      return false;
     }
	 if (form1.newPassword2.value=="")
    {
      alert("������ȷ�����룡");
      form1.newPassword2.focus();
      return false;
     }
	 if(form1.newPassword.value!=form1.newPassword2.value)
	 {
	   alert("��������ȷ�����벻һ�£�");
	   return false;
	 }
     return true;
}
</Script>
</HEAD>
<BODY>
<form name=form1 method=post action="s_checkPw.jsp" onsubmit="return check(this)">
  <table width="270" border="0" cellspacing="0" cellpadding="1" bgcolor="#4f71b8" align="center">
    <tr> 
      <td>
        <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#FFFFFF" align="center">
          <tr> 
            <td bgcolor="#4f71b8" align="center" colspan="2" height="30"><font color="#FFFFFF">�����޸�</font></td>
          </tr>
          <tr> 
            <td bgcolor="#CCCCCC">&nbsp;</td>
            <td bgcolor="#CCCCCC">&nbsp;</td>
          </tr>
          <tr> 
            <td align="center" width="50%" bgcolor="#D8D8D8"><font color="#000099">��λ����</font></td>
            <td align="center" width="50%"> 
              <input name=unit_ID 
                  size=16 type=text>
            </td>
          </tr>
          <tr> 
            <td align="center" bgcolor="#d8d8d8"><font color="#000099">ԭ&nbsp;��&nbsp;��</font></td>
            <td align="center"> 
              <input name=oldPassword 
                  size=16 type=password>
            </td>
          </tr>
          <tr> 
            <td align="center" bgcolor="#d8d8d8"><font color="#000099">��&nbsp;��&nbsp;��</font></td>
            <td align="center"> 
              <input name=newPassword 
                  size=16 type=password>
            </td>
          </tr>
          <tr> 
            <td align="center" bgcolor="#d8d8d8"><font color="#000099">ȷ������</font></td>
            <td align="center"> 
              <input name=newPassword2 
                  size=16 type=password>
            </td>
          </tr>
          <tr> 
            <td height="5" colspan="2"></td>
          </tr>
          <tr align="center"> 
            <td colspan="2"><input type=image src="../images/change.gif" width="62" height="22"></td>
          </tr>
          <tr> 
            <td height="2" colspan="2"></td>
          </tr>
        </table>
      </td>
  </tr>
</table>
  <table width="270" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td width="270" align="center" height="20"><div align="center"><font color="#ff0000">
                            <%
                                String getmessage=(String)session.getValue("s_changeMessage");
                                if(getmessage==null) getmessage="";
                            %>
                            <%=getmessage%>
                        </font></div></td>
    </tr>
  </table>
</form>
</BODY>
</HTML>