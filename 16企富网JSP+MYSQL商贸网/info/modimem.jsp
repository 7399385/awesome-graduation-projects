<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="top.jsp"%>
<%
String userid=(String) session.getAttribute("userid");
String username=(String) session.getAttribute("loginname");%>


<TABLE cellSpacing=0 cellPadding=0 width=778 border=0>
<TBODY>
<TR>
<TD vAlign=top align=middle width=150  background=images/leftmanu_bg.gif>
<%@ include file="left.jsp"%>
</TD>


<TD style="BACKGROUND-POSITION: right 50%; BACKGROUND-IMAGE: url(images/bg1.gif); BACKGROUND-REPEAT: repeat-y; BACKGROUND-COLOR: #ffffff"  vAlign=top align=middle width=628>     










<div align=center>











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
                                                      <td><div align="center"> 
                                                          <table width="500" border="0" cellspacing="0" cellpadding="0">
                                                            <tr> 
                                                              <td height="24" bgcolor="E4E6E7"><table width="500" border="0" cellspacing="0" cellpadding="0">
                                                                  <tr> 
                                                                    <td width="30"><img src="../images/pointi.gif" ></td>
                                                                    <td class="zl"><strong><font color="#1F69A0">�޸��ҵ�����</font></strong></td>
                                                                  </tr>
                                                                </table></td>
                                                            </tr>
                                                            <tr> 
                                                              <td height="18">&nbsp;</td>
                                                            </tr>
                                                            <tr> 
                                                              <td><form  action="modimemok.jsp" method="post" name="Form1"  >
                                                                  <table width="500" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED"> 
                                                                      <td height="35" colspan="3"> 
                                                                        <div align="center"> 
                                                                          <p class="zl2"><font color="3C3E3F">��д��������</font></p>
                                                                        </div></td>
                                                                    </tr>




<%
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from qyml where id='"+userid+"'");
rs.next();%>




                                               


                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">�û���</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
 <input name=username type="text" class="zl" id="username" size="30" readonly=true value=<%=username%>></td>
                                                                    </tr>

                                                           
                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">������ʾ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="question" type="text" class="zl" id="question" size="30" value=<%=rs.getString("question")%>></td>
                                                                    </tr>
                                                           
                                                           
                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">�����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="answer" type="text" class="zl" id="answer" size="30" value=<%=rs.getString("answer")%>></td>
                                                                    </tr>
                                                           



                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="myname" type="text" class="zl" id="myname" size="30" value=<%=rs.getString("myname")%>></td>
                                                                    </tr>



                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">ְ��</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="zw" type="text" class="zl" id="zw" size="30" value=<%=rs.getString("zw")%>></td>
                                                                    </tr>




                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ��ַ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="address" type="text" class="zl" id="address" size="30" value=<%=rs.getString("address")%>></td>
                                                                    </tr>




                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">�ʱ�</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="post" type="text" class="zl" id="post" size="30" value=<%=rs.getString("post")%>></td>
                                                                    </tr>






                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">�绰</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="tel" type="text" class="zl" id="tel" size="30" value=<%=rs.getString("tel")%>></td>
                                                                    </tr>




                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="fax" type="text" class="zl" id="fax" size="30" value=<%=rs.getString("fax")%>></td>
                                                                    </tr>



                                                      <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ַ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="email" type="text" class="zl" id="email" size="30" value=<%=rs.getString("email")%>></td>
                                                                    </tr>



                                                      <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��վ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="web" type="text" class="zl" id="web" size="30" value=<%=rs.getString("web")%>></td>
                                                                    </tr>






                                                      <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��˾����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="qymc" type="text" class="zl" id="qymc" size="30" value=<%=rs.getString("qymc")%>></td>
                                                                    </tr>










                                                      <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��˾���</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <textarea class=f11 rows="8" name="qyjj" cols="40"></textarea></td>
                                                                    </tr>






















                                                                    <tr> 
                                                                      <td width="18%" height="80" bgcolor="#FFFFFF"> 
                                                                        <div align="center"></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF"><div align="center"> 
                                                                          <table width="200" border="0" cellspacing="0" cellpadding="0">
                                                                            <tr> 
                                                                              <td>

<input type="button" value="�޸�" onclick="check()"></td>
                                                                              <td><input type="reset" name="Submit3" value="����"></td>
                                                                            </tr>
                                                                          </table>
                                                                        </div></td>
                                                                    </tr>
                                                                  </table>
                                                                </form></td>
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












<script LANGUAGE="JavaScript">
function check()
{     
 if (document.Form1.question.value == "")        
  {        
    alert("������������ʾ���⣡");        
    document.Form1.question.focus();        
    return (false);        
  }        
 if (document.Form1.answer.value == "")        
  {        
    alert("������������ʾ�𰸣�");        
    document.Form1.answer.focus();        
    return (false);        
  }        
                

 if (document.Form1.name.value == "")        
  {        
    alert("����������������");        
    document.Form1.name.focus();        
    return (false);        
  }        

   if (document.Form1.myname.value == "")        
  {        
    alert("����д�������ƣ�");        
    document.Form1.myname.focus();        
    return (false);        
  } 

 
 if (document.Form1.address.value == "")        
  {        
    alert("������������ϵ��ַ��");        
    document.Form1.address.focus();        
    return (false);        
  } 

 if (document.Form1.post.value == "")        
  {        
    alert("�������������룡");        
    document.Form1.post.focus();        
    return (false);        
  }        

 if (document.Form1.tel.value == "")        
  {        
    alert("������������ϵ�绰��");        
    document.Form1.tel.focus();        
    return (false);        
  }         
  
   if (document.Form1.email.value == "")
        {
        alert("���������ĵ����ʼ���ַ��");
		document.Form1.email.focus();
		document.Form1.email.select();
        return (false);
        }

        var filter=/^\s*([A-Za-z0-9_-]+(\.\w+)*@(\w+\.)+\w{2,3})\s*$/;
        if (!filter.test(document.Form1.email.value)) { 
                alert("�ʼ���ַ����ȷ,��������д��"); 
                document.Form1.email.focus();
                document.Form1.email.select();
                return (false); 
                }      
 
  if (document.Form1.qymc.value == "")        
  {        
    alert("����������˾�����ƣ�");        
    document.Form1.qymc.focus();        
    return (false);        
  }  
          
 if (document.Form1.qyjj.value == "")
  {        
    alert("�����빫˾��飡");        
    document.Form1.qyjj.focus();        
    return (false);        
  } 
  
  
  
    document.Form1.submit()
}
</script>