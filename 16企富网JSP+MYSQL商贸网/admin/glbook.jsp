<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="top.jsp"%>

<TABLE cellSpacing=0 cellPadding=0 width=778 border=0>
<TBODY>
<TR>
<TD vAlign=top align=middle width=150  background=images/leftmanu_bg.gif>
<%@ include file="left.jsp"%>
</TD>


<TD style="BACKGROUND-POSITION: right 50%; BACKGROUND-IMAGE: url(images/bg1.gif); BACKGROUND-REPEAT: repeat-y; BACKGROUND-COLOR: #ffffff"  vAlign=top align=middle width=628>     













                            <table width="100%" border="0" cellspacing="0" cellpadding="0" align=center>
                              <tr> 
                                <td height="30">&nbsp;</td>
                              </tr>
                              <tr> 
                                <td><div align="center"> 
                                    <table width="610" border="0" cellspacing="0" cellpadding="0" align=center>
                                      <tr> 
                                        <td height="24" background="images/del_6.gif"><table width="285" border="0" cellspacing="0" cellpadding="0">
                                            <tr> 
                                              <td width="102"><div align="center"> 
                                                  <p class="zl"></p>
                                                </div></td>
                                           
                                            </tr>
                                          </table></td>
                                      </tr>
                                      <tr> 
                                        <td><table width="610" border="0" cellpadding="3" cellspacing="1" bgcolor="97C5E4">
                                            <tr> 
                                              <td height="610" valign="top" bgcolor="#FFFFFF"><div align="center"> 
                                                  <table width="610" border="0" cellspacing="0" cellpadding="0">
                                                    <tr> 
                                                      <td height="20">&nbsp;</td>
                                                    </tr>
                                                    <tr> 
                                                      <td>
<div align=center>








<table width="522" border="0" cellspacing="0" cellpadding="0">
                                                                 


<tr> 
<td height="24" bgcolor="E4E6E7"><table width="500" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td width="30"><img src="../images/pointi.gif" ></td>
<td class="zl"><strong><font color="#1F69A0">商人话题管理</font></strong>
</td>
</tr>
</table></td>
</tr>
<tr> 
<td height="18">&nbsp;</td>
</tr>
















                                                            <tr> 
                                                              <td height="18" valign="top"> 

                                                                
                                                                  <table width="521" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED" class="zl"> 
                                                                      <td width="191"><div align="center"><strong><font color="#333333">标题</font></strong></div></td>

<td width="30" bgcolor="EAECED"> 
                                                                        <div align="center"><strong><font color="#333333">阅读</font></strong></div></td>                  <td width="30" bgcolor="EAECED"> <div align="center"><strong><font color="#333333">回复</font></strong></div></td>


                                                                      <td width="60" bgcolor="EAECED"> 
                                                                        <div align="center"><strong><font color="#333333">发表时间</font></strong></div></td>         

<td width="60" bgcolor="EAECED"> 
                                                                        <div align="center"><strong><font color="#333333">删除</font></strong></div></td>
                                                                    
</tr>





<%
String userid=(String) session.getAttribute("userid");
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from book where ForR=0 order by id desc");
String pages = request.getParameter("page") ;
int pageInt =  1 ,i=0 ;
if(pages==null){}else{pageInt = Integer.parseInt(pages);}
while(i<20*(pageInt-1)&&rs.next()){i++ ;}
i=0;
while(rs.next()&i<20){
i++ ;
%>







                                                                    <tr bgcolor="#FFFFFF">
                                                                      <td class="zl"> 
                                                                        <div align="center">

<a href="../book/read.jsp?id=<%=rs.getString("id")%>" class="zllink" target="_blank">

<font color="#333333"><%=rs.getString("topic")%>
                                                                          

                                                                          </font></a></div></td>


<td class="zl"> 
                                                                        <div align="center"><font color="#333333"><%=rs.getString("readnum")%></font></div></td>
<td class="zl"> 
                                                                        <div align="center"><font color="#333333"><%=rs.getString("replynum")%></font></div></td>




                                                                      <td class="zl"> 
                                                                        <div align="center"><font color="#333333"><%=rs.getString("fbtime")%></font></div></td>
                                                                      <td class="zl"> 
                                                                        <div align="center"><font color="#333333"><a href=delbook.jsp?id=<%=rs.getString("id")%>>删除</a></font></div></td>
                                                                      
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


<%
rs=stmt.executeQuery("SELECT count(*) from book where ForR=0 order by id desc");
while(rs.next()) i = rs.getInt(1) ;
%>





                                                                    <tr bgcolor="#FFFFFF">
                                                                      <td height="30" colspan="7" bgcolor="#FFFFFF" class="zl"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                          <tr> 
                                                                            <td width="100%" align=right><font size="2">

<font color="#000000">总共</font><font color="#FF0000"><%=i%></font><font color="#000000">条信息</font> 
共<font color="#000000"><%=(i+20)/20%>页</font>&nbsp;&nbsp;当前为<font color="#000000">第</font><font color="#FF0000"><%=pageInt%></font><font color="#000000">页</font> &nbsp;&nbsp;转到第&nbsp;<%for(int j=1;j<(i+40)/20;j++){%><a href="glbook.jsp?page=<%=j%>"><font color=red><%=j%></font></a>&nbsp;<%}%>页
                                                                                </font></div></td>
                                                                          </tr>
                                                                        </table></td>
                                                                    </tr>
                                                                  </table> </td>
                                                            </tr>
                                                       
                                                          </table>



<%
rs.close();
stmt.close();
con.close();
%>

</td>
                                                            </tr>
                                                          </table>
                                                        </div></td>
                                                    </tr>
                                                    <tr> 
                                                      <td height="25">&nbsp;</td>
                                                    </tr>
                                                  </table>
                                                </div></td>
                                            </tr>
                                          </table></td>
                                      </tr>
                                      <tr> 
                                        <td height="40">&nbsp;</td>
                                      </tr>
                                    </table>
                                  </div></td>
                              </tr>
                            </table>
                          </div></td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
          </tr>
</table></td>
    </tr>
  </table>
</div>


</TD></TR></TBODY></TABLE><IMG 
height=10 src="images/bottom.gif" width=778><BR>

<%@ include file="end.jsp"%>
</BODY></HTML>
