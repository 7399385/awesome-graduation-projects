<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../top.jsp"%>
<%@ include file="../conn/conn.jsp"%>


<TABLE cellSpacing=0 cellPadding=0 width="750" align=center border=0>
<TBODY>
<TR>
<TD><A onfocus=this.blur() href="../let" target=_blank>
<IMG src="../images/banner2.gif" width=750 border=0></A></TD></TR>
</TBODY></TABLE>


<TABLE cellSpacing=0 cellPadding=0 width=750 align=center border=0>
<TBODY>
<TR>
<TD style="PADDING-LEFT: 20px" bgColor=#ff8000 colSpan=2 height=28>
<IMG height=8 src="../images/ico_oval.gif" width=5 align=absMiddle>
<FONT color=#ffffff size=4><b>���˻���</b></FONT></TD></TR>
<TR>
<TD bgColor=#b25900 colSpan=2 height=2></TD>
</TR>
</TBODY>
</TABLE>





<TABLE cellPadding=0 cellSpacing=0 align=center width=750>
<tr>
<td align=left valign=middle width="7%" height=25  class="norightbuttonborder">
<a href="addbook.jsp"><img src="images/postnew.gif" border="0" alt="����һ���»���"></a>
</td>
<td width=50% class="norightbuttonborder">&nbsp;</td>
<th width=15% align=right class="norightbuttonborder">
<img src="images/team2.gif" align="absmiddle"> ���������<a href=../info/sendmsg.jsp?recemem=<%=banzuid%>&memname=<%=banzu%>><%=banzu%></a>&nbsp;&nbsp;
</th>
</tr>
</table>





<TABLE  cellSpacing=0 align=center width=750>
<TBODY>
<TR>
<TD class=outtd>


      <TABLE cellSpacing=1 cellPadding=4  width=750>
        <TBODY>
        <TR align=center>
          <TD  class="buttoncolor" align=middle width=5%>״̬</TD>
          <TD class="buttoncolor" align=middle width=40% >����</TD>
          <TD class="buttoncolor" align=middle width=5%>�鿴</TD>
          <TD class="buttoncolor"  align=middle width=5%>�ظ�</TD>
          <TD class="buttoncolor"  align=middle width=13%>������</TD>
          <TD class="buttoncolor"  align=middle width=13%>���ظ�</TD>
          <TD class="buttoncolor"  align=middle width=13%>��󷢱�ʱ��</TD>
	</TR>





<%
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from book where ForR=0 order by status desc,pxtime desc");
String pages = request.getParameter("page") ;
int pageInt =  1 ,i=0 ,k=1;
if(pages==null){}else{pageInt = Integer.parseInt(pages);}
while(i<20*(pageInt-1)&&rs.next()){i++ ;}
i=0;
while(rs.next()&i<20){
i++ ;
%>



        <TR>
          <TD  class="norightbuttonborder">

<%if(Integer.parseInt((String)rs.getString("status"))==0){%><IMG src="images/folderstate2.gif"><%}%>
<%if(Integer.parseInt((String)rs.getString("status"))==1){%><IMG src="images/folderstate1.gif"><%}%>
<%if(Integer.parseInt((String)rs.getString("status"))==2){%><IMG src="images/folderstate3.gif"><%}%>


</TD>
          <TD  class="norightbuttonborder" align=left><A  href="read.jsp?id=<%=rs.getString("id")%>" class=nav ><font color=000000><%=rs.getString("topic")%></font></A></TD>
          <TD  class="norightbuttonborder"><%=rs.getString("readnum")%></TD>
          <TD class="norightbuttonborder"><%=rs.getString("replynum")%></TD>
          <TD  class="norightbuttonborder"><A href="../info/sendmsg.jsp?recemem=<%=rs.getString("fbmemid")%>&memname=<%=rs.getString("fbmem")%>" title="�����<%=rs.getString("fbmem")%>����"><%=rs.getString("fbmem")%></A></TD>
          <TD  class="norightbuttonborder"><%=rs.getString("replymem")%></TD>
          <TD  class="norightbuttonborder"><%=rs.getString("fbtime")%></TD>
	</TR>

<%
}
%>
              
        </TBODY>
        </TABLE>
        </TD>


  

<%
rs=stmt.executeQuery("SELECT count(*) from book where ForR=0");
while(rs.next()) i = rs.getInt(1) ;
%>

					         
	              <tr>
                        <td><div align="center">
                            <table width="750" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td><img src="../images/product_15.gif" width="750" height="1"></td>
                              </tr>
                              <tr>
                                <td height="25"><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td width="350" class="zl">���л���<font color="#FF0000"><%=i%></font>�� 
                                        ��<%=(i+20)/20%>ҳ ��ǰΪ��<%=pageInt%>ҳ</td>
                                      <td valign="middle">
<div align="right"> 
                                          <p class="zl">
										  
									ת����&nbsp;<%for(int j=1;j<(i+40)/20;j++){%><a href="index.jsp?page=<%=j%>"><font color=red><%=j%></font></a>&nbsp;<%}%>ҳ
																	  
																	                                    </p>
                                        </div></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table>
                          </div></td>
                       </tr>




        


</TR>
</TBODY>
</TABLE>


<table ><tr><td height=5></td></tr></table>
<%@ include file="../end.jsp"%>