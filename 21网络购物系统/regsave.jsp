<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="top.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="refresh" content="5;url=index.jsp">
<link href="css.css" rel="stylesheet" type="text/css">

<%
String errmsg="����!";
boolean founderr=false;
String user_name,user_pass,user_pass2,user_adds,user_tel,user_mail,user_postcode;
user_name=errmsg;
user_pass=errmsg;
user_pass2=errmsg;
user_adds=errmsg;
user_tel=errmsg;
user_mail=errmsg;
user_postcode=errmsg;
if(request.getParameter("user_name").equals("")){
	errmsg=errmsg+"�û�������Ϊ��,";
	founderr=true;
}else user_name=getStr(request.getParameter("user_name"));

if(request.getParameter("user_pass").equals("")){
	errmsg=errmsg+"���벻��Ϊ��,";
	founderr=true;
}else user_pass=getStr(request.getParameter("user_pass"));

if(request.getParameter("user_pass2").equals("")){
	errmsg=errmsg+"����ȷ�ϲ���Ϊ��,";
	founderr=true;
}else user_pass2=getStr(request.getParameter("user_pass2"));

if(!user_pass.equals(user_pass2)){
	errmsg=errmsg+"�������벻ͬ!";
	founderr=true;
}

if(request.getParameter("user_adds").equals("")){
	errmsg=errmsg+"��ַ����Ϊ��,";
	founderr=true;
}else user_adds=getStr(request.getParameter("user_adds"));

if(request.getParameter("user_tel").equals("")){
	errmsg=errmsg+"�绰���벻��Ϊ��,";
	founderr=true;
}else user_tel=getStr(request.getParameter("user_tel"));

if(!IsMail(request.getParameter("user_mail"))){
	errmsg=errmsg+"���E-mail�д���,";
	founderr=true;
}else user_mail=getStr(request.getParameter("user_mail"));

if(request.getParameter("user_postcode").equals("")){
	errmsg=errmsg+"�ʱ಻��Ϊ��,";
	founderr=true;
}else user_postcode=getStr(request.getParameter("user_postcode"));

sql="select * from member where user_name='"+user_name+"'";
rs=mdb.executeQuery(sql);
if(rs.next()){
    errmsg=errmsg+"�û����ѱ�����ע��";
    founderr=true;
}
%>
<div align="center">
  <center>
<table border="0" width="500" cellspacing="0" cellpadding="0" height="5" style="border-collapse: collapse" bordercolor="#111111">
          <%if(founderr==false){
			  String sql1;
              sql1="Insert into member(user_name,user_pass,user_adds,user_mail,user_tel,user_regip,user_namec,user_type,user_regtime) values('"+user_name+"','"+user_pass+"','"+user_adds+"','"+user_mail+"','"+user_tel+"','"+request.getRemoteHost()+"','"+getStr(request.getParameter("user_namec"))+"','��Ա',now())";
              mdb.executeInsert(sql1);
            %>
          <tr> 
            <td height="25" align="center" bgcolor="#989DA5">ע��ɹ�</td>
            
          </tr>
          <tr> 
            <td bgcolor="#ECECEC"> <table border="0" width="100%" cellspacing="1">
                <tr> 
                  <td width="100%" ><br> 
                  <div align="center">
                    <center> 
                    <table width="90%" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111">
                      <tr> 
                        <td width="33%" height="25"><div align="right">�û�����</div></td>
                        <td width="67%" height="25"><div align="center"><%=user_name%></div></td>
                      </tr>
                      <tr> 
                        <td width="33%" height="25"><div align="right">���룺</div></td>
                        <td width="67%" height="25"><div align="center"><%=user_pass%></div></td>
                      </tr>
                      <tr> 
                        <td width="33%" height="25"><div align="right">E-mail��</div></td>
                        <td width="67%" height="25"><div align="center"><%=user_mail%></div></td>
                      </tr>
                      <tr> 
                        <td width="33%" height="25"><div align="right">��ַ��</div></td>
                        <td width="67%" height="25"><div align="center"><%=user_adds%></div></td>
                      </tr>
                      <tr> 
                        <td width="33%" height="25"><div align="right">�绰��</div></td>
                        <td width="67%" height="25"><div align="center"><%=user_tel%></div></td>
                      </tr>
                      <tr> 
                        <td width="33%" height="25"><div align="right">�ʱࣺ</div></td>
                        <td width="67%" height="25"><div align="center"><%=user_postcode%></div></td>
                      </tr>
                      <tr> 
                        <td height="25" colspan="2"> <div align="center"><a href="index.jsp">�뷵����ҳ��½,3����Զ�����</a></div></td>
                      </tr>
                      <tr> 
                        <td colspan="2"></td>
                      </tr>
                      <tr> 
                        <td colspan="2"></td>
                      </tr>
                    </table>
                    </center>
                  </div>
                    <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                      <tr> 
                        <td valign="middle"><div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div></td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
          </tr>

          <%}
		  else
		  {%>
          <tr> 
            <td width="100%" height="25" align="center" bgcolor="#989DA5">ע��ʧ��</td> 
          </tr>
          <tr> 
            <td bgcolor="#ECECEC"> <table border="0" width="100%" cellspacing="1">
                <tr> 
                  <td width="100%"><%=errmsg%></td>
                </tr>
              </table></td>
          </tr>
        </table>

  </center>
</div>
<%}%>
<%@ include file="copy.jsp"%>