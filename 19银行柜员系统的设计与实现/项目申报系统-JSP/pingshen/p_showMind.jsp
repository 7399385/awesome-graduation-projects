<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>

<%
    String getLoginmessage=(String)session.getValue("p_loginSign");
    String identityID=(String)session.getValue("identityID");    
    if(getLoginmessage!="OK")
    {
        response.sendRedirect("index3.jsp");
    }
%>
<jsp:useBean id="p_showmind" scope="page" class="firm.firm"/>
<%
    String itemID=request.getParameter("itemID");  
    String sql="select * from I_distribute where itemID='"+itemID+"' and identityID='"+identityID+"'";
    ResultSet rs=p_showmind.executeQuery(sql);
    String item_name="";
	String score0="";
	String score1="";
	String score2="";
	String score3="";
	String score4="";
	String score5="";
	String score6="";
	String mind="";
	String expert_mind="";
    if(rs.next()){
        item_name=rs.getString("item_name");
        score0=rs.getString("score0");
        score1=rs.getString("score1");
        score2=rs.getString("score2");
        score3=rs.getString("score3");
        score4=rs.getString("score4");
        score5=rs.getString("score5");
        score6=rs.getString("score6");
        mind=rs.getString("mind");
        expert_mind=rs.getString("expert_mind");
    }
%>

