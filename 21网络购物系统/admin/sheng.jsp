<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%
if(session.getAttribute("admin_name")==null){
	;}else{

%>
<%@ include file="conn.jsp"%>
<%
if(request.getParameter("action").equals("up")){

int user_id=Integer.parseInt(request.getParameter("user_id"));
    sql="select user_type from member where user_id="+user_id+"";
    rs=mdb.executeQuery(sql);
	 if(!rs.next())
        out.print("<center>û�д��û���Ϣ!");
    else{
sql="update member set user_type='VIP' where user_id="+user_id+"";
mdb.executeUpdate(sql);
out.print("�û�����ΪVIP��Ա�ɹ�!");
	}
}
mdb.Close();
	}
%>



