<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(Products_B)
dim rs
dim sql
dim count
set rs=server.createobject("adodb.recordset")
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.p {padding-left:10px;}
.style1 {color: #990000}
-->
</style>
<script>
function cek(formname)
{
	
	if(formname.P_Name.value=="")
	{
	alert("��Ʒ���Ʊ�����д")
	formname.P_Item.focus()
	return false;
	}
	
	if(formname.smpic.value=="" | formname.smpic.value.length<4)
	{
	alert("СͼƬ����Ϊ�ջ��ַ����")
	formname.smpic.focus()
	return false;
	}
	
	if(formname.bigpic.value=="" | formname.bigpic.value.length<4)
	{
	alert("��ͼƬ����Ϊ�ջ��ַ����")
	formname.bigpic.focus()
	return false;
	}
}
</script>
</head>

<body style="padding-bottom:10px;">
<form name="myform" method="post" action="p_Sava3.asp?action=add" onSubmit="return cek(this)">
  <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
    <tr bgcolor="#DBE6FF">
      <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
          <tr>
            <td align="center" class="table_bg_size"> �������</td>
          </tr>
      </table></td>
    </tr>
    <tr bgcolor="#DBE6FF">
      <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
        <tr class="table_bg_n">
          <td width="30%" height="25" align="center"> ����</td>
          <td width="70%" class="padding-left-10">
		  <%
        sql = "select * from P_Class Where ParentClassID=0 and ID<>71 Order By Xu Asc"
        rs.open sql,conn,1,1
		if rs.eof and rs.bof then
			response.write "���������Ŀ��"
		else
		%>
                <select name="ParentClassID" size="1" id="ParentClassID">
		  <%
			dim selclass
			selclass=rs("ID")
			do while not rs.eof
		  %>
			  <option value="<%=trim(rs("ID"))%>"><%=trim(rs("ClassName"))%></option>
		  <%
			rs.movenext
			loop
			end if
			rs.close
		 %>
                </select></td>
        </tr>

          <tr class="table_bg_n">
            <td height="25" align="center">����</td>
            <td class="padding-left-10"><input name="ClassName" type="text" id="ClassName" size="40">
              <span class="style1">*(��*����)</span></td>
          </tr>


          <tr class="table_bg_n">
            <td height="25" align="center">Сͼ</td>
            <td class="padding-left-10"><input name="smpic" type="text" id="smpic" size="41" maxlength="120"><input type="button" name="Submit2" value="�� ��" onClick="window.open('upload_flash.asp?formname=myform&editname=smpic&uppath=../products_pic&filelx=jpg','','status=no,scrollbars=no,top=20,left=110,width=420,height=165')">
              <span class="style1">*</span></td>
          </tr>
		  <tr class="table_bg_n">
            <td height="80" align="center"> �������</td>
            <td class="padding-left-10">
			<input name="Content" type="hidden">
			<iframe id="eWebEditor1" src="../WebEditor/ewebeditor.asp?id=Content&style=s_mini1" frameborder="0" scrolling="no" width="380" height="250"></iframe>			</td>
          </tr>
          <tr class="table_bg_n">
            <td height="25" colspan="2" align="center"><input type="submit" name="Submit" value="���">
            &nbsp;&nbsp;
            <input type="reset" name="Submit" value="������д"></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
