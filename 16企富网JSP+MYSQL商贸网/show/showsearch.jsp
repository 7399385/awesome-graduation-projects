<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../top.jsp"%>
<%@ include file="../conn/conn.jsp"%>


<TABLE cellSpacing=0 cellPadding=0 width="750" align=center border=0>
        <TBODY>
        <TR>
          <TD><A onfocus=this.blur() 
            href="../let" target=_blank><IMG 
             src="../images/banner2.gif" width=750 border=0></A></TD></TR>
</TBODY></TABLE>






<TABLE cellSpacing=0 cellPadding=0 width=750 align=center border=0>
  <TBODY>
 
  <TR>
    <TD style="PADDING-LEFT: 20px" bgColor=#ff8000 colSpan=2 height=28><IMG 
      height=8 src="../images/ico_oval.gif" width=5 align=absMiddle> <FONT 
      color=#ffffff size=4><b>��Ʒչ��</b></FONT></TD></TR>
  <TR>
    <TD bgColor=#b25900 colSpan=2 height=2></TD></TR></TBODY></TABLE>




<%String gjz=request.getParameter("gjz");
   if(gjz==null)gjz = "";
	if(gjz.equals("�ڴ����������ؼ���")){
	gjz ="";
	}%>

<%String hy=request.getParameter("hy");%>







<table width="750"  border="0" cellpadding="0" cellspacing="0" align=center>
      <tr>
        <td height="80" background="../images/search_bg.gif"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="87"><img src="../images/search_01.gif" width="87" height="80"></td>
            <td><table width="98%"  border="0" align="center" cellpadding="2" cellspacing="1">
              <form name="searchInfo" method="post" action="showsearch.jsp" ><tr>
                <td align="right"><input name="gjz" type="text" id="keyword" onfocus="this.value=''" value="�ڴ����������ؼ���" size="25">


<select name="hy" class="zh" id="hy">
<option value="">������ҵ�б�</option>

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
                <td><input type="image" name="Submit" src="../images/search_go.gif" width="35" height="35" border="0" align="absmiddle"></td>
                <td width=200></td>
              </tr>
              <tr>
                        <td colspan="3" align=right><strong>���Ų�Ʒ������ </strong><a href="showsearch.jsp?gjz=����&hy=" class="linkline">����</a>��<a href="showsearch.jsp?gjz=��&hy=" class="linkline">��</a>��<a href="showsearch.jsp?gjz=��ˢ&hy=" class="linkline">��ˢ</a>��<a href="showsearch.jsp?gjz=��&hy="  class="linkline">��</a>��<a href="showsearch.jsp?gjz=%CC%A8%B5%C6&hy=" class="linkline">̨��</a>��<a href="showsearch.jsp?gjz=%CE%FC%B6%A5%B5%C6&hy=" class="linkline">������</a>��<a href="showsearch.jsp?gjz=%C2%E4%B5%D8%B5%C6&hy=" class="linkline">��ص�</a></td>
              </tr></form>
            </table>              </td>
            <td width="15"><img src="../images/search_02.gif" width="15" height="80"></td>
          </tr>
        </table></td>
      </tr>
    </table>
<table width="750" border="0" cellspacing="0" cellpadding="0" align=center>
                      
                    
					  



					  
					  
					  <tr>
                        <td><div align="center">
                            <table width="750" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td><table width="750" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td height="7" bgcolor="EBEBEB"><img src="../images/spacer.gif" width="1" height="1"></td>
                                    </tr>
                                    <tr>
                                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>





<%
stmt = con.createStatement() ;
rs=stmt.executeQuery("SELECT * from showbar where showname like '%"+gjz+"%' and lei like '%"+hy+"%' order by id desc");
String pages = request.getParameter("page") ;
int pageInt =  1 ,i=0 ,k=1;
if(pages==null){}else{pageInt = Integer.parseInt(pages);}
while(i<20*(pageInt-1)&&rs.next()){i++ ;}
i=0;
while(rs.next()&i<20){
i++ ;
%>









                                            <td width="7" valign="top" background="../images/product_10.gif"><img src="../images/product_1.gif" width="7" height="202"></td>
                                            <td width="125" valign="top">
<div align="center">
                                                <table width="118" border="0" cellspacing="0" cellpadding="0">
                                                  <tr> 
                                                    <td height="150">

<DIV align=center>

<a href=show.jsp?id=<%=rs.getString("id")%> target="_blank"><IMG height=160 width=140 src="../<%=rs.getString("showphoto")%>" width=73 
border=0></A>

</td>
                                                  </tr>
                                                  <tr> 
                                                    <td><div align="right"><img src="../images/product_7.gif" width="11" height="8"></div></td>
                                                  </tr>
                                                  <tr> 
                                                    <td height="20" class="zl"><font color="515050">��Ʒ����</font><font color="FF4E0D"><a href=show.jsp?id=<%=rs.getString("id")%> target="_blank"><%=rs.getString("showname")%></a></font></td>
                                                  </tr>
                                                  <tr> 
                                                    <td background="../images/product_8.gif"><img src="../images/product_8.gif" width="2" height="3"></td>
                                                  </tr>
                                                 
                                                  <tr> 
                                                    <td background="../images/product_8.gif"><img src="../images/product_8.gif" width="2" height="3"></td>
                                                  </tr>
                                                 
                                                </table>
												
                                              </div></td>
                                            <td width="15" valign="top" background="../images/product_11.gif"><img src="../images/product_2.gif" width="15" height="202"></td>





<%if (k==4){i-- ;%></tr><tr><%}else{%></td><%k++ ;}%>
                       
<%
}
%>




                                          </tr>
                                        </table></td>
                                    </tr>
                                    <tr>
                                      <td><img src="images/product_6.gif" width="562" height="6"></td>
                                    </tr> <tr>
                                      <td height="20" background="../images/product_9.gif"><img src="../images/product_9.gif" width="3" height="23"></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table>
                          </div></td>
                      </tr>
					  
	

				  

   


<%
rs=stmt.executeQuery("SELECT count(*) from showbar where showname like '%"+gjz+"%'  and lei like '%"+hy+"%'  order by id desc");
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
                                      <td width="350" class="zl">���ҵ���Ʒ�б�<%=i%>��չͼ ��<font color="#FF0000"><%=(i+20)/20%></font>ҳ ��ǰΪ��<%=pageInt%>ҳ</td>
                                      <td valign="middle">
<div align="right"> 
                                          <p class="zl">
										  
									ת����&nbsp;<%for(int j=1;j<(i+40)/20;j++){%><a href="showsearch.jsp?page=<%=j%>&gjz=<%=gjz%>&hy=<%=hy%>"><font color=red><%=j%></font></a>&nbsp;<%}%>ҳ
																	  
																	  </p>
                                        </div></td>
                                    </tr>
                                  </table></td>
                              </tr>
                              <tr>
                                <td><img src="../images/product_15.gif" width="562" height="1"></td>
                              </tr>
                            </table>
                          </div></td>
                      </tr>
					  <tr>
                        <td height="20">&nbsp;</td>
                      </tr>
                    </table></td>
                </tr>
              </table>













<%@ include file="../end.jsp"%>