<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<HTML>
<TITLE><%=webname%>----�����µ����˸�����!</TITLE>
<HEAD>
<link href="../conn/laba.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY leftMargin=0 marginwidth="0"  topMargin=0 background=../images/c_cnco_bj.gif align=center>

<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 background="../images/v6_top_bg.gif" align=center>
  <TBODY>
  <TR>
    <TD width=270 rowSpan=2><A  href="../"   target="_parent"><IMG  
      src="../images/logo.gif" border=0></A></TD>
    <TD class=s align=right width=480>
<IMG height=10 src="../images/v6_header_spirits.gif" ><br>

<img src=../images/TriTanium17.jpg><a href=../  target="_parent">��  ҳ</a><SPAN 
      class=gray> | </SPAN>
<IMG height=17 alt=����ͨ���� 
      src="../images/icon_trustpass_logo_min.gif"  align=absMiddle 
      border=0><A href="../qifotong.jsp"  target="_parent">��ͨ����</A><SPAN 
      class=gray><SPAN class=gray> 
      | </SPAN><IMG height=16 alt=�������� 
      src="../images/cs2.gif" align=absMiddle 
      border=0><A  href="../let"  target="_parent">��������</A>
</TD></TR>
  <TR>
    <TD vAlign=bottom>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 >
        <TBODY>
        <TR><TD class=headborder width=20%><A href="../reg/register.jsp"  target="_parent">ע���Ա</a></TD>
          
          <TD <%if (request.getParameter("baar")==null){}else{%> class=headonborder<%}%> class=headborder width=20%>
<A href="../sj/come1.jsp?baar=buy" target="_parent"<%if (request.getParameter("baar")==null){}else{%> class=nav <%}%>>��Ҫ�ɹ�</A></TD>
          <TD <%if (request.getParameter("baae")==null){}else{%> class=headonborder<%}%> class=headborder width=20%>
<A href="../sj/come2.jsp?baae=sale" target="_parent"<%if (request.getParameter("baae")==null){}else{%> class=nav <%}%>>��Ҫ����</A></TD>
         

          <TD class=headborder width=20%><A href="../info/" target="_parent">�ҵĻ�Ա����</A> 
           </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>


<TABLE height=45 cellSpacing=0 cellPadding=0 width=750 background=../images/top_bj001.jpg border=0 align=center>
<TBODY>
<TR>
<TD align=center width=10><IMG height=45 src="../images/top_bj002.jpg" width=3></TD>
<form action="../sj/search.jsp" method="post" name="form" id="form" target="_blank">
<td ><img src=../images/s_1.jpg></td>
<TD align=center><INPUT size=13 name=key id=key value="������Ϣ�ؼ���" onfocus="if(value =='������Ϣ�ؼ���'){value =''}" onblur="if (value ==''){value='������Ϣ�ؼ���'}" ></td>
<TD align=center width=5> </TD>
<td ><select name="lei" id="lei">                           
<option value="0" selected>������Ϣ</option>        
<option value="1" >��Ӧ��Ϣ</option>
<option value="2">����Ϣ</option>
<option value="3">������Ϣ</option>
<option value="4">������Ϣ</option>
</select></td>
<TD vAlign=center align=middle><INPUT type=image src="../images/index_sous.gif"  align=middle border=0></td>
<td width=10></td>
<td><font color=cccccc>��������:</font>
 <a href=../sj/search.jsp?key=����&lei=0 target="_blank"><font color=ffffff>����</a>
 <a href=../sj/search.jsp?key=��װ&lei=0 target="_blank"><font color=ffffff>��װ</a>
 <a href=../sj/search.jsp?key=�ֲ�&lei=0 target="_blank"><font color=ffffff>�ֲ�</a>
 <a href=../sj/search.jsp?key=��&lei=0 target="_blank"><font color=ffffff>��</a>
 <a href=../sj/search.jsp?key=����&lei=0 target="_blank"><font color=ffffff>����</a>
 <a href=../sj/search.jsp?key=����Ʒ&lei=0 target="_blank"><font color=ffffff>����Ʒ</a></td>
<TD align=center width=80><a href=../../searchhelp.jsp target="_blank"><img border=0  src=../images/help.gif width=15 height=15><font color=ffffff> ��������</font></a></TD>
<TD align=center width=10></td>
</form></TR></TBODY></TABLE>




   <TABLE cellSpacing=0 cellPadding=0 width="750" align=center 
      bgColor=#ff7d00 border=0>
        <TBODY>
        <TR>
          <TD bgColor=#cccccc height=6></TD></TR>
        <TR>
          <TD height=30>
            <DIV align=center>
            <TABLE height=30 cellSpacing=0 cellPadding=0 width=750 align=center 
            border=0>
              <TBODY>
              <TR>
                <TD align=middle width=82 height=28><A class=nav 
                  href="../sj/"  target="_parent">��ҵ����</A></TD>
                <TD width=1 bgColor=#ffffff></TD>
                <TD align=middle width=82><A class=nav 
                  href="../show/"  target="_parent">��Ʒչ��</A></TD>
                <TD align=right width=1 bgColor=#ffffff></TD>
                <TD align=middle width=82><A class=nav 
                  href="../minglu/" target="_parent">��ҵ��ȫ</A></TD>
                <TD width=1 bgColor=#ffffff></TD> 
                <TD align=middle width=82><A class=nav 
                  href="../zixun/" target="_parent">��ҵ��Ѷ</A></TD>
                <TD width=1 bgColor=#ffffff></TD>
                <TD align=middle width=82><A class=nav 
                  href="../book/" target="_parent">���˻���</A></TD>
                <TD width=1 bgColor=#ffffff></TD>
                <TD align=middle width=82><A class=nav 
                  href="../job/" target="_parent">�г�ר��</A></TD>
                <TD width=1 bgColor=#ffffff></TD>
                <TD align=middle width=82><A class=nav 
                  href="../union/" target="_parent">��վ��¼</font></A></TD> 
                <TD width=1 bgColor=#ffffff></TD>
                <TD align=middle bgColor=#666666><A class=nav 
                  href="../let/" target="_parent">��н��ʮ������׬</A></TD></TR></TBODY></TABLE></DIV></TD></TR>
        <TR>
          <TD background=../images/bg_navline.gif 
      height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>