<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../top.jsp"%>
<%@ include file="../conn/conn.jsp"%>













<TABLE cellSpacing=0 cellPadding=0 width="750" align=center border=0>
        <TBODY>
        <TR>
          <TD><embed src="../images/kk.swf" quality=high 
pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" 
type="application/x-shockwave-flash" width=750 height=100></embed></TD></TR>
</TBODY></TABLE>





<TABLE cellSpacing=0 cellPadding=0 width=750 align=center border=0>
  <TBODY>
 
  <TR>
    <TD style="PADDING-LEFT: 20px" bgColor=#ff8000 colSpan=2 height=28><IMG 
      height=8 src="../images/ico_oval.gif" width=5 align=absMiddle> <FONT 
      color=#ffffff size=4><b>��ҵ��ȫ</b></FONT></TD></TR>
  <TR>
    <TD bgColor=#b25900 colSpan=2 height=2></TD></TR></TBODY></TABLE>






<TABLE cellSpacing=0 cellPadding=0 width=750 align=center border=0>
  <TBODY>
  <TR>
    <TD width=1><IMG height=72 src="images/back1.gif" width=1> 
    </TD>
    <TD vAlign=top width=750 background=images/lian.gif>
      <TABLE cellSpacing=0 cellPadding=0 width=750 border=0>
        <TBODY>
        <TR>
          <TD height=41>





<TABLE cellSpacing=0 cellPadding=0 width=750 align=center border=0>
  <TBODY>
 
<FORM name=searchform action=mingluso.jsp method=get>
 <TBODY>
<TR>
<TD width=170>
<DIV align=center><IMG height=36 src="images/search.jpg" width=88></DIV></TD>
<TD width=128><INPUT class=bb size=15 name=gjz> </TD><TD width=90>
<SELECT name=sf> 
<OPTION selected value="">==��������==</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=����>����</OPTION> <OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=�㶫>�㶫</OPTION> <OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=����>����</OPTION> <OPTION value=�ӱ�>�ӱ�</OPTION> 
<OPTION value=������>������</OPTION> 
<OPTION 
value=�㽭>�㽭</OPTION> <OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=���ɹ�>���ɹ�</OPTION> <OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=����>����</OPTION> <OPTION value=����>����</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=�ຣ>�ຣ</OPTION> <OPTION value=ɽ��>ɽ��</OPTION> 
<OPTION value=����>����</OPTION> 
<OPTION 
value=ɽ��>ɽ��</OPTION> <OPTION value=�Ϻ�>�Ϻ�</OPTION> 
<OPTION value=�Ĵ�>�Ĵ�</OPTION> 
<OPTION 
value=���>���</OPTION> <OPTION value=����>����</OPTION> 
<OPTION value=�½�>�½�</OPTION> 
<OPTION 
value=����>����</OPTION> 
<OPTION value=���>���</OPTION> 
<OPTION 
value=����>����</OPTION> <OPTION value=̨��>̨��</OPTION> 
</SELECT>


</TD>
<TD width=67><INPUT class=b2b7 type=submit value="�� ��" name=submit> 
</TD>
<TD vAlign=center width=322>

<TABLE height=30 cellSpacing=0 width=300 align=center 
background=biztop.files/lian1.gif border=0>
  <TBODY>
  <TR>
    <TD><FONT color=#ffffff>��������: </FONT><A class=b2b3 
      href="mingluso.jsp?gjz=����&sf=" 
      ><FONT color=#ffffff>����</FONT></A> <A class=b2b3 
      href="mingluso.jsp?gjz=����&sf=" 
      ><FONT color=#ffffff>����</FONT></A> <A class=b2b3 
      href="mingluso.jsp?gjz=���&sf=" 
      ><FONT color=#ffffff>���</FONT></A> <A class=b2b3 
      href="mingluso.jsp?gjz=���ߵ�&sf=" 
      ><FONT color=#ffffff>���ߵ�</FONT></A> <A class=b2b3 
      href="mingluso.jsp?gjz=����&sf=" 
      ><FONT color=#ffffff>����</FONT></A> <A class=b2b3 
      href="mingluso.jsp?gjz=����&sf=" 
      ><FONT color=#ffffff>����</FONT></A>
