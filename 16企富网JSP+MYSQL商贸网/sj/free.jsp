<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../top.jsp"%>
<%@ include file="../conn/fl.jsp"%>
<%@ include file="../conn/time.jsp"%>


<div align=center>

                            <table width="100%" border="0" cellspacing="0" cellpadding="0" align=center>
                              <tr> 
                                <td height="30">&nbsp;</td>
                              </tr>
                              <tr> 
                                <td><div align="center"> 
                                    <table width="650" border="0" cellspacing="0" cellpadding="0" align=center>
                                      <tr> 
                                        <td height="24" background="images/del_6.gif"><table width="285" border="0" cellspacing="0" cellpadding="0">
                                            <tr> 
                                              <td width="102"><div align="center"> 
                                                  <p class="zl"><font color="006FCB">��ע�ᷢ���̻�</font></p>
                                                </div></td>
                                           
                                            </tr>
                                          </table></td>
                                      </tr>
                                      <tr> 
                                        <td><table width="650" border="0" cellpadding="3" cellspacing="1" bgcolor="97C5E4">
                                            <tr> 
                                              <td height="650" valign="top" bgcolor="#FFFFFF"><div align="center"> 
                                                  <table width="650" border="0" cellspacing="0" cellpadding="0">
                                                    <tr> 
                                                      <td height="20">&nbsp;</td>
                                                    </tr>
                                                    <tr> 
                                                      <td><div align="center"> 
                                                          <table width="522" border="0" cellspacing="0" cellpadding="0">
                                                            <tr> 
                                                              <td height="24" bgcolor="E4E6E7"><table width="522" border="0" cellspacing="0" cellpadding="0">
                                                                  <tr> 
                                                                    <td width="30"><img src="../images/pointi.gif" ></td>
                                                                    <td class="zl"><strong><font color="#1F69A0">�����̻�</font></strong></td>
                                                                  </tr>
                                                                </table></td>
                                                            </tr>
                                                            <tr> 
                                                              <td height="18">&nbsp;</td>
                                                            </tr>
                                                            <tr> 
                                                              <td><form  action="freeok.jsp" method="post" name="form1"  onSubmit="return check1();">
                                                                  <table width="520" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED"> 
                                                                      <td height="35" colspan="3"> 
                                                                        <div align="center"> 
                                                                          <p class="zl2"><font color="3C3E3F">����д�����̻�����Ϣ</font></p>
                                                                        </div></td>
                                                                    </tr>





                                                                    <tr> 
                                                                      <td width="18%" height="35" rowspan="2" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">������ҵ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td width="40%" bgcolor="#FFFFFF">&nbsp; 
                                                                       
 <select name="dfl" id="dfl" onchange="javascript:change();">
                                                                          <option>��ҵ����</option>
                                                                          
                                                                          <option value="���ز�">���ز�</option>
                                                                          
                                                                          <option value="����">����</option>
                                                                          
                                                                          <option value="��ȫ������">��ȫ������</option>
                                                                          
                                                                          <option value="����">����</option>
                                                                          
                                                                          <option value="ӡˢ������">ӡˢ������</option>
                                                                          
                                                                          <option value="����">����</option>
                                                                          
                                                                          <option value="��Դ">��Դ</option>
                                                                          
                                                                          <option value="��ͨ���� ">��ͨ���� </option>
                                                                          
                                                                          <option value="��ҵ����">��ҵ����</option>
                                                                          
                                                                          <option value="��װ��ֽ ">��װ��ֽ </option>
                                                                          
                                                                          <option value="ҽҩ������">ҽҩ������</option>
                                                                          
                                                                          <option value="���ԡ����">���ԡ����</option>
                                                                          
                                                                          <option value="ұ����">ұ����</option>
                                                                          
                                                                          <option value="����">����</option>
                                                                          
                                                                          <option value="�˲š�����">�˲š�����</option>
                                                                          
                                                                          <option value="ũҵ">ũҵ</option>
                                                                          
                                                                          <option value="���ӵ繤">���ӵ繤</option>
                                                                          
                                                                          <option value="��֯Ƥ��">��֯Ƥ��</option>
                                                                          
                                                                          <option value="���">���</option>
                                                                          
                                                                          <option value="ͨѶ">ͨѶ</option>
                                                                          
                                                                          <option value="��ҵ��Ʒ">��ҵ��Ʒ</option>
                                                                          
                                                                          <option value="�Ҿ���Ʒ">�Ҿ���Ʒ</option>
                                                                          
                                                                          <option value="���õ���">���õ���</option>
                                                                          
                                                                          <option value="��Ħ�����">��Ħ�����</option>
                                                                          
                                                                          <option value="�˶�������">�˶�������</option>
                                                                          
                                                                          <option value="ʳƷ������">ʳƷ������</option>
                                                                          
                                                                          <option value="�칫���Ľ�">�칫���Ľ�</option>
                                                                          
                                                                          <option value="����ѹƷ">����ѹƷ</option>
                                                                          
                                                                          <option value="���ա���Ʒ">���ա���Ʒ</option>
                                                                          
                                                                          <option value="����">����</option>
                                                                          
                                                                        </select> 
                                                                        </select> 
                                                                        <select name="sfl" id="sfl" onchange="javascript:sflchange();">
                                                                          <option>��ҵС��</option>
                                                                        </select>
