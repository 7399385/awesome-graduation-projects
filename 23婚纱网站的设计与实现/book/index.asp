<!-- #include file="../inc/conn.asp" -->
<!--#include file="../inc/function.asp"-->
<%
if request("act")="write" and request("action")="ok" then
   if request("username")="" then
   Response.Write "<script>alert('�����������ǳ�');history.go(-1);</Script>"
   Response.End
   end if
   if request("title")="" then
   Response.Write "<script>alert('���������Ա���');history.go(-1);</Script>"
   Response.End
   end if
   if request("content")="" then
   Response.Write "<script>alert('��������������');history.go(-1);</Script>"
   Response.End
   end if
   set res=server.createobject("adodb.recordset") 
   sql="select * from Gbook"
   res.open sql,conn,1,3
   res.addnew
   res("username")=request("username")
   res("title")=request("title")
   res("from")=request("from")
   res("sex")=request("sex")
   res("email")=request("email")
   'res("qq")=request("qq")
   res("homepage")=request("homepage")
   res("content")=request("content")
   res.update
   res.close
   response.write "<script language=javascript>alert('���Գɹ�');window.location='../book/';</script>"
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="title" content="Charles">
<META content="ԭ����� ��ҳ���� ������� �����ƹ� ����ע�� domain domain domain domain homepage homepage homepage homepage web hosting web hosting web hosting" name=keywords>
<META content=ԭ�����,�ṩ���ʹ�������ע�ᣬ��������������ע�᣻�����������ռ�����ã��Լ����������ҳ�ȷ��� name=description>
<title><%= Web_Name %></title>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<script>
<!--
function windowopen(vhtm){
newwindow=window.open(vhtm,"","fullscreen=1,toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no");
}
//-->
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<!--#include file="../inc/top2.asp" -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="253"><img src="../images/product_03.jpg" width="253" height="598"></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="../images/book.jpg" width="750" height="83"></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="38"><img src="../images/product_05.jpg" width="38" height="460"></td>
          <td width="642" valign="top"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                    <form action="index.asp?act=write&action=ok" method="post" name="addform">
                      <tr>
                        <td height='30' colspan="2" align='right' bgcolor="#FFFFFF" class="main_text_12_24">��&nbsp;<font color="red">&nbsp;&nbsp;&nbsp;</font></td>
                      </tr>
					   <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">�ǳ�:��</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF">&nbsp;
                          <input type="text" name="username" id="username" maxlength="20" size="30">                          &nbsp;<font color="red">*</font></td>
                      </tr>
                      <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">����:��</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF">&nbsp;
                            <input type="text" name="from" id="from" maxlength="20" size="30">
                          &nbsp;</td>
                      </tr>
                      <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">��ҳ:��</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF">&nbsp;
                            <input type="text" name="homepage" id="homepage" maxlength="20" size="30">
                          &nbsp;</td>
                      </tr>
                      <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">E-mail:��</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF">&nbsp;
                            <input type=text name=email id=email maxlength=20 size='30'>
                          &nbsp;</td>
                      </tr>
                      <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">�Ա𣺡�</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF" class="main_text_12_24">&nbsp;&nbsp;<font color=red>
                          <input name="sex" type="radio" value="0" checked="checked" />
                          </font><span class="STYLE1">��</span><font color=red>
                          <input type="radio" name="sex" value="1" />
                        </font><span class="STYLE1">Ů</span>��</td>
                      </tr>
                      <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">���Ա��⣺��</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF">&nbsp;
                            <input type=text name=title id=title maxlength=20 size='30'>                        </td>
                      </tr>
                      <tr>
                        <td width='24%' height='30' align='right' bgcolor="#FFFFFF" class="main_text_12_24">�������ݣ���</td>
                        <td width='76%' height='30' bgcolor="#FFFFFF">&nbsp;
                            <textarea rows='5' name='content' cols='40'></textarea>                        </td>
                      </tr>
                      <tr>
                        <td height='40' colspan="2" align='right' bgcolor="#FFFFFF">&nbsp;
                            <div align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="submit" name="Submit4" value="�ύ" />
                              &nbsp;&nbsp;&nbsp;
                              <input type="reset" name="Submit42" value="��д" />
                          </div></td>
                      </tr>
                    </form>
                  </table></td>
          <td><img src="../images/product_07.jpg" width="70" height="460"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="../images/product_08.jpg" width="750" height="55"></td>
        </tr>
      </table></td>
  </tr>
</table>
<!--#include file="../inc/end2.asp" -->
</body>
</html>
 
 
 
 
 
 
 
 
 
 
 






