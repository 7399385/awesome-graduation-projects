<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/md5.asp"-->
<!--��ӹ���Ա����ʼ-->
<%
if Request.Form("action")="��ӹ���Ա" then
	'�жϹ���Ա���û����Ƿ��Ѿ�����
	sqlstr="select * from admin where admin_user='"&Request.Form("admin_user")&"'"
	set rs1=conn.execute(sqlstr)
	if not rs1.eof then
		Response.Write("����Ա�û��������ظ������������")
		Response.Write("<a href='system_admin.asp'>����</a>")
		Response.End()
	end if
	
	sqlstr="insert into admin(admin_user,admin_pwd,admin_Name,admin_bumen) values('"&Request.Form("admin_user")&"','"&md5(Request.Form("password"))&"','"&Request.Form("admin_Name")&"','"&Request.Form("admin_bumen")&"')"
	conn.execute(sqlstr)
	Response.Write("<script>alert('����Ա"&Request.Form("admin_user")&"��ӳɹ�');window.location='system_admin.asp'</script>")
end if
%>
<!--��ӹ���Ա�������-->


<!--�޸Ĺ���Ա�������ʼ-->
<%
if Request.Form("action")="�޸�����" then
	IF Request("password")<>Empty Then
		sqlstr="update admin set admin_pwd='"&md5(Request.Form("password"))&"',admin_Name='"&Request.Form("admin_Name")&"',admin_bumen='"&Request.Form("admin_bumen")&"' where id="&Request("id")
	Else
		sqlstr="update admin set admin_Name='"&Request.Form("admin_Name")&"',admin_bumen='"&Request.Form("admin_bumen")&"' where id="&Request("id")
	End IF
	conn.execute(sqlstr)
	Response.Write("<script>alert('����Ա"&Request.Form("admin_user")&"�����޸ĳɹ�');window.location='system_admin.asp'</script>")
end if
%>
<!--�޸Ĺ���Ա����������-->

<!--ɾ������Ա����ʼ-->
<%
if Request("action")="del" then
	sqlstr="delete from admin where id="&Request("id")
	conn.execute(sqlstr)
	Response.Write("<script>alert('ɾ���ɹ�');window.location='system_admin.asp'</script>")
end if
%>
<!--ɾ������Ա�������-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<script language="javascript">
function chkform(formname){
	if(formname.admin_user.value==""){
		alert("����д����Ա�û���")
		return false
	}
	if(formname.password.value==""){
		alert("����д����")
		return false
	}
	if(formname.password.value!=formname.password1.value){
		alert("������������벻ͬ")
		return false
	}
	if(formname.admin_Name.value==""){
		alert("��������Ϊ��")
		return false
	}
}
function chkform2(formname){
	if(formname.password.value!=formname.password1.value){
		alert("������������벻ͬ")
		return false
	}
	if(formname.admin_Name.value==""){
		alert("��������Ϊ��")
		return false
	}
}
</script>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #990000}
-->
</style>
</head>

<body>
<table width="100%" height="500" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
<!--�޸Ĺ���Ա�������ʼ-->
<%if Request("action")="changpwdform" then
sqlstr="select * from admin where id="&Request("id")
set rs=conn.execute(sqlstr)
%>
<form method="post" action="system_admin.asp" onSubmit="return chkform2(this)">
  <table width="85%" border="0" cellpadding="0" cellspacing="0" class="table_border">
    <tr>
      <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
        <tr>
          <td align="center" class="table_bg_size">����Ա�ʺ������޸�</td>
        </tr>
      </table></td>
      </tr>
    <tr>
      <td colspan="2"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
        <tr class="table_bg_n">
          <td width="30%" height="25" align="center">�û���</td>
          <td class="padding-left-10"><%=rs("admin_user")%></td>
        </tr>
        <tr class="table_bg_n">
          <td height="25" align="center">����</td>
          <td class="padding-left-10"><input name="password" type="password" id="password" size="30" maxlength="15">
            <span class="huang style1">(���޸��뱣����)</span></td>
        </tr>
        <tr class="table_bg_n">
          <td height="25" align="center">ȷ������</td>
          <td class="padding-left-10"><input name="password1" type="password" id="password1" size="30" maxlength="15">
            </td>
        </tr>
        <tr class="table_bg_n">
          <td height="25" align="center">����</td>
          <td class="padding-left-10"><input name="admin_Name" type="text" id="admin_Name" value="<%=rs("admin_Name")%>" size="30" maxlength="15">
            <span class="style1">*</span> </td>
        </tr>
        <tr class="table_bg_n">
          <td height="25" align="center">����</td>
          <td class="padding-left-10"><input name="admin_bumen" type="text" id="admin_bumen" value="<%=rs("admin_bumen")%>" size="30" maxlength="15"></td>
        </tr>
        <tr class="table_bg_n">
          <td height="25" colspan="2" align="center"><input name="action" type="submit" id="action" value="�޸�����">
              <input type="hidden" name="id" id="id" value="<%=rs("id")%>"></td>
        </tr>
      </table></td>
    </tr>
  </table>
  </form>
