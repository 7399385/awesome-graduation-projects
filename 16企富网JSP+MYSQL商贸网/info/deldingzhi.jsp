<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="checksession.jsp"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="../conn/conn.jsp"%>
<%
int id = Integer.parseInt((String)request.getParameter("id"));
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from dingzhisj where id="+id);
rs.next();
int  userid=Integer.parseInt((String) session.getAttribute("userid"));
if (userid==Integer.parseInt((String) rs.getString("memid"))){


String sql="delete from dingzhisj where id="+id;
stmt.executeUpdate(sql);



response.sendRedirect("dingzhisj.jsp");}else{%>
<script language=JavaScript>{window.alert('��Ȩ����!');window.location.href='dingzhisj.jsp'}</script>
<%
}
%>