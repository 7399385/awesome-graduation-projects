<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")==null){
	;
}else{
%><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href=../css.css rel=STYLESHEET type=text/css>
</head>
<%
	String action=request.getParameter("action");
	if(action==null)
action="nosave";
if(action.equals("save")){
    if(request.getParameter("user")==null){
		;}else{
			String user_name=getStr(request.getParameter("user"));
			String user_pass=getStr(request.getParameter("pass"));
			String user_type=getStr(request.getParameter("type"));
    sql="insert into member(user_name,user_pass,user_type,user_regtime) values('"+user_name+"','"+user_pass+"','"+user_type+"',now())";
    mdb.executeInsert(sql);
    out.print(user_type+"�û���ӳɹ�");
    out.print("<br><a href=adduser.jsp>����</a>");
		}
}else{
%>

<table border="0" width="50%" cellspacing="1" align=center>
 <form method="POST" action="adduser.jsp?action=save">
  <tr>
    <td>�û�����</td><td> 
          <input type="text" name="user" size="20" class=input>
     </td></tr><tr><td>
          ��� </td><td>
          <input type="text" name="pass" size="20" class=input>
     </td></tr><tr><td>
          ���</td><td>
          <select name="type">
		    <option value="vip">VIP��Ա</option>
		  </select>
 </td></tr><tr><td colspan=2>
<input type="submit" value="�ύ" name="B1" class=input>
    </td>
  </tr>
 </form>
</table>
<%
}
mdb.Close();

}
%>