<%end if%>
<!--�޸Ĺ���Ա�������ʼ-->
<!--Ĭ��ҳ��ʼ-->
<%if Request("action")="" then%>
	<table width="85%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom:25px;">
      <tr>
        <td align="center"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_border">
            <tr>
              <td class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
                  <tr>
                    <td align="center" class="table_bg_size"><strong>�޸ġ�ɾ������Ա</strong></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                  <tr align="center" class="table_bg_n">
                    <td width="117" height="25"><strong>����Ա�ʻ�</strong></td>
                    <td width="171"><strong>����</strong></td>
                    <td width="165"><strong>����</strong></td>
                    <td width="97"><strong>����һ</strong></td>
                    <td width="97"><strong>������</strong></td>
                  </tr>
                  <%
			sqlstr="select * from admin"
			Set rs=conn.execute(sqlstr)
			do while not rs.eof
			%>
                  <tr align="center" class="table_bg_n">
                    <td height="22"><%=rs("admin_user")%></td>
                    <td><%=rs("admin_Name")%></td>
                    <td><%=rs("admin_bumen")%></td>
                    <td><a href="system_admin.asp?action=changpwdform&id=<%=rs("id")%>">�༭</a></td>
                    <td><a href="system_admin.asp?action=del&id=<%=rs("id")%>" onClick="if (!confirm('ȷʵҪɾ������Ա��')){return false}">ɾ��</a></td>
                  </tr>
                  <%
			rs.movenext
			loop
			%>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table><table width="85%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_border">
          <tr>
            <td class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
              <tr>
                <td align="center" class="table_bg_size">����Ա�ʺ����</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><form method="post" action="system_admin.asp" onSubmit="return chkform(this)" style="margin:0px;">
              <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                <tr class="table_bg_n">
                  <td width="30%" height="25" align="center">�û���</td>
                  <td class="padding-left-10"><input name="admin_user" type="text" id="admin_user" size="30" maxlength="15">
                    <span class="style1">*(��*������д)</span></td>
                </tr>
                <tr class="table_bg_n">
                  <td height="25" align="center">����</td>
                  <td class="padding-left-10"><input name="password" type="password" id="password" size="30" maxlength="15">
                    <span class="style1">*</span></td>
                </tr>
                <tr class="table_bg_n">
                  <td height="25" align="center">ȷ������</td>
                  <td class="padding-left-10"><input name="password1" type="password" id="password1" size="30" maxlength="15">
                    <span class="style1">*</span></td>
                </tr>
                <tr class="table_bg_n">
                  <td height="25" align="center">����</td>
                  <td class="padding-left-10"><input name="admin_Name" type="text" id="admin_Name" size="30" maxlength="15">
                    <span class="style1">*</span></td>
                </tr>
                <tr class="table_bg_n">
                  <td height="25" align="center">����</td>
                  <td class="padding-left-10"><input name="admin_bumen" type="text" id="admin_bumen" size="30" maxlength="15"></td>
                </tr>
                <tr align="center" class="table_bg_n">
                  <td height="25" colspan="2"><input name="action" type="submit" id="action" value="��ӹ���Ա">
                    &nbsp;&nbsp;&nbsp;
                    <input type="button" name="Submit" value="������д"></td>
                </tr>
              </table>
            </form></td>
          </tr>
        </table></td>
      </tr>
    </table>
      <%end if%>
<!--Ĭ��ҳ��ʼ-->
    </td>
  </tr>
</table>
</body>
</html>
