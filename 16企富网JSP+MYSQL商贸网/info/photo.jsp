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




<script language=javascript>
 
<!--
  function check1(){
    ff=document.formphoto 
    
if (ff.text1.value==""){
window.alert("��ѡ��ͼƬ��")
      ff.text1.focus()
      return false
    }
    

    

  }
//-->
</script>






<table width="522" border="0" cellspacing="0" cellpadding="0">
                                                                 


<form action="Uploading.jsp" method="post" enctype="multipart/form-data" name="formphoto" onSubmit="return check1();">
<tr> 
<td height="24" bgcolor="E4E6E7"><table width="500" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td width="30"><img src="../images/pointi.gif" ></td>
<td class="zl"><strong><font color="#1F69A0">ͼƬ�ϴ�</font></strong></td><td align=right><input type="file" name="text1">&nbsp;&nbsp;<input  name="submit" type="submit" value="�ϴ�"  onclick:javascipt"check()">
</td>
</tr>
</table></td>
</tr>
<tr> 
<td height="18">&nbsp;</td>
</tr>

 </form>














                                                            <tr> 
                                                              <td height="18" valign="top"> 

						
                                                                  <table width="521" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED" class="zl"> 
                                                                      <td width="60%" height="30" bgcolor="EAECED"> 
<div align="center">ͼƬԤ��</div></td>
                                                                   
                                                     <td width="40%" bgcolor="EAECED"><div align="center"><strong><font color="#333333">���˵��</font></strong></div></td>
</tr>





<%
String userid=(String) session.getAttribute("userid");
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from photo where memid='"+userid+"' order by id desc");
String pages = request.getParameter("page") ;
int pageInt =  1 ,i=0 ;
if(pages==null){}else{pageInt = Integer.parseInt(pages);}
while(i<4*(pageInt-1)&&rs.next()){i++ ;}
i=0;
while(rs.next()&i<4){
i++ ;
%>







                                                                    <tr bgcolor="#FFFFFF"> 
                                                                      <td height="30" bgcolor="#FFFFFF" class="zl"> 
                                                                        <div align="center"> 
<a href=../<%=rs.getString("photoname")%> target="_blank"><img src=../<%=rs.getString("photoname")%> width=140 height=160 alt="����鿴ԭͼ" border=0></a>
                                                                        </div></td>
                                                                      <td height="30" bgcolor="#FFFFFF" class="zl"><div align="center">ͼƬ�ļ�:<font color=red><%=rs.getString("phototext")%></font><br><br>�ϴ�����:<%=rs.getString("phototime")%><br><br><input type="submit" value="ɾ��" onclick="if (confirm('����ͼƬ��ɾ��ʱ������صĲ�Ʒչʾ����Ҳ��ɾ��!ȷʵҪ��ͼƬ��')) window.location='delphoto.jsp?id=<%=rs.getString("id")%>'" style="left: auto;clip:  rect(auto 1px auto auto);border: 1 double #ff0000;" ></div></td>
                                                                    </tr>
                                                                






                               
<%
}
%>
   









                                                                    <tr bgcolor="#FFFFFF"> 
                                                                      <td height="30" colspan="7" bgcolor="#FFFFFF" class="zl"> 
                                                                        <div align="center">
                                                                          <table width="500" border="0" cellspacing="0" cellpadding="0">
                                                                            <tr> 
                                                                              <td width="133" align=left></td>
                                                                              <td width="228"><div align="right"> 
                                                                                  <font size="2">
                                                                                  </font>�� 
                                                                                </div></td>
                                                                              <td width="39"><div align="right">
                                                                                  
                                                                                </div></td>
                                                                            </tr>
                                                                          </table>
                                                                        </div></td>
                                                                    </tr>


<%
rs=stmt.executeQuery("SELECT count(*) from photo where memid='"+userid+"' order by id desc");
while(rs.next()) i = rs.getInt(1) ;
%>





                                                                    <tr bgcolor="#FFFFFF">
                                                                      <td height="30" colspan="7" bgcolor="#FFFFFF" class="zl"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                          <tr> 
                                                                            <td width="100%" align=right><font size="2">

<font color="#000000">�ܹ�</font><font color="#FF0000"><%=i%></font><font color="#000000">��ͼƬ</font> 
��<font color="#000000"><%=(i+8)/4%>ҳ</font>&nbsp;&nbsp;��ǰΪ<font color="#000000">��</font><font color="#FF0000"><%=pageInt%></font><font color="#000000">ҳ</font> &nbsp;&nbsp;ת����&nbsp;<%for(int j=1;j<(i+8)/4;j++){%><a href="photo.jsp?page=<%=j%>"><font color=red><%=j%></font></a>&nbsp;<%}%>ҳ
                                                                                </font></div></td>
                                                                          </tr>
                                                                        </table></td>
                                                                    </tr>
                                                                  </table>
                                                                </td>
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
