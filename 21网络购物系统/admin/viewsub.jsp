<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*,java.util.Date" errorPage="" %>
<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")!=null){
//--------------------------------------logged------------------------------------------------------------------
  String sub_ids,sub_number;
    int sub_id;
 sub_ids=request.getParameter("sub_id");
 sub_id=Cint(sub_ids);
%>
<html>

<%//--------------------------------------action==null-------------------------------------


sql="select * from sub where sub_id="+sub_id;
rs=mdb.executeQuery(sql);
 if(!rs.next())
 {   out.print("û�д˶�����Ϣ");
  }
  else
  {
  sub_number=rs.getString("sub_number");
  %><head>
<link href=../css.css rel=STYLESHEET type=text/css>
<title>����:<%=sub_number%>��ϸ��Ϣ</title>
</head>

<table border="0" width="560" cellspacing="1">
  <tr>
    <td width="100%">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <td width="100%" bgcolor="efefef"> 
            <p align="center">������:<font color=blue><%=sub_number%> 
             
              </font> &nbsp;&nbsp;&nbsp;&nbsp;���ʽ��<font color=blue><%=rs.getString("qian")%></font> 
          </td>
        </tr>
        <tr>
          <td width="100%">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#FFFFFF" colspan="2">�������ڣ�<b><%=rs.getDate("sub_date")%></b></td>
                <td bgcolor="#FFFFFF" colspan="2">�����ˣ�<b><%=rs.getString("user_name")%></b></td>
              </tr>
              <tr> 
                <td bgcolor="#FFFFFF" colspan="2">�ջ��ˣ�<b><%=rs.getString("sub_to")%></b></td>
                <td bgcolor="#FFFFFF" colspan="2">�ջ���ַ��<b><%=rs.getString("sub_adds")%></b></td>
              </tr>
              <tr> 
                <td bgcolor="#FFFFFF" colspan="2">�绰��<b><%=rs.getString("sub_tel")%></b></td>
                <td bgcolor="#FFFFFF" colspan="2">E-mail��<b><%=rs.getString("sub_mail")%></b></td>
              </tr>
              <tr> 
                <td bgcolor="#FFFFFF" colspan="4" height="15">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="16%">��ע��Ϣ��</td>
                      <td width="84%"><b><%=rs.getString("other")%></b></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <%rs.close();%>
              <tr bgcolor="#f0f0f0"> 
                <td colspan="4"> 
                  <p align="center"><font color="#FF0000">���������б�</font></p>
                </td>
              </tr>
              <tr bgcolor="#f7f7f7"> 
                <td width="29%">��������</td>
                <td width="12%">����</td>
                <td width="19%">����</td>
                <td width="40%">�ϼ�</td>
              </tr>
              <%
			  sql="select * from basket where sub_number='"+sub_number+"'";
              rs=mdb.executeQuery(sql);
              if(!rs.next())
               {   out.print("û�д˶�����Ϣ");
                 
               }else
			   {
			      rs.previous();
				  String hw_cashs,basket_counts;
				  int totalcash=0,hw_cash,basket_count;
                  while (rs.next())
				  {
				  hw_cashs=rs.getString("hw_cash");
				  hw_cash=Cint(hw_cashs);
				   basket_counts=rs.getString("basket_count");
				  basket_count=Cint(basket_counts);
				  %>
              <tr> 
                <td width="29%" bgcolor="#FFFFFF"><%=rs.getString("hw_name")%></td>
                <td width="12%" bgcolor="#FFFFFF"> <%=hw_cashs%> Ԫ</td>
                <td width="19%" bgcolor="#FFFFFF"><%=basket_counts%></td>
                <td width="40%" bgcolor="#FFFFFF"><font color=red> <%=hw_cash*basket_count%> 
                  </font>Ԫ</td>
                <%
				totalcash=totalcash+hw_cash*basket_count;%>
              </tr>
              <%
                 }
              %>
              <tr> 
                <td bgcolor="#FFFFFF" colspan="3">�ܼ�</td>
                <td width="40%" bgcolor="#FFFFFF"><font color=red><%=totalcash%></font>Ԫ</td>
              </tr>
              <%
			  }
              rs.close();
			  %>
              
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%   }

}
else
{//----------------------------not logged----------------------------------------------

}
mdb.Close();
%>