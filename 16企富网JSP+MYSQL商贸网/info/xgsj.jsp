<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="top.jsp"%>
<%@ include file="../conn/fl.jsp"%>
<%@ include file="../conn/time.jsp"%>
<%
int id = Integer.parseInt((String)request.getParameter("id"));
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from sjxx where id="+id);
rs.next();%>
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
                                                                    <td class="zl"><strong><font color="#1F69A0">发布商机</font></strong></td>
                                                                  </tr>
                                                                </table></td>
                                                            </tr>
                                                            <tr> 
                                                              <td height="18">&nbsp;</td>
                                                            </tr>
                                                            <tr> 
                                                              <td><form  action="xgsjok.jsp" method="post" name="form1"  onSubmit="return check1();">
                                                                  <table width="500" border="0" cellpadding="3" cellspacing="1" bgcolor="A8A8A9">
                                                                    <tr bgcolor="EAECED"> 
                                                                      <td height="35" colspan="3"> 
                                                                        <div align="center"> 
                                                                          <p class="zl2"><font color="3C3E3F">请填写发布商机的信息</font></p>
                                                                        </div></td>
                                                                    </tr>





                                                                    <tr> 
                                                                      <td width="18%" height="35" rowspan="2" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">所属行业</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td width="40%" bgcolor="#FFFFFF">&nbsp; 
                                                                       
 <select name="dfl" id="dfl" onchange="javascript:change();">
                                                                          

                                                                          <option>行业大类</option>


                                                                          <option value="房地产">房地产</option>
                                                                          
                                                                          <option value="化工">化工</option>
                                                                          
                                                                          <option value="安全、防护">安全、防护</option>
                                                                          
                                                                          <option value="服饰">服饰</option>
                                                                          
                                                                          <option value="印刷、出版">印刷、出版</option>
                                                                          
                                                                          <option value="环保">环保</option>
                                                                          
                                                                          <option value="能源">能源</option>
                                                                          
                                                                          <option value="交通运输 ">交通运输 </option>
                                                                          
                                                                          <option value="商业服务">商业服务</option>
                                                                          
                                                                          <option value="包装、纸 ">包装、纸 </option>
                                                                          
                                                                          <option value="医药、保养">医药、保养</option>
                                                                          
                                                                          <option value="电脑、软件">电脑、软件</option>
                                                                          
                                                                          <option value="冶金矿产">冶金矿产</option>
                                                                          
                                                                          <option value="建材">建材</option>
                                                                          
                                                                          <option value="人才、教育">人才、教育</option>
                                                                          
                                                                          <option value="农业">农业</option>
                                                                          
                                                                          <option value="电子电工">电子电工</option>
                                                                          
                                                                          <option value="纺织皮革">纺织皮革</option>
                                                                          
                                                                          <option value="玩具">玩具</option>
                                                                          
                                                                          <option value="通讯">通讯</option>
                                                                          
                                                                          <option value="工业用品">工业用品</option>
                                                                          
                                                                          <option value="家居用品">家居用品</option>
                                                                          
                                                                          <option value="家用电器">家用电器</option>
                                                                          
                                                                          <option value="汽摩及配件">汽摩及配件</option>
                                                                          
                                                                          <option value="运动、休闲">运动、休闲</option>
                                                                          
                                                                          <option value="食品、饮料">食品、饮料</option>
                                                                          
                                                                          <option value="办公、文教">办公、文教</option>
                                                                          
                                                                          <option value="库存积压品">库存积压品</option>
                                                                          
                                                                          <option value="工艺、礼品">工艺、礼品</option>
                                                                          
                                                                          <option value="其他">其他</option>
                                                                          
                                                                        </select> 
                                                                        </select> 
                                                                        <select name="sfl" id="sfl" onchange="javascript:sflchange();">
                                                                          <option>行业小类</option>
                                                                        </select>