<html>
<head>
<title>ר�������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body bgcolor="#FFFFFF" text="#000000">
<table border="0" cellspacing="0" cellpadding="0" width="600" align="center">
  <tr> 
    <td bgcolor="#4f71b8"> 
      <table width="600" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#FFFFFF"> 
          <td colspan="3" height="20">&nbsp;</td>
        </tr>
        <tr> 
          <td colspan="3"></td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr> 
          <td width="33%">&nbsp;</td>
          <td bgcolor="#FFFFFF"> 
            <div align="center"><img src="../images/p_item2.gif" width="112" height="22"></div>
          </td>
          <td width="33%">&nbsp;</td>
        </tr>
      </table>
      <table width="600" border="0" cellspacing="1" cellpadding="0">
        <tr> 
          <td height="179" bgcolor="#FFFFFF"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="5">&nbsp;</td>
              </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td align="center">
                  <table width="100%" border="1" bordercolor="#4f71b8">
                    <tr align="center"> 
                      <td colspan="7"><font color="#000000" size="2">ר�������</font></td>
                    </tr>
                    <tr> 
                      <td colspan="2" align="center"><font color="#000000" size="2">��Ŀ����</font></td>
                      <td colspan="5"><font color="#000099" size="2"><%=item_name%></font></td>
                    </tr>
                    <tr> 
                      <td width="8%" rowspan="17" align="center"> 
                        <p><font size="2" color="#000000">��<br>
                          Ŀ<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ׼<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ר<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��<br>
                          ��</font></p>
                      </td>
                      <td width="6%" align="center" height="35"><font color="#000000" size="2">��������</font></td>
                      <td colspan="3" height="35" align="center"><font size="2" color="#000000">���ݷ��༰��׼</font></td>
                      <td width="11%" height="35" align="center"><font size="2" color="#000000">��ֵ��Χ</font></td>
                      <td width="15%" height="35" align="center"> <font size="2" color="#000000">����</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="5" align="center"><font size="2" color="#000000">��<br>
                        ѧ<br>
                        ˮ<br>
                        ƽ<br>
                        ��<br>
                        ��<br>
                        ��</font></td>
                      <td colspan="3"><font size="2" color="#000000">�з��������״����չ���ƶԱ�Ԥ�⼰�꾡�̶�</font></td>
                      <td align="center"><font size="2" color="#000000">0-5</font></td>
                      <td align="center"><font size="2" color="#000099"><%=score0%></font></td>
                    </tr>
                    <tr> 
                      <td rowspan="4" align="center" width="18%"><font size="2" color="#000000">ˮ<br>
                        ƽ<br>
                        ��<br>
                        ��<br>
                        ��</font></td>
                      <td colspan="2"><font size="2" color="#000000">�������ȡ������ش�ԭʼ�Դ���</font></td>
                      <td align="center"><font size="2" color="#000000">21-25</font></td>
                      <td align="center" rowspan="4"><font size="2" color="#000099"><%=score1%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><font size="2" color="#000000">�����Ƚ����������ȣ��������ش��д���</font></td>
                      <td align="center"><font size="2" color="#000000">11-20</font></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><font color="#000000" size="2">�������ȡ������ش���һ������</font></td>
                      <td align="center"><font size="2" color="#000000">6-11</font></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><font size="2" color="#000000">�������ȡ�����ϴ�</font></td>
                      <td align="center"><font size="2" color="#000000">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="3" align="center"><font size="2" color="#000000">Ԥ��<br>
                        Ӧ��<br>
                        ǰ��</font></td>
                      <td rowspan="3" colspan="2"><font size="2" color="#000000">������ֵ��ʾ��Ԥ���꾭��Ч�棨���Ч�棩</font></td>
                      <td width="36%"><font size="2" color="#000000">2000�����ϣ���������</font></td>
                      <td align="center"><font size="2" color="#000000">16-20</font></td>
                      <td align="center" rowspan="3"><font size="2" color="#000099"><%=score2%></font></td>
                    </tr>
                    <tr> 
                      <td><font size="2" color="#000000">501-2000��������</font></td>
                      <td align="center"><font size="2" color="#000000">6-15</font></td>
                    </tr>
                    <tr> 
                      <td><font size="2" color="#000000">500�����£���������</font></td>
                      <td align="center"><font size="2" color="#000000">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="3" align="center"><font size="2" color="#000000">��<br>
                        ��<br>
                        ��<br>
                        ��</font></td>
                      <td colspan="3"><font size="2" color="#000000">ȫ���꾡</font></td>
                      <td align="center"><font size="2" color="#000000">11-15</font></td>
                      <td align="center" rowspan="3"><font size="2" color="#000099"><%=score3%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#000000">��ȫ���꾡</font></td>
                      <td align="center"><font size="2" color="#000000">6-10</font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#000000">�ϼ�</font></td>
                      <td align="center"><font size="2" color="#000000">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="2" align="center"><font size="2" color="#000000">����·��</font></td>
                      <td colspan="3"><font size="2" color="#000000">�����Ƚ����������</font></td>
                      <td align="center"><font size="2" color="#000000">6-10</font></td>
                      <td align="center" rowspan="2"><font size="2" color="#000099"><%=score4%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#000000">�������</font></td>
                      <td align="center"><font size="2" color="#000000">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="3" align="center"><font size="2" color="#000000">�о�����</font></td>
                      <td colspan="3"><font size="2" color="#000000">�о������ã����н������ǰ���о�</font></td>
                      <td align="center"><font color="#000000" size="2">16-25</font></td>
                      <td align="center" rowspan="3"><font size="2" color="#000099"><%=score5%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#000000">�о������Ϻã���һ��ǰ�ڳɹ�</font></td>
                      <td align="center"><font size="2" color="#000000">6-15</font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#000000">�о�����һ�㣬��ǰ�ڳɹ�</font></td>
                      <td align="center"><font size="2" color="#000000">0-5</font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#000000">�Ƿ�����������Ŀ</font></td>
                      <td colspan="2"><font size="2" color="#000099">&nbsp;&nbsp;&nbsp;<%=mind%></font></td>
                      <td align="center"><font size="2" color="#000000">���ֺϼ�</font></td>
                      <td align="center"><font size="2" color="#000099"><%=score6%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="2" align="center"><font size="2" color="#000000">��Ŀ����</font></td>
                      <td colspan="5"> 
                        <p><font size="2" color="#4f71b8">���Ҫ˵���Ƿ�����������Ŀ�����ɣ�������д�������</font><br>
                          <font size="2" color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;<%=expert_mind%></font> 
                        </p>
                      </td>
                    </tr>
                    <tr align="center"> 
                      <td colspan="7">&nbsp; </td>
                    </tr>
                  </table>				
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="15"></td>
                    </tr>
                  </table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td align="right" width="50%"> <a href="p_mind.jsp?itemID=<%=itemID%>"><img src="../images/change.gif" width="62" height="22" name="image" border="0"></a>&nbsp; 
                      </td>
                      <td>&nbsp;<INPUT onclick=javascript:window.close(); type=image src="../images/close.gif" width="62" height="22"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="10"></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
