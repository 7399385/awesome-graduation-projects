<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="mdb" class="ckstudio.db.mysqlconn" scope="page"/>
<%
if(request.getParameter("action").equals("login")){
String admin_name=request.getParameter("admin_name");
String admin_pass=request.getParameter("admin_pass");
if((admin_name.indexOf("'")!=-1)||(admin_pass.indexOf("'")!=-1))
out.print("�벻Ҫʹ�÷Ƿ��ַ�");
else{
String sql="select * from admin where admin_name='"+admin_name+"' and admin_pass='"+admin_pass+"'";
ResultSet rs=mdb.executeQuery(sql);
    if(!rs.next())
        out.print("<center>�û��������벻ƥ��");
    else{
		
        session.setAttribute("admin_name",""+rs.getString("admin_name")+"");
        response.sendRedirect("manage.jsp");
    }
mdb.Close();
	}
}
%>