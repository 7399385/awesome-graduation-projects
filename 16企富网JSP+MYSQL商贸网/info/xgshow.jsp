<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="top.jsp"%>
<%@ include file="../conn/time.jsp"%>
<%
String userid=(String) session.getAttribute("userid");
stmt = con.createStatement() ;%>


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
                                                                    <td class="zl"><strong><font color="#1F69A0">������Ʒչʾ</font></strong></td>
                                                                  </tr>
                                                                </table></td>
                                                            </tr>
                                                            <tr> 
                                                              <td height="18">&nbsp;</td>
                                                            </tr>
                                                            <tr> 
                                                              <td><form  action="xgshowok.jsp" method="post" name="form1"  onSubmit="return check1();">
                                                                  <table width="500" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED"> 
                                                                      <td height="35" colspan="3"> 
                                                                        <div align="center"> 
                                                                          <p class="zl2"><font color="3C3E3F">����дչʾ��Ʒ����Ϣ</font></p>
                                                                        </div></td>
                                                                    </tr>

<%
int id = Integer.parseInt((String)request.getParameter("id"));
rs=stmt.executeQuery("SELECT * from showbar where id="+id);
rs.next();%>
                                          





                        <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">ѡ����ҵ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp;
<select name="lei" class="zh" id="lei">
<option value="">����ѡ����ҵ����</option>

<option value="��ҵ��Ʒ">��ҵ��Ʒ</option>

<option value="����">����</option>

<option value="����">����</option>

<option value="ұ����">ұ����</option>

<option value="��֯Ƥ��">��֯Ƥ��</option>

<option value="����">����</option>

<option value="��ȫ������">��ȫ������</option>

<option value="��Դ">��Դ</option>

<option value="����">����</option>

<option value="���ӵ繤">���ӵ繤</option>

<option value="���ԡ����">���ԡ����</option>

<option value="ͨѶ">ͨѶ</option>

<option value="��ͨ���� ">��ͨ���� </option>

<option value="��Ħ�����">��Ħ�����</option>

<option value="ũҵ">ũҵ</option>

<option value="��װ��ֽ ">��װ��ֽ </option>

<option value="ӡˢ������">ӡˢ������</option>

<option value="�칫���Ľ�">�칫���Ľ�</option>

<option value="���õ���">���õ���</option>

<option value="�Ҿ���Ʒ">�Ҿ���Ʒ</option>

<option value="ʳƷ������">ʳƷ������</option>

<option value="��ҵ����">��ҵ����</option>

<option value="ҽҩ������">ҽҩ������</option>

<option value="�˶�������">�˶�������</option>

<option value="���ա���Ʒ">���ա���Ʒ</option>

<option value="���">���</option>

<option value="���ز�">���ز�</option>

<option value="����ѹƷ">����ѹƷ</option>

<option value="�˲š�����">�˲š�����</option>

<option value="����">����</option>

</select>
</td>
</tr>






                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��Ʒ����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="showname" type="text" class="zl" id="showname" size="30" value=<%=rs.getString("showname")%>></td>
                                                                    </tr>
                                                                                                                               <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��Ʒ�ͺ�</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="showxing" type="text" class="zl" id="showxing" size="30"  value=<%=rs.getString("showxing")%>></td>
                                                                    </tr>
                                                           
                                                                                            <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">������</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="showaddress" type="text" class="zl" id="showaddress" size="30"  value=<%=rs.getString("showaddress")%>></td>
                                                                    </tr>
                                                           


                                             <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">ѡ��ͼƬ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        
<select name="showphoto" id="showphoto">
<option selected>���������������ѡ���ƷͼƬ</option>


<%
rs=stmt.executeQuery("SELECT * from photo where memid='"+userid+"' order by id desc");
while(rs.next()){%>                       
<option value="<%=rs.getString("photoname")%>"><%=rs.getString("phototext")%></option>
<%}%>

</select></td>
                                                                    </tr>
                                                           




<%
rs=stmt.executeQuery("SELECT * from showbar where id="+id);
rs.next();%>


                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ��</font></a>:<FONT color=red size=2></FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="myname" type="text" class="zl" id="myname" size="28"  value="<%=rs.getString("myname")%>" readonly=true></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ�绰</font></a>:<FONT color=red size=2></FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="tel" type="text" class="zl" id="tel" size="28"   value="<%=rs.getString("tel")%>" readonly=true></td>
                                                                  </tr>
                                                      


                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">�����ʼ�</font></a>:</div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="email" type="text" class="zl" id="email" size="28"   value="<%=rs.getString("email")%>" readonly=true></td>
                                                                    </tr>



<input name="id" type="hidden" class="zl" id="id" size="28"   value="<%=id%>">

<input name="username" type="hidden" class="zl" id="username" size="28"   value="<%=rs.getString("username")%>">
<input name="company" type="hidden" class="zl" id="company" size="28"   value="<%=rs.getString("company")%>">
<input name="memid" type="hidden" class="zl" id="memid" size="28" value="<%=rs.getString("memid")%>">




                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ��ַ</font></a>:<FONT color=red size=2></FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 




<textarea name="address" cols="50" rows="2" id="address"  readonly=true><%=rs.getString("address")%></textarea> 


</td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="80" bgcolor="#FFFFFF"> 
                                                                        <div align="center"></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF"><div align="center"> 
                                                                          <table width="200" border="0" cellspacing="0" cellpadding="0">
                                                                            <tr> 
                                                                              <td><input name="submit" type="submit" value="����" onclick:javascipt"check()"></td>
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




<script language=javascript>
 
<!--
  function check1(){
    ff=document.form1 


if (ff.lei.value==""){
window.alert("������ѡ����ҵ���࣡")
      ff.lei.focus()
      return false
    }



if (ff.showname.value==""){
window.alert("����д��Ʒ���ƣ�")
      ff.showname.focus()
      return false
    }
    

if (ff.showxing.value==""){
window.alert("����д��Ʒ�ͺţ�")
      ff.showxing.focus()
      return false
    }
    


    if (ff.showaddress.value==""){
      window.alert("����д��Ʒ�����أ�")
      ff.showaddress.focus()
      return false
    }
    
   
    if (ff.showphoto.value==""){
      window.alert("��ѡ���ƷͼƬ��")
      ff.showphoto.focus()
      return false
    }
    

        
    if (ff.myname.value==""){
    window.alert("����д��ϵ�ˣ�")
    ff.myname.focus()
    return false
    }



        
    if (ff.tel.value==""){
    window.alert("����д��ϵ�绰��")
    ff.tel.focus()
    return false
    }



        
    if (ff.address.value==""){
    window.alert("����д��ϵ��ַ��")
    ff.address.focus()
    return false
    }




  }
//-->
</script>
























</TD></TR></TBODY></TABLE><IMG 
height=10 src="images/bottom.gif" width=778><BR>

<%@ include file="end.jsp"%>
</BODY></HTML>