</TD></TR></TBODY></TABLE>

</TD></TR></FORM></TBODY></TABLE>




</TD></TR></FORM></TBODY></TABLE>


</TD></TR></FORM></TBODY></TABLE>













<TABLE class=table-zuoyou cellSpacing=1 cellPadding=0 width=750 align=center 
bgColor=#efefef>
  <TBODY>
  <TR vAlign=center height=30>
    <TD align=middle width=200><FONT color=#ff3300>��ҵ����</FONT></TD>
    <TD align=middle width=450><FONT color=#ff3300>��ҵ���</FONT></TD>
    <TD align=middle width=100><FONT color=#ff3300>��ҵվ��</FONT></TD></TR>



<%String gjz=request.getParameter("gjz");
   if(gjz==null)gjz = "";
%>

<%String sf=request.getParameter("sf");%>




<%
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from qyml where qymc like '%"+gjz+"%' and qyjj like '%"+sf+"%' order by id desc");
String pages = request.getParameter("page") ;
int pageInt =  1 ,i=0 ,k=1;
if(pages==null){}else{pageInt = Integer.parseInt(pages);}
while(i<20*(pageInt-1)&&rs.next()){i++ ;}
i=0;
while(rs.next()&i<20){
i++ ;
%>








  <TR>
    <TD bgColor=#cccccc colSpan=3 height=1></TD>
  <TR vAlign=center bgColor=#fffdf7 height=120>
    <TD align=middle width=200 valgin="middle"><a target="_blank" href="../web/index.jsp?id=<%=rs.getString("id")%>"><font color=red><%=rs.getString("qymc")%></font></a><br><br>����ָ����<iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=../info/memgrade.jsp?memid=<%=rs.getString("id")%> topmargin=0 width=65 height=15></iframe><BR><BR></TD>
    <TD align=middle width=450 valgin="top">
      <TABLE width=400>
        <TBODY>
        <TR>
          <TD><IMG height=11 src="../images/ring01.gif" width=11><%=rs.getString("qyjj")%>
            ...</TD></TR></TBODY></TABLE></TD>
    <TD align=middle width=100 valgin="middle"><a style="text-decoration: none" target="_blank" href="../web/index.jsp?id=<%=rs.getString("id")%>">>>>�������>>></a><BR><BR></TD></TR>
 





<%
}
%>




<%
rs=stmt.executeQuery("SELECT count(*)  from qyml  where qymc like '%"+gjz+"%' and qyjj like  '%"+sf+"%' ");
while(rs.next()) i = rs.getInt(1) ;
%>









<table border=0 width=750 cellspacing=3 bgcolor=#F2F2F2 cellpadding=2 align=center><tr height=15><td align=left>���ҵ�<font color=ff6600><b><%=i%></b></font>����Ϣ&nbsp;��ǰΪ��<font color=ff6600><b><%=pageInt%></b></font>ҳ&nbsp;����<font color=ff6600><b><%=(i+20)/20%></b></font>ҳ</TD><td align=right>ת����<%for(int j=1;j<(i+40)/20;j++){%>&nbsp;<a href="mingluso.jsp?page=<%=j%>&gjz=<%=gjz%>&sf=<%=sf%>"><font color=red><%=j%></font></a>&nbsp;<%}%>ҳ</td><td>






  <TR>
    <TD colSpan=3>
      <TABLE height=30 cellSpacing=0 cellPadding=0 width="98%" align=center>
        <TBODY>
        <TR>
          <TD vAlign=center align=middle></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>




<%@ include file="../end.jsp"%>