
<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%@ include file="../config.jsp"%>
<HTML>
<TITLE><%=webname%>----�����µ����˸�����!</TITLE>
<link href="../conn/laba.css" rel="stylesheet" type="text/css">
<BODY leftMargin=0 marginwidth="0"  topMargin=0 background=../images/c_cnco_bj.gif align=center>

<iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=../top.jsp topmargin=0 width=760 height=63 align=center></iframe>


<CENTER><BR>

<input type=hidden value=<%=request.getParameter("user")%>>


<BR>
<TABLE cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=M><IMG height=16 src="../images/icon_attion_16.gif" 
      width=16 align=absMiddle> <FONT 
      color=#ff7300>ȡ������</FONT> </TD></TR></TBODY></TABLE>
<HR width=750 color=#ff7300 SIZE=3>
<BR><BR>
<TABLE cellSpacing=0 cellPadding=0 width=730 border=0>
  <TBODY>
  <TR>
    <TD><IMG height=23 src="images/joinin_bmember.gif" 
      width=105><BR><BR></TD></TR>
  <TR>
    <TD align=middle width="50%">
      <TABLE height=142 cellSpacing=0 cellPadding=0 width=500 border=0>
        <TBODY>
        <TR>
          <TD background=images/signin_back.gif>








<%
stmt = con.createStatement() ;
String username=request.getParameter("user");
String anser=request.getParameter("anser");
String email=request.getParameter("email");
rs=stmt.executeQuery("SELECT * from qyml where username='"+username+"' and answer='"+anser+"' and email='"+email+"'");
if(!rs.next())
{%>
<p align="center">�Բ���!��ȷ����������Ƿ���ȷ!Ȼ������һ��!
<%=username%><%=anser%><%=email%>
<br><br>
<br>
<a href="javascript:window.history.go(-1);">���ؼ���</a></p>
<%}
else
{%>
<p align="center">��������� <font color=red><%=rs.getString("pass")%></font>  �����Ʊ���!<br><br>
<br>
<a href="../deng.jsp">���ϵ�¼</a></p>



<%}
stmt.close(); 
con.close();
%>







</TD></TR></TBODY></TABLE></TD>
    </TR></TBODY></TABLE><BR><BR>


<HR style="HEIGHT: 3px" color=#ff7300 width=750>

<%@ include file="../end.jsp"%>





























