
<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%@ include file="../config.jsp"%>
<HTML>
<TITLE><%=webname%>----�����µ����˸�����!</TITLE>
<link href="../conn/laba.css" rel="stylesheet" type="text/css">
<BODY leftMargin=0 marginwidth="0"  topMargin=0 background=../images/c_cnco_bj.gif align=center>

<iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=../top.jsp topmargin=0 width=760 height=63 align=center></iframe>


<CENTER><BR>
<FORM name=form1 
action=denglu.jsp method=post><INPUT type=hidden 
value=/catalog/turbine/template/product,ManagePage name=Done> <INPUT type=hidden 
value=1 name=cc> <INPUT type=hidden value=2 name=step> <INPUT type=hidden 
name=from_where> <INPUT type=hidden name=asker> <BR>
<TABLE cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=M><IMG height=16 src="images/icon_attion_16.gif" 
      width=16 align=absMiddle> <FONT 
      color=#ff7300>��Ŀǰ���еĲ�������Ҫ����¼������ܼ�������</FONT> </TD></TR></TBODY></TABLE>
<HR width=750 color=#ff7300 SIZE=3>
<BR><BR>
<TABLE cellSpacing=0 cellPadding=0 width=730 border=0>
  <TBODY>
  <TR>
    <TD><div align=left><%String erry=request.getParameter("erry");%>
<%if(erry==null){}else{%><font color=red><%=erry%></font><%}%></div><IMG height=23 src="images/joinin_bmember.gif" 
      width=105><BR><BR></TD>
    <TD style="PADDING-LEFT: 40px" colSpan=3><IMG height=23 
      src="images/joinin_nmember.gif" width=105><BR><BR></TD></TR>
  <TR>
    <TD align=middle width="50%">
      <TABLE height=142 cellSpacing=0 cellPadding=0 width=352 border=0>
        <TBODY>
        <TR>
          <TD background=images/signin_back.gif>
            <TABLE cellSpacing=3 cellPadding=3 width="90%" align=center 
border=0>
              <TBODY>
              <TR>
                <TD colSpan=3>
                  <DIV class=S align=center>
                  <DIV align=left>�������¼�������룬������¼�����ɡ�</DIV></DIV></TD></TR>
              <TR>
                <TD class=M width="35%">��Ա��¼���� </TD>
                <TD width="35%"><INPUT tabIndex=1 maxLength=20 size=17 
                  name=user></TD>
                <TD class=S></TD></TR>
              <TR>
                <TD class=M>�ܡ������룺 </TD>
                <TD><INPUT tabIndex=2 type=password size=17 name=pass></TD>
                <TD class=S><A 
                  href="../info/forget.jsp">�������룿</A></TD></TR>



<INPUT tabIndex=2 type=hidden size=17 name=referer value="<%=request.getParameter("referer")%>">


              <TR>
                <TD class=M>&nbsp;</TD>
                <TD><INPUT class=M tabIndex=3 type=submit value="��   ¼" name=Submit></TD>
                <TD class=S>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD width="4%"></TD>
    <TD style="PADDING-LEFT: 50px; BORDER-LEFT: #9a9a9a 1px solid" 
      width="26%"><a href="reg/register.jsp"'><img src=info/images/zhuce.gif border=0></SPAN><BR><BR></TD>
    <TD class=M width="20%">��ʼ�������!<BR><BR></TD></TR></TBODY></TABLE><BR><BR>


<HR style="HEIGHT: 3px" color=#ff7300 width=750>

<%@ include file="../end.jsp"%>