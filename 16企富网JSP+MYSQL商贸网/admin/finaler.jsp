<HEAD>
<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="top.jsp"%>

<TABLE cellSpacing=0 cellPadding=0 width=778 border=0>
<TBODY>
<TR>
<TD vAlign=top align=middle width=150  background=images/leftmanu_bg.gif>
<%@ include file="left.jsp"%>
</TD>


<TD style="BACKGROUND-POSITION: right 50%; BACKGROUND-IMAGE: url(images/bg1.gif); BACKGROUND-REPEAT: repeat-y; BACKGROUND-COLOR: #ffffff"  vAlign=top align=middle width=628>     




 <TABLE cellSpacing=0 cellPadding=0 width=628 border=0>
        <TBODY>
        <TR>
          <TD class=s vAlign=top align=right width=459 
          background=images/leftmanu_top1.gif height=30><FONT 
            color=#ffffff></FONT></TD>
          <TD class=s vAlign=top width=141 
          background=images/top_nav_bg2.gif><FONT 
            color=#ffffff></FONT> </TD>
          <TD width=28><IMG height=30 src="images/top_nav_5.gif" 
            width=28></TD></TR></TBODY></TABLE><BR>

     
      <TABLE cellSpacing=0 cellPadding=0 width=570 border=0>
        <TBODY>
        <TR>
          <TD 
          style="BACKGROUND-POSITION: left top; BACKGROUND-REPEAT: no-repeat" 
          align=right background=images/mi1.gif 
          height=154>
            <TABLE cellSpacing=0 cellPadding=2 border=0>
              <TBODY>
              <TR>
                <TD class=C vAlign=top align=left><font color=browse>��������Ա</font>:<STRONG><%=(String) session.getAttribute("finalername")%></STRONG> 
                  ���������ã� </TD></TR>
              
              </TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width=478 border=0>
              <TBODY>
              <TR>
                <TD colSpan=3><IMG height=13 src="images/tj_1.gif" 
                  width=478></TD></TR>
              <TR>
                <TD width=2 bgColor=#ffc75c><IMG height=1 
                  src="images/shim.gif" width=2></TD>
                <TD align=middle width=474 bgColor=#ffffd6>
                  <TABLE cellSpacing=0 cellPadding=0 width="92%" border=0>
                    <TBODY>
                    <TR>
                      <TD 
                        class="C lh13"><STRONG>��������С���֣�</STRONG>
<script language="JavaScript">
<!--
var mess1="";
day = new Date( )
hr = day.getHours( )
if (( hr >= 0 ) && (hr <= 4 ))
mess1="��ҹ�ˣ������ۻ�������Ŷ��"
if (( hr >= 4 ) && (hr < 7))
mess1="�峿�ã���������͹�����ѽ���� "
if (( hr >= 7 ) && (hr < 12))
mess1="���Ϻã�ף�������и������飡"
if (( hr >= 12) && (hr <= 13))
mess1="�÷��������緹�˰�?"
if (( hr >= 13) && (hr <= 17))
mess1="���������������ð�?��������ѽ? "
if (( hr >= 17) && (hr <= 18))
mess1="̫����ɽ�ˣ�׼���°�����?"
if ((hr >= 18) && (hr <= 20))
mess1="���Թ�������"
if ((hr >= 20) && (hr <= 23))
mess1="������!�����ջ��ٰ�!��"
document.write(mess1)
//--->
</script>
</TD>

<TR><td>
<br><br></td></tr>

<%
int  i=0 ;
rs=stmt.executeQuery("SELECT count(*) from finalermsg where flag=0 order by id desc");
while(rs.next()) i = rs.getInt(1) ;
%>

<TR>
<TD colSpan=8 class=C  align=left>
����<font color=red><%=i%></font>��δ������</TD></TR>


<TR><td>
<br><br></td></tr>


<TR>
<TD colSpan=8 class=C  align=left>����ע��<font color=red><iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=todaytotal.jsp topmargin=0 width=50 height=13></iframe></font>�� �����̻�<font color=red><iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=todaysjtotal.jsp topmargin=0 width=50 height=13></iframe></font>��  �����������<font color=red><iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=todaydltotal.jsp topmargin=0 width=50 height=13></iframe></font>��
</TD></TR>


<TR><td>
<br><br></td></tr>


<TR>
<TD colSpan=8 class=C  align=left>Ŀǰ����ע���Ա<font color=red><iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=memtotal.jsp topmargin=0 width=50 height=13></iframe></font>�� �̻�<font color=red><iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=sjtotal.jsp topmargin=0 width=50 height=13></iframe></font>�� Ŀǰ�ܼ���<font color=red><iframe frameborder=0 leftmargin=0 marginheight=0 marginwidth=0 scrolling=no src=dltotal.jsp topmargin=0 width=50 height=13></iframe></font>��
</TD></TR>


