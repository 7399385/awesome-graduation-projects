<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(Link_B)
if Request("action")="�������" then
	found_err=false
	link_name=Request.Form("link_name")
	link_about=Request.Form("link_about")
	link_addr=Request.Form("link_addr")
	smpic=Request.Form("smpic")
	link_type=Request.Form("link_type")
	
	if left(link_addr,7)<>"http://" then
		TwScript("http://"&link_addr)
	end if
	
	if link_name="" then
		TwScript("�������Ʊ�����д")
	end if
	
	if link_addr="" or link_addr="http://" then
		TwScript("���ӵ�ַ������д")
	end if
	
	if found_err=false then
		sqlstr="insert into friend_links(link_name,link_about,link_addr,link_photo,link_type) values('"&link_name&"','"&link_about&"','"&link_addr&"','"&smpic&"',"&link_type&")"
		conn.execute sqlstr
		conn.close
		Response.Write("<script>alert('������ӳɹ�');window.location='frie_manages.asp'</script>")
		Response.End()
	end if
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.b_t {padding-left:10px;padding-right:10px;}
.p {padding-left:10px;}
.style1 {color: #FF0000}
.style2 {color: #990000}
-->
</style>
<script>
function useradd(formname)
{
	if(formname.Duix.value=="")
	{
		alert("��������Ƹ��λ")
		formname.Duix.focus()
		return false;
	}
}
</script>
</head>

<body>
<form name="form1" method="post" action="?no=eshop" onSubmit="return useradd(this)">
  <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
    <tr >
      <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
          <tr>
            <td align="center" class="table_bg_size">�����������</td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td colspan="2"><table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr class="table_bg_n">
          <td height="23" align="right"> �����������ƣ� </td>
          <td class="padding-left-10"><select name="link_type" id="link_type">
            <option value="True" selected>ͼƬ����</option>
            <option value="False">��������</option>
          </select></td>
        </tr>
        <tr class="table_bg_n">
          <td width="158" height="23" align="right"> �����������ƣ� </td>
          <td width="503" class="padding-left-10"><input name="link_name" type="text" id="link_name" size="30" maxlength="100"></td>
        </tr>
        <tr class="table_bg_n">
          <td height="23" align="right"> Ҫ���ӵ���ַ�� </td>
          <td class="padding-left-10"><input name="link_addr" type="text" id="link_addr" value="http://" size="30" maxlength="100">
              <span class="style2">���뱣��ǰ��ġ�http://����������</span></td>
        </tr>
        <tr class="table_bg_n">
          <td height="23" align="right"> ͼƬ��ַ�� </td>
          <td class="padding-left-10"><input name="smpic" type="text" id="smpic" size="41" maxlength="120"><input type="button" name="Submit2" value="�� ��" onClick="window.open('upload_flash.asp?formname=form1&editname=smpic&uppath=../products_pic&filelx=jpg','','status=no,scrollbars=no,top=20,left=110,width=420,height=165')">
              <span class="style2">      ��ͼƬ����88��31�Ĵ�С�� </span></td>
        </tr>
        <tr align="center" class="table_bg_n">
          <td height="25" colspan="2"><input name="action" type="submit" id="action" value="�������"></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
