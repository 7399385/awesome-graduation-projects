<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%
stmt = con.createStatement() ;
String username=request.getParameter("user");
rs=stmt.executeQuery("SELECT * from qyml where username='"+username+"'");
if(!rs.next())
{%>
<p align="center">
<font color="#800000">��ϲ�������ʺ�������ʹ�ã������ע�ᡣ <br>
</font>
<br>
<a href="javascript:window.close()">�رմ���</a></p>
<%}
else
{%>
<p align="center">�Բ��𣡴��ʺ��ѱ���ע�ᣬ������ѡ�ʺ�<br><br>
<a href=../info/renzheng.jsp?id=<%=username%> target="_blank">����鿴�û�Ա��Ϣ</a></p>
<%}
stmt.close(); 
con.close();
%>