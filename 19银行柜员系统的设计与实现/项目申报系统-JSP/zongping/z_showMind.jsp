<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>

<%
    String z_Loginmessage=(String)session.getValue("z_loginSign");
    String adminID=(String)session.getValue("adminID");    
    if(z_Loginmessage!="OK")
    {
	response.sendRedirect("index4.jsp");
    }
%>
<jsp:useBean id="z_showMind" scope="page" class="firm.firm"/>
<%
    String itemID=request.getParameter("itemID");
    String identityID=request.getParameter("identityID");   
    String sql="select * from I_distribute where itemID='"+itemID+"' and identityID='"+identityID+"'";
    ResultSet rs=z_showMind.executeQuery(sql);
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
<table border="0" cellspacing="0" cellpadding="0" width="650" align="center">
  <tr> 
    <td bgcolor="#000099"> 
      <table width="650" border="0" cellspacing="0" cellpadding="0">
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
      <table width="650" border="0" cellspacing="1" cellpadding="0">
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
                  <table width="100%" border="1" bordercolor="#000099">
                    <tr align="center"> 
                      <td colspan="7"><font color="#0000CC" size="2">ר�������</font></td>
                    </tr>
                    <tr> 
                      <td colspan="2" align="center"><font color="#0000CC" size="2">��Ŀ����</font></td>
                      <td colspan="5"><font color="#000099" size="2"><%=item_name%></font></td>
                    </tr>
                    <tr> 
                      <td width="8%" rowspan="17" align="center"> 
                        <p><font size="2" color="#0000CC">��<br>
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
                      <td width="6%" align="center" height="35"><font color="#0000CC" size="2">��������</font></td>
                      <td colspan="3" height="35" align="center"><font size="2" color="#0000CC">���ݷ��༰��׼</font></td>
                      <td width="11%" height="35" align="center"><font size="2" color="#0000CC">��ֵ��Χ</font></td>
                      <td width="15%" height="35" align="center"> <font size="2" color="#0000CC">����</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="5" align="center"><font size="2" color="#0000CC">��<br>
                        ѧ<br>
                        ˮ<br>
                        ƽ<br>
                        ��<br>
                        ��<br>
                        ��</font></td>
                      <td colspan="3"><font size="2" color="#0000CC">�з��������״����չ���ƶԱ�Ԥ�⼰�꾡�̶�</font></td>
                      <td align="center"><font size="2" color="#0000CC">0-5</font></td>
                      <td align="center"><font size="2" color="#000099"><%=score0%></font></td>
                    </tr>
                    <tr> 
                      <td rowspan="4" align="center" width="18%"><font size="2" color="#0000CC">ˮ<br>
                        ƽ<br>
                        ��<br>
                        ��<br>
                        ��</font></td>
                      <td colspan="2"><font size="2" color="#0000CC">�������ȡ������ش�ԭʼ�Դ���</font></td>
                      <td align="center"><font size="2" color="#0000CC">21-25</font></td>
                      <td align="center" rowspan="4"><font size="2" color="#000099"><%=score1%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><font size="2" color="#0000CC">�����Ƚ����������ȣ��������ش��д���</font></td>
                      <td align="center"><font size="2" color="#0000CC">11-20</font></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><font color="#0000CC" size="2">�������ȡ������ش���һ������</font></td>
                      <td align="center"><font size="2" color="#0000CC">6-11</font></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><font size="2" color="#0000CC">�������ȡ�����ϴ�</font></td>
                      <td align="center"><font size="2" color="#0000CC">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="3" align="center"><font size="2" color="#0000CC">Ԥ��<br>
                        Ӧ��<br>
                        ǰ��</font></td>
                      <td rowspan="3" colspan="2"><font size="2" color="#0000CC">������ֵ��ʾ��Ԥ���꾭��Ч�棨���Ч�棩</font></td>
                      <td width="36%"><font size="2" color="#0000CC">2000�����ϣ���������</font></td>
                      <td align="center"><font size="2" color="#0000CC">16-20</font></td>
                      <td align="center" rowspan="3"><font size="2" color="#000099"><%=score2%></font></td>
                    </tr>
                    <tr> 
                      <td><font size="2" color="#0000CC">501-2000��������</font></td>
                      <td align="center"><font size="2" color="#0000CC">6-15</font></td>
                    </tr>
                    <tr> 
                      <td><font size="2" color="#0000CC">500�����£���������</font></td>
                      <td align="center"><font size="2" color="#0000CC">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="3" align="center"><font size="2" color="#0000CC">��<br>
                        ��<br>
                        ��<br>
                        ��</font></td>
                      <td colspan="3"><font size="2" color="#0000CC">ȫ���꾡</font></td>
                      <td align="center"><font size="2" color="#0000CC">11-15</font></td>
                      <td align="center" rowspan="3"><font size="2" color="#000099"><%=score3%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#0000CC">��ȫ���꾡</font></td>
                      <td align="center"><font size="2" color="#0000CC">6-10</font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#0000CC">�ϼ�</font></td>
                      <td align="center"><font size="2" color="#0000CC">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="2" align="center"><font size="2" color="#0000CC">����·��</font></td>
                      <td colspan="3"><font size="2" color="#0000CC">�����Ƚ����������</font></td>
                      <td align="center"><font size="2" color="#0000CC">6-10</font></td>
                      <td align="center" rowspan="2"><font size="2" color="#000099"><%=score4%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#0000CC">�������</font></td>
                      <td align="center"><font size="2" color="#0000CC">0-5</font></td>
                    </tr>
                    <tr> 
                      <td rowspan="3" align="center"><font size="2" color="#0000CC">�о�����</font></td>
                      <td colspan="3"><font size="2" color="#0000CC">�о������ã����н������ǰ���о�</font></td>
                      <td align="center"><font color="#0000CC" size="2">16-25</font></td>
                      <td align="center" rowspan="3"><font size="2" color="#000099"><%=score5%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#0000CC">�о������Ϻã���һ��ǰ�ڳɹ�</font></td>
                      <td align="center"><font size="2" color="#0000CC">6-15</font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#0000CC">�о�����һ�㣬��ǰ�ڳɹ�</font></td>
                      <td align="center"><font size="2" color="#0000CC">0-5</font></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><font size="2" color="#0000CC">�Ƿ�����������Ŀ</font></td>
                      <td colspan="2"><font size="2" color="#000099">&nbsp;&nbsp;&nbsp;<%=mind%></font></td>
                      <td align="center"><font size="2" color="#0000CC">���ֺϼ�</font></td>
                      <td align="center"><font size="2" color="#000099"><%=score6%></font></td>
                    </tr>
                    <tr> 
                      <td colspan="2" align="center"><font size="2" color="#0000CC">��Ŀ����</font></td>
                      <td colspan="5"> 
                        <p><font size="2" color="#FF9900">���Ҫ˵���Ƿ�����������Ŀ�����ɣ�������д�������</font><br>
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
                      <td align="center"> 
                        <input onClick=javascript:window.close(); type=image src="../images/shutdown.gif" width="80" height="22" name="image">
                      </td>
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
