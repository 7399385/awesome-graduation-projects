<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")==null){
;}else{
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href=../css.css rel=STYLESHEET type=text/css>
</head>
<%
    sql="select * from sort";
rs=mdb.executeQuery(sql);
    
%>


<table border="0" width="100%" cellspacing="1">
  <tr>
    <td width="100%">
      <form method="POST" action="addsort1.jsp">
<input type="hidden" name="options" value>
  <table border="0" cellpadding="0" cellspacing="0" width="95%" align="center">

    <tr>
      <td><div align="center"><center><p>��� 
<select name="subject" size="1"style="font-size: 9pt">
      
<%
	if(!rs.next())
	     out.print("<option value=>���������");
	else{
		rs.previous();
         while(rs.next()){
			 int sort_id=rs.getInt("sort_id");
			 String sort_name=rs.getString("sort_name");
             out.print("<option value=" +sort_id+">" +sort_name+ "</option>");
		 }
	}
%>
      </select>
      <input type="submit" value="ɾ��" name="B2" onclick="form.options.value='del'" ></td>
    </tr>
    <tr align="center">
      <td><br>
      </td>
    </tr>
    <tr align="center">
      <td><p>�����֣�<input type="text" name="reTitle" size="20" class=smallinput>
      <input type="submit" value="����" name="B1" onclick="form.options.value='rename'">
      </td>
    </tr>
    <tr align="center">
      <td><br>
      </td>
    </tr>
    <tr align="center">
      <td><p>�����<input type="text" name="newTitle" size="20" class=smallinput>
      <input type="submit" value="����" name="B3" onclick="form.options.value='new'"></td>
    </tr>
  </table>
</form>

    </td>
  </tr>
</table>
<% 
   sql="select * from Nsort order by Nsort_id";
   rs=mdb.executeQuery(sql);
%>

<table width="758" border="0" cellspacing="0" cellpadding="0" height="75">
  <tr>
    <td>
<form method="POST" action="addsort2.jsp">
<input type="hidden" name="options" value>
  <table border="0" cellpadding="0" cellspacing="0" width="95%" align="center">
    <tr>
      <td align="center"><hr><b>��ר�����</b></td>
    </tr>
    <tr align="center">
      <td><br>
      </td>
    </tr>
    <tr>
      <td><div align="center"><center><p>��ר�⣺ 
<select name="subject" size="1" style="font-size: 9pt">
     
<%
	if(!rs.next())
	     out.print("<option value=>������ר��");
	else{
		rs.previous();
        while(rs.next()){
			int Nsort_id=rs.getInt("Nsort_id");
			 String Nsort_name=rs.getString("Nsort_name");
             out.print("<option value='" +Nsort_id + "'>" +Nsort_name + "</option>");
		}
	}
%>
      </select>
      <input type="submit" value="ɾ��" name="B2" onclick="form.options.value='del'"></td>
    </tr>
    <tr align="center">
      <td><br>
      </td>
    </tr>
<% 
   sql="select * from sort order by sort_id";
   rs=mdb.executeQuery(sql);
%>

    <tr align="center">
      <td><p>ר���޸ģ�<input type="text" name="reTitle" size="20"  class=smallinput>
�� <select name="sort_id" size="1"style="font-size: 9pt">
      
<%
	if(!rs.next())
	     out.print("<option value=>���������");
	else{rs.first();
		rs.previous();
         
         while(rs.next()){
			 int sort_id=rs.getInt("sort_id");
			 String sort_name=rs.getString("sort_name");
             out.print("<option value='" +sort_id+ "'>" +sort_name + "</option>");
		 }
	}
%>
      </select> �� 
      <input type="submit" value="����" name="B1" onclick="form.options.value='rename'"><br>(��ѡ���Ϸ���Ӧ�����,Ȼ�����������ֺ�ѡ�����)
      </td>
    </tr>
    <tr align="center">
      <td><br>
      </td>
    </tr>
    <tr align="center">
      <td><p>��ר�⣺<input type="text" name="newTitle" size="20"  class=smallinput>
      �� <select name="psubject" size="1"style="font-size: 9pt">
      
<% 
   sql="select * from sort order by sort_id";
   rs=mdb.executeQuery(sql);
%>
<%
	if(!rs.next())
	     out.print("<option value=>���������");
	else{rs.first();
		rs.previous();
         
         while(rs.next()){
			 int sort_id=rs.getInt("sort_id");
			 String sort_name=rs.getString("sort_name");
             out.print("<option value='" + sort_id + "'>" +sort_name + "</option>");
		 }
	}
%>
      </select> ��
      <input type="submit" value="����" name="B3" onclick="form.options.value='new'"></td>
    </tr>
  </table>
</form></td>
  </tr>
</table>
<%
	mdb.Close();}%>
