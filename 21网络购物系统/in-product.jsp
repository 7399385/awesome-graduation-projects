<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" style="margin-bottom: 6">
        <tr bgcolor="#FFFFFF"> 
          <td height="100" colspan="2" align="center"> 
            <div align="center"></div>
            <table width="95%" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
              <%
	  String id=request.getParameter("hw_id").trim();
	  int hw_id=Cint(id);
	  String hw_pic,hw_name,hw_content,hw_content2;
      hw_pic=null;
	  hw_name=null;
	  hw_content=null;
	  hw_content2=null;
	  int pifa,daili,hw_cash;
	  pifa=0;
	 daili=0;
	 hw_cash=0;
	  boolean tuijian=false;
      sql="select * from hw where hw_id="+hw_id;
      rs=mdb.executeQuery(sql);
      if(!rs.next())
	  {
		 
      %>
              <tr> 
                <td width="380" height="18"> û���ҵ���Ҫ�鿴����Ʒ </td>
              </tr>
              <%
	  }
	  else
	  {
	     pifa=rs.getInt("pifa");
		   daili=rs.getInt("daili");
		   hw_cash=rs.getInt("hw_cash");
		   tuijian=rs.getBoolean("tuijian");
		   hw_pic=rs.getString("hw_pic");
		  hw_name=rs.getString("hw_name");
		  hw_content=rs.getString("hw_content");
		   hw_content2=rs.getString("hw_content2");

      %>
              <tr> 
                <td width="100%" valign="top"> 
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" height="10">
                    <tr> 
                      <td></td>
                    </tr>
                  </table>
                  <table border="0" width="100%" cellspacing="0">
                    <tr> 
                      <td width="100%" bgcolor="#FFFFFF" valign="top"> 
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td width="180" style="border-right:#989DA5 1px solid"> 
                              <div align="center"><a href="<%=hw_pic%>" target="_blank">
                                <img border="0" src="<%=hw_pic%>" width="140" height="99"><br>
                                <br>
                                [�鿴��ͼƬ]</a></div>
                            </td>
                            <td width="362" align="center"><a href="views.asp?hw_id=<%=hw_id%>"><font color="#D06800"><b class="dz1"></b></font></a> 
                              <div align="center">
                                <center> 
                              <table width="90%" border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#808080" bgcolor="#ECECEC">
                                <tr align="center"> 
                                  <td height="25" colspan="2">��Ʒ���ƣ�<a href="views.asp?hw_id=<%=hw_id%>"><%=hw_name%></a></td>
                                </tr>
                                <tr bgcolor="#FFFFFF"> 
                                  <td width="50%" height="25"> 
                                    <div align="right">�г��۸�</div>
                                  </td>
                                  <td width="50%" height="25"> 
                                    <div align="center"><s>��<%=pifa%></s>Ԫ</div>
                                  </td>
                                </tr>
                                <tr bgcolor="#FFFFFF"> 
                                  <td height="25"> 
                                    <div align="right">��Ա�۸�</div>
                                  </td>
                                  <td height="25"> 
                                    <div align="center"><font color="#D03430">��<%=hw_cash%></font>Ԫ</div>
                                  </td>
                                </tr>
                                <tr bgcolor="#FFFFFF"> 
                                  <td height="25"> 
                                    <div align="right"><font size="1" face="sans-serif"><b>VIP</b></font>��Ա�ۣ�</div>
                                  </td>
                                  <td height="25"> 
                                    <div align="center"><font color="#D03430">��<%=daili%></font>Ԫ</div>
                                  </td>
                                </tr>
                                <tr bgcolor="#FFFFFF"> 
                                  <td height="35" colspan="2"> 
                                    <div align="center"><a href='javascript:openbag(<%=hw_id%>)'>����<img border="0" src="img/order.gif" align="absmiddle"></a></div>
                                  </td>
                                </tr>
                              </table>
                                </center>
                            </div>
                              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td height="30" valign="bottom"><%=hw_content%></td>
                                </tr>
                              </table>
                              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td>&nbsp; 
                                    <% if(tuijian)
			                              {%>
                                    <img src="img/ttt.gif" width="40" height="20"> 
                                    <% }%>
                                  </td>
                                </tr>
                              </table>
                              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td height="5"> <img src="img/pics/seperator.gif" width="359" height="1"></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                      <td width="100%" bgcolor="#FFFFFF" valign="top" align="center"> 
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td bgcolor="f7f7f7" style="border-bottom:#cccccc 1px solid">&nbsp;�� Ʒ �� ϸ ˵ ��</td>
                          </tr>
                          <tr> 
                            <td style="line-height:20px"><%=hw_content2%></td>
                          </tr>
                        </table>
                        
                      </td>
                    </tr>
                    <%
		 
		
      }
    
      %>
                  </table>
                </td>
              </tr>
              <tr> 
                <td width="100%"></td>
              </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td>��</td>
              </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="f7f7f7" style="border-bottom:#cccccc 1px solid">&nbsp;�� Ʒ �� �� �� �� </td>
              </tr>
              <tr> 
                <td style="line-height:20px">�ۺ����:<br>
                  ����˾�ݲ�֧�ֻ�������ҵ��,������Ʒһ�ɿ����!EMS����! <br>
                  һ������˾�۳����ֻ����Կͻ��յ������������Է�����Ϊ׼��7���ڳ��ַ���Ϊ�𻵵��������⣬����˾������Ѹ���ͬ�ͺš�ͬ��ɫ������ 
                  <br>
                  ��������˾�۳��ֻ����Կͻ��յ������������Է�����Ϊ׼��һ����֮�ڳ��ַ���Ϊ�𻵵��������⣬����˾��ŵ��ѱ��ޣ� <br>
                  ������վ�۳����ֻ����������֮�ڳ��ַ���Ϊ�𻵵��������⣬��Ѹ����� <br>
                  �ġ����л������޵��ʼĻ���������˫������һ�롣<br>
                  �塢ע: �ͻ�ָ��������6688�ɱ�׼��������6688i�������ż���������Զ��ػ���������������,���ڱ��޷�Χ��!6688���Ǻ�����,�������������ȱ��,Ҳ�����ڱ��޷�Χ,��ͻ�ע��!<br>
                  ������վ����������ӵ�����ս���Ȩ��<%=hw_id%>
				  <%
				  sql="select * from system";
				  rs=mdb.executeQuery(sql);
				   if(rs.next()){
				  %><br>
                    ��ϵ��ַ��<%=rs.getString("ymaddr")%><br>
                    �� �ࣺ<%=rs.getString("code")%><br>
                    ��ѯ�绰��<%=rs.getString("tel")%><br>
                    ��ϵ�ˣ�<%=rs.getString("name")%> 
					<%}
				  %>
				  </td>
              </tr>
            </table>
            <br>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td valign="middle"> 
                  <div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>