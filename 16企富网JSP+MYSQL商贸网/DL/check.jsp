<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%
stmt = con.createStatement() ;
String dlname=request.getParameter("dlname");
String password=request.getParameter("password");
rs=stmt.executeQuery("SELECT * from dl where dlname='"+dlname+"'");

if(!rs.next())
{
response.sendRedirect("index.jsp");
}else
{

rs.first();
String passDB = rs.getString("password");//�õ����ݿ��е�����
if(passDB.equals(password)){//���û���д������Ƚ�,


if (Integer.parseInt((String)rs.getString("flag"))==1){
String id=rs.getString("id");
String dldq=rs.getString("dldq");
session.setAttribute("dlid",id);
session.setAttribute("dlname",dlname);
session.setAttribute("dldq",dldq);
response.sendRedirect("indexdl.jsp");
}else{%>

<script language=JavaScript>{window.alert('����Ȩ���������!');window.location.href='../index.jsp'}</script>


<%
}
}
else{
response.sendRedirect("index.jsp");
}
%>



<%
}
stmt.close(); 
con.close();
%>