</td>
                                                                      <td width="20%" bgcolor="#FFFFFF"><span class="qy"><a href="http://www.microsoft.com/downloads/details.jspx?displaylang=zh-cn&FamilyID=1e1550cb-5e5d-48f5-b02b-20b602228de6%20" class="zh" target="_blank"><font color=red>����ҵС������������ʾ������������IE</font></a></span></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="hyfl" type="text" class="zl" id="hyfl" value="��������ѡ����ҵ����" size="50" readonly="true"></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��Ϣ���</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                          <tr> 
                                                                            <td width="13">&nbsp;</td>
                                                                            <td width="28"> 
                                                                              <input name="lei" type="radio" value="1" checked></td>
                                                                            <td width="45"><a href="#" class="zllink"><font color="444A4F">��Ӧ</font></a></td>
                                                                            <td width="28"> 
                                                                              <input type="radio" name="lei" value="2"></td>
                                                                            <td width="45"><a href="#" class="zllink"><font color="444A4F">��</font></a></td>
                                                                            <td width="28"> 
                                                                              <input type="radio" name="lei" value="3"></td>
                                                                            <td width="45"><a href="#" class="zllink"><font color="444A4F">����</font></a></td>
                                                                            <td width="28"> 
                                                                              <input type="radio" name="lei" value="4"></td>
                                                                            <td width="60"><a href="#" class="zllink"><font color="444A4F">����</font></a></td>
                                                                            <td>&nbsp;</td>
                                                                          </tr>
                                                                        </table></td>
                                                                    </tr>
                                                                    
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��Ϣ����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="topic" type="text" class="zl" id="topic" size="60"></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��Ϣ����</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td height="180" colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <textarea name="content" cols="50" rows="10" id="content"></textarea> 
                                                                      </td>
                                                                    </tr>
                        

                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ��</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="myname" type="text" class="zl" id="myname" size="28"></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ�绰</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="tel" type="text" class="zl" id="tel" size="28"></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ����</font></a>:</div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="fax" type="text" class="zl" id="fax" size="28"></td>
                                                                    </tr>



                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">�����ʼ�</font></a>:</div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="email" type="text" class="zl" id="email" size="28"></td>
                                                                    </tr>









                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">��ϵ��ַ</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 




<textarea name="address" cols="50" rows="2" id="address"></textarea> 


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

<%@ include file="../end.jsp"%>
</body>
</html>
<script language=javascript>
 
<!--
  function check1(){
    ff=document.form1 
    
if (ff.dfl.value==""){
window.alert("��ѡ�����࣡")
      ff.dfl.focus()
      return false
    }
    

if (ff.sfl.value==""){
window.alert("��ѡ��С���࣡")
      ff.sfl.focus()
      return false
    }
    


    if (ff.topic.value==""){
      window.alert("����д��Ϣ���⣡")
      ff.topic.focus()
      return false
    }
    
   
    if (ff.content.value==""){
      window.alert("����д��Ϣ���ݣ�")
      ff.content.focus()
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






