<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%
stmt = con.createStatement() ;
String finalername=request.getParameter("finalername");
String finalerpass=request.getParameter("finalerpass");
rs=stmt.executeQuery("SELECT * from finaler where finalername='"+finalername+"' ");
if(!rs.next())
{
response.sendRedirect("index.jsp");
}else
{

rs.first();
	String passDB = rs.getString("finalerpass");//�õ����ݿ��е�����
	if(passDB.equals(finalerpass)){//���û���д������Ƚ�,
session.setAttribute("finaler","yes");
session.setAttribute("finalername",finalername);
response.sendRedirect("finaler.jsp");
	}else{
		response.sendRedirect("index.jsp");
	}
}
stmt.close(); 
con.close();
%>