</td>
                                                                      <td width="20%" bgcolor="#FFFFFF"><span class="qy"><a href="http://www.microsoft.com/downloads/details.jspx?displaylang=zh-cn&FamilyID=1e1550cb-5e5d-48f5-b02b-20b602228de6%20" class="zh" target="_blank"><font color=red>若行业小类中无内容显示，请升级您的IE</font></a></span></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="hyfl" type="text" class="zl" id="hyfl" value="请从上面重新选择分类" size="50" readonly="true"></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">信息类别</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                          <tr> 
                                                                            <td width="13">&nbsp;</td>
                                                                            <td width="28"> 
                                                                              <input name="lei" type="radio" value="1" <%if(Integer.parseInt(rs.getString("lei"))==1){%>checked<%}%>></td>
                                                                            <td width="45"><a href="#" class="zllink"><font color="444A4F">供应</font></a></td>
                                                                            <td width="28"> <SCRIPT src="images/func.js"></SCRIPT>
                                                                              <input type="radio" name="lei" value="2" onclick="turnit('code_area770')" <%if(Integer.parseInt(rs.getString("lei"))==2){%>checked<%}%>></td>
                                                                            <td width="45"><a href="#" class="zllink"><font color="444A4F">求购</font></a></td>
                                                                            <td width="28"> 
                                                                              <input type="radio" name="lei" value="3" <%if(Integer.parseInt(rs.getString("lei"))==3){%>checked<%}%>></td>
                                                                            <td width="45"><a href="#" class="zllink"><font color="444A4F">代理</font></a></td>
                                                                            <td width="28"> 
                                                                              <input type="radio" name="lei" value="4" <%if(Integer.parseInt(rs.getString("lei"))==4){%>checked<%}%>></td>
                                                                            <td width="60"><a href="#" class="zllink"><font color="444A4F">合作</font></a></td>
                                                                            <td>&nbsp;</td>
                                                                          </tr>
                                                                        </table></td>
                                                                    </tr>



<TR id=code_area770 style="DISPLAY: none">
 <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">请选择级别</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
<input name="fast" type="radio" value="0" <%if(Integer.parseInt(rs.getString("fast"))==0){%>checked<%}%>><a href="#" class="zllink"><font color="444A4F">普通求购</font></a>&nbsp; 
<input name="fast" type="radio" value="1" <%if(Integer.parseInt(rs.getString("fast"))==1){%>checked<%}%>><a href="#" class="zllink"><font color="red">紧急求购</font></a></td></TR>                          

                                          
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">信息主题</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="topic" type="text" class="zl" id="topic" size="60" value="<%=rs.getString("topic")%>"></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">信息内容</font></a>:<FONT color=red size=2>*</FONT></div></td>
                                                                      <td height="180" colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <textarea name="content" cols="50" rows="10" id="content"><%=rs.getString("content")%></textarea> 
                                                                      </td>
                                                                    </tr>
                        

                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">联系人</font></a>:<FONT color=red size=2></FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="myname" type="text" class="zl" id="myname" size="28"  value="<%=rs.getString("myname")%>" readonly=true></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">联系电话</font></a>:<FONT color=red size=2></FONT></div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="tel" type="text" class="zl" id="tel" size="28"   value="<%=rs.getString("tel")%>" readonly=true></td>
                                                                    </tr>
                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">联系传真</font></a>:</div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="fax" type="text" class="zl" id="fax" size="28"   value="<%=rs.getString("fax")%>" readonly=true></td>
                                                                    </tr>



                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">电子邮件</font></a>:</div></td>
                                                                      <td colspan="2" bgcolor="#FFFFFF">&nbsp; 
                                                                        <input name="email" type="text" class="zl" id="email" size="28"   value="<%=rs.getString("email")%>" readonly=true></td>
                                                                    </tr>



<input name="id" type="hidden" class="zl" id="id" size="28"   value="<%=rs.getString("id")%>">
<input name="username" type="hidden" class="zl" id="company" size="28"   value="<%=rs.getString("username")%>">
<input name="company" type="hidden" class="zl" id="company" size="28"   value="<%=rs.getString("company")%>">
<input name="post" type="hidden" class="zl" id="post" size="28"   value="<%=rs.getString("post")%>">
<input name="web" type="hidden" class="zl" id="web" size="28"   value="<%=rs.getString("web")%>">
<input name="memid" type="hidden" class="zl" id="web" size="28"   value="<%=(String) session.getAttribute("userid")%>">




                                                                    <tr> 
                                                                      <td width="18%" height="35" bgcolor="#FFFFFF"> 
                                                                        <div align="center"><a href="#" class="zllink"><font color="444A4F">联系地址</font></a>:<FONT color=red size=2></FONT></div></td>
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
                                                                              <td><input name="submit" type="submit" value="发布" onclick:javascipt"check()"></td>
                                                                              <td><input type="reset" name="Submit3" value="重置"></td>
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
    
if (ff.dfl.value==""){
window.alert("请重新选择大分类！")
      ff.dfl.focus()
      return false
    }
    

if (ff.sfl.value==""){
window.alert("请选择小分类！")
      ff.sfl.focus()
      return false
    }
    


    if (ff.topic.value==""){
      window.alert("请填写信息主题！")
      ff.topic.focus()
      return false
    }
    
   
    if (ff.content.value==""){
      window.alert("请填写信息内容！")
      ff.content.focus()
      return false
    }
    

        
    if (ff.myname.value==""){
    window.alert("请填写联系人！")
    ff.myname.focus()
    return false
    }



        
    if (ff.tel.value==""){
    window.alert("请填写联系电话！")
    ff.tel.focus()
    return false
    }



        
    if (ff.address.value==""){
    window.alert("请填写联系地址！")
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