</TR></TBODY></TABLE></TD>
                <TD width=2 bgColor=#ffc75c><IMG height=1 
                  src="images/shim.gif" width=2></TD></TR>
              <TR>
                <TD colSpan=3><IMG height=13 src="images/tj_2.gif" 
                  width=478></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><BR>







      <TABLE cellSpacing=0 cellPadding=0 width=570 border=0>
        <TBODY>
        <TR>
          <TD background=images/bodybg.gif colSpan=3 height=22>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width="3%"><IMG height=22 
                  src="images/bodyleft.gif" width=10></TD>
                <TD class=index_title width="64%">�������� <IMG height=4 
                  src="images/point2.gif" width=7 align=absMiddle></TD>
                <TD align=right width="33%"><IMG height=22 
                  src="images/bodyright.gif" 
            width=10></TD></TR></TBODY></TABLE></TD></TR>
      

  <TR>


          <TD width=1 bgColor=#8abaff><IMG height=1 
            src="images/shim.gif" width=1></TD>
          <TD align=middle width=568><BR>
            <TABLE cellSpacing=2 cellPadding=2 width="94%" border=0>
              <TBODY>
              <TR>
                <TD class=C align=middle colSpan=2>













     <table width="521" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED" class="zl"> 
                                                                    
                                                                      <td width="191"><div align="center"><strong><font color="#333333">��������</font></strong></div></td>

<td width="70" bgcolor="EAECED"> 
                                                                        <div align="center"><strong><font color="#333333">������</font></strong></div></td>


                                                                      <td width="70" bgcolor="EAECED"> 
                                                                        <div align="center"><strong><font color="#333333">����ʱ��</font></strong></div></td>
                                                                      <td width="50" bgcolor="EAECED"><div align="center"><strong><font color="#333333">״̬</font></strong></div></td>
                                                                      <td width="51" bgcolor="EAECED"><div align="center"><strong><font color="#333333">�ظ�</font></strong></div></td>
                                                                      <td width="51" bgcolor="EAECED"><div align="center"><strong><font color="#333333">����</font></strong></div></td>
</tr>





<%
String userid=(String) session.getAttribute("userid");
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from finalermsg  where flag=0 order by id desc");
while(rs.next()&i<20){
i++ ;
%>







                                                                    <tr bgcolor="#FFFFFF"> 
                                                                      <td class="zl"> 
                                                                        <div align="center">
<%=rs.getString("content")%>
                                                                          
</div></td>


<td class="zl"> 
                                                                        <div align="center"><font color="#333333"><%=rs.getString("sendmem")%></font></div></td>




                                                                      <td class="zl"> 
                                                                        <div align="center"><font color="#333333"><%=rs.getString("sendtime")%></font></div></td>
                                                                      <td class="zl"><div align="center"><%if(Integer.parseInt((String)rs.getString("flag"))==0){%><a href=flag.jsp?id=<%=rs.getString("id")%>><font color=red>δ��</font></a><%}else{%><font color=cccccc>�Ѷ�</font><%}%></div></td>
                                                                      <td class="zl"> 
                                                                        <div align="center"><a href="replymsg.jsp?recemem=<%=rs.getString("sendmem")%>" class="zllink"><font color="#333333">�ظ�</font></a></div></td>
                                                                      <td class="zl"> 
                                                                        <div align="center"><a href="delmsg.jsp?id=<%=rs.getString("id")%>" class="zllink"><font color="#333333">ɾ��</font></a></div></td>
                                                                    </tr>
                                                                






                               
<%
}
%>
   









                                                                    <tr bgcolor="#FFFFFF"> 
                                                                      <td height="30" colspan="7" bgcolor="#FFFFFF" class="zl"> 
                                                                        <div align="center">
                                                                          <table width="500" border="0" cellspacing="0" cellpadding="0">
                                                                            <tr> 
                                                                            
                                                                            
                                                                              <td width="39"><div align="right">
                                                                                  
                                                                                </div></td>
                                                                            </tr>
                                                                          </table>
                                                                        </div></td>
                                                                    </tr>



</td>
                                                            </tr>
                                                          </table>























</TD></TR></TBODY></TABLE>


<BR></TD>
          <TD width=1 bgColor=#8abaff><IMG height=1 
            src="images/shim.gif" width=1></TD></TR>
        <TR bgColor=#8abaff>
          <TD colSpan=3 height=1><IMG height=1 src="images/shim.gif" 
            width=1></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><IMG 
height=10 src="images/bottom.gif" width=778><BR>


<%@ include file="end.jsp"%>
</BODY></HTML>
