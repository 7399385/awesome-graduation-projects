<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")==null){
	response.sendRedirect("bomb.htm");}else{
%>
<head>
<link href=../css.css rel=STYLESHEET type=text/css>
</head>
<%
String action=request.getParameter("action");
if(action==null)
	action="notchange";
if(action.equals("change")){

sql="update system set name='"+getStr(request.getParameter("name"))+"',tel='"+getStr(request.getParameter("tel"))+"',fax='"+getStr(request.getParameter("fax"))+"',mail='"+getStr(request.getParameter("mail"))+"',oicq='"+getStr(request.getParameter("oicq"))+"',web='"+getStr(request.getParameter("web"))+"',sitename='"+getStr(request.getParameter("sitename"))+"',code='"+getStr(request.getParameter("code"))+"',maddr='"+getStr(request.getParameter("maddr"))+"',msn='"+getStr(request.getParameter("msn"))+"',mname='"+getStr(request.getParameter("mname"))+"',ymaddr='"+getStr(request.getParameter("ymaddr"))+"',ymname='"+getStr(request.getParameter("ymname"))+"'";

mdb.executeUpdate(sql);
out.print("ϵͳ�������");
}else{

%>



<table border="0" width="100%" cellspacing="1">
  <tr>
    <td width="100%">
      <form method="POST" action="upsystem.jsp?action=change">
        <table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr> 
            <%sql="select * from system";
          rs=mdb.executeQuery(sql);
		  rs.next();%>
            <td width="11%">��ϵ��</td>
            <td width="89%"><input type="text" name="name" size="20" value="<%=rs.getString("name")%>" class=input></td>
          </tr>
          <tr> 
            <td width="11%">��ϵ�绰</td>
            <td width="89%"><input type="text" name="tel" size="20" value="<%=rs.getString("tel")%>" class=input></td>
          </tr>
          <tr>
            <td>��ϵ����</td>
            <td><input type="text" name="fax" size="20" value="<%=rs.getString("fax")%>" class=input></td>
          </tr>
          <tr>
            <td>�����ʼ�</td>
            <td><input type="text" name="mail" size="20" value="<%=rs.getString("mail")%>" class=input></td>
          </tr>
          <tr>
            <td>OICQ</td>
            <td><input type="text" name="oicq" size="20" value="<%=rs.getString("oicq")%>" class=input></td>
          </tr>
          <tr>
            <td>��վ����</td>
            <td><input type="text" name="sitename" size="20" value="<%=rs.getString("sitename")%>" class=input></td>
          </tr>
          <tr>
            <td>��ַ</td>
            <td><input type="text" name="web" size="20" value="<%=rs.getString("web")%>" class=input>
              <font color="#FF0000">���磺www.freedown.net</font></td>
          </tr>
          <tr>
            <td>���л���ַ</td>
            <td><input type="text" name="maddr" size="60
			" value="<%=rs.getString("maddr")%>" class=input></td>
          </tr>
          <tr>
            <td>���л���ʺ�</td>
            <td><input type="text" name="msn" size="60
			" value="<%=rs.getString("msn")%>" class=input></td>
          </tr>
          <tr>
            <td>�տ�������</td>
            <td><input type="text" name="mname" size="20" value="<%=rs.getString("mname")%>" class=input></td>
          </tr>
          <tr>
            <td>�ʾֻ���ַ</td>
            <td><input type="text" name="ymaddr" size="60
			" value="<%=rs.getString("ymaddr")%>" class=input></td>
          </tr>
          <tr>
            <td>�ʵݽ�����</td>
            <td><input type="text" name="ymname" size="20" value="<%=rs.getString("ymname")%>" class=input></td>
          </tr>
          <tr>
            <td>��������</td>
            <td><input type="text" name="code" size="20" value="<%=rs.getString("code")%>" class=input></td>
          </tr>
        </table>

        <p><input type="submit" value="�ύ" name="B1" class=input></p>
      </form>
      <p>��</td>
  </tr>
</table>
<%}
mdb.Close();
	}
%>