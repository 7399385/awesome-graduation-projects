<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %>
<%@ page import="com.core.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (!Crazyadept.UserIsOK(session,FinalConstants.STATUS_ADMIN)) return;%>
<html>
<head>
<title>add_affiche</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<script src="../js/validate.js"></script>
<body> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td colspan="2" class="TableTitle1" >添加公告</td> 
  </tr> 
  <form name="form2" method="post" action="modify_affiche.jsp"> 
    <tr align="center"> 
      <td width="40%" bgcolor="#FFFFFF">公告标题</td> 
      <td width="60%" align="left" bgcolor="#FFFFFF"> <input type="text" name="title"> </td> 
    </tr> 
    <tr align="center"> 
      <td height="27" bgcolor="#FFFFFF">公告内容</td> 
      <td align="left" bgcolor="#FFFFFF"> <textarea name="content" cols="50" rows="8" class="textarea"></textarea> </td> 
    </tr> 
    <tr align="center"> 
      <td height="27" colspan="2" bgcolor="#FFFFFF"> <input type="hidden" name="action" value="add"> 
        <input type="hidden" name="uid" value="<%=(((User)session.getAttribute("user")).getUid())%>"> 
        <input name="Submit" type="submit" class="btn_grey" onClick=" return affiche()" value="提交"> 
&nbsp;&nbsp; 
      <input name="Submit2" type="reset" class="btn_grey" value="重置"> </td> 
    </tr> 
  </form> 
</table> 
<table width="80%"  border="0" cellspacing="0" cellpadding="0"> 
  <tr> 
    <td height="50" colspan="5" align="right"><a href="#" onClick="Jscript:history.back()">返回</a></td> 
  </tr> 
</table> 
</body>
</html>
