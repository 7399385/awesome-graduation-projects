<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%
stmt = con.createStatement() ;
String username=request.getParameter("user");
String pass=request.getParameter("pass");
rs=stmt.executeQuery("SELECT * from qyml where username='"+username+"'");
if(!rs.next())
{
session.setAttribute("flash","ok");
response.sendRedirect("login.jsp");
}
else
{


	rs.first();
	String passDB = rs.getString("pass");//�õ����ݿ��е�����
	if(passDB.equals(pass)){//���û���д������Ƚ�,


session.setAttribute("flash",null);
session.setAttribute("login","ok");
String loginname=rs.getString("username");
String userid=rs.getString("id");
String myname=rs.getString("myname");
String vip=rs.getString("vip");
session.setAttribute("loginname",loginname);
session.setAttribute("userid",userid);
session.setAttribute("myname",myname);
session.setAttribute("vip",vip);
response.sendRedirect("login.jsp");
	}else{
                session.setAttribute("flash","ok");
		response.sendRedirect("login.jsp");
	}

}
stmt.close(); 
con.close();
%>