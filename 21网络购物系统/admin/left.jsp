<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")!=null){
//--------------------------------------logged------------------------------------------------------------------
%>
<html>
<head>
<title>����ҳ��</title>
<style type=text/css>
BODY{
FONT-SIZE:9pt;
scrollbar-face-color: #DEE3E7;
scrollbar-highlight-color: #FFFFFF;
scrollbar-shadow-color: #DEE3E7;
scrollbar-3dlight-color: #D1D7DC;
scrollbar-arrow-color:  #006699;
scrollbar-track-color: #EFEFEF;
scrollbar-darkshadow-color: #98AAB1;
}
td  { font:normal 12px ����; }
a  { font:normal 12px ����; color:#000000; text-decoration:none; }
a:hover  { color:#428EFF;text-decoration:underline; }
</style>
</head>
<BODY leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle1 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25  id=menuTitle1 onclick="showsubmenu(0)" align="center" bgcolor="#DBC2B0"> 
          <b><font color="#3366CC">ʹ�ð���</font></b></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
            <table cellpadding=0 cellspacing=0 align=center width=135>
              <tr> 
                <td height=20><a target="_top" href="../index.jsp">������ҳ</a></td>
              </tr>
              <tr> 
                <td height=20><a href="quit.jsp" target="_top">ע����½</a></td>
              </tr>
    
              <tr> 
                <td height=20><a href=main.html target=right>�鿴ʹ�ð���</a></td>
              </tr>
            </table>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle1 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25 align="center" bgcolor="#DBC2B0"> 
          <b><font color="#3366CC">��Ʒ��������</font></b></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
            <table cellpadding=0 cellspacing=0 align=center width=135>
              <tr> 
                <td height=20><a href=addhw.jsp target=right>�������Ʒ</a></td>
              </tr>
              <tr> 
                <td height=20><a href=delhw.jsp target=right>�鿴���޸�</a></td>
              </tr>
              <tr> 
                <td height=20><a href=subpass.html target=right>������Ʒ����</a></td>
              </tr>
              <tr> 
                <td height=20><a href=submitsub.html target=right>��ȷ�϶���</a></td>
              </tr>
              <tr> 
                <td height=20><a href=subreport.html target=right>��ѯͶ�߶���</a></td>
              </tr>
              </table>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle1 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25 align="center" bgcolor="#DBC2B0"> 
          <b><font color="#3366CC"> 
          <span>������վ�û�</span></font></b></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
            <table cellpadding=0 cellspacing=0 align=center width=135>
              <tr> 
                <td height=20><a href=usermanage.jsp target=right>������վ�û�</a></td>
              </tr>
              <tr> 
                <td height=20><a href=adduser.jsp target=right>����VIP �û�</a></td>
              </tr>
              <tr> 
                <td height=20><a target="right" href="ac.jsp">�����̨����Ա</a></td>
              </tr>
            </table>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle1 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25 align="center" bgcolor="#DBC2B0"> 
          <font color="#3366CC"><b>�������</b></font></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
            <table cellpadding=0 cellspacing=0 align=center width=135>
              <tr> 
                <td height=20><a href=addsort.jsp target=right>��Ʒ�������</a></td>
              </tr>
              <tr> 
                <td height=20><a href=addsort.jsp target=right>��ƷС�����</a></td>
              </tr>
            </table>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle1 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25 align="center" bgcolor="#DBC2B0"> 
          <font color="#3366CC"><b>��վ��Ϣ����</b></font></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
<table cellpadding=0 cellspacing=0 align=center width=135>
	
<tr>
                <td height=20><a href=addnews.jsp target=right>�����ҳ����</a></td>
              </tr>

<tr>
                <td height=20><a href=delnews.jsp target=right>�����޸�ɾ��</a></td>
              </tr>

<tr>
                <td height=20><a href=gg.jsp target=right>��ҳ��������</a></td>
              </tr>

</table>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle1 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25 align="center" bgcolor="#DBC2B0"> 
          <font color="#3366CC"><b>��վ��������</b></font></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
            <table cellpadding=0 cellspacing=0 align=center width=135>
              <tr> 
                <td height=20><a href=upsystem.jsp target=right>��վ��Ϣ����</a></td>
              </tr>
              <tr> 
                <td height=20><a href=guanggao.jsp target=right>��վ�������</a></td>
              </tr>
              
              <tr> 
                <td height=20><a href=links.jsp target=right>�������ӹ���</a></td>
              </tr>
            </table>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td  id=menuTitle2 onclick="showsubmenu(0)" align="center">
        <img border="0" src="../img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr>
        <td height=25 align="center" bgcolor="#DBC2B0"> 
          <font color="#3366CC"><b>��Ȩ��Ϣ</b></font></td>
  </tr>
  <tr>
    <td bgcolor="#F5EFE7">
            <table cellpadding=0 cellspacing=0 align=center width=135 height="29">
              <tr> 
                <td height=29><p style="line-height: 150%">
				&copy;<a target="_blank" href="http://shop.danhome.com"><font color="#FF0000"><b>ckstudio</b></a><br>
				<a target="_blank" href="http://shop.danhome.com">
                http://shop.danhome.com</a><br>
				<a href="mailto:ckstudio@sina.com">ckstudio@sina.com</a><br>
              QQ:<span lang="zh-cn">41044086</span></td>
              </tr>
              </table>
	</td>
  </tr>
</table>
<%
}
else{//------------------------------------not logged-------------------------------------------------------
response.sendRedirect("login.jsp");
}
%>