<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>
<%
    String getLoginmessage=(String)session.getValue("loginSign");
    String unit_ID=(String)session.getValue("unitID");      
    if(getLoginmessage!="OK")
    {
        response.sendRedirect("index2.jsp");
    }    
%>
<jsp:useBean id="s_showitem" scope="page" class="firm.firm"/>
<%
    String itemID=request.getParameter("itemID");
    String sql="select * from I_s_item where itemID='"+itemID+"'";
    ResultSet rs=s_showitem.executeQuery(sql);
	
	//�����������Ͳ���ʼ��
	String item_name1="";     //��Ŀ����
	String sort1="";          //��    ��
	String sort2="";
	String begin_date1="";    //��ֹ����
	String finish_date1="";   //��ֹ����
	String applicant1="";     //�� �� ��
	String grade1="";         //ְ    ��
	String education="";         //ѧ    ��
	String unit_name1="";     //���ڵ�λ
	String fill_date1="";     //�����
    String purport1="";       //��������о�����
    String status1="";        //�������о���״����
    String future1="";        //Ԥ��Ӧ��ǰ��
    String point1="";         //��Ҫ˼�롢�۵�
    String analysis1="";      //��Ҫ���ݡ��ص���ѵ����
    String way1="";           //�о�����
    String moment1="";        //�׶μ�����Ԥ���о��ɹ�
    String result1="";        //Ԥ���о��ɹ�
    String reference1="";     //������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο�����
    String market1="";        //Ӧ���ƹ���г�����
    String commend_mind1="";  //�Ƽ���λ���
    String expert_mind1="";   //ר������ίԱ�����
    String leading_mind1="";  //�������
    String pass1="";          //�Ƿ�ͨ������
	String sum="";

    if(rs.next())
	{
	    item_name1=rs.getString("item_name");
		sort1=rs.getString("sort1");
		sort2=rs.getString("sort2");
		begin_date1=rs.getString("begin_date");
		finish_date1=rs.getString("finish_date");
		applicant1=rs.getString("applicant");
		grade1=rs.getString("grade");
		education=rs.getString("education");
		unit_name1=rs.getString("unit_name");
		fill_date1=rs.getString("fill_date");
		purport1=rs.getString("purport");
		status1=rs.getString("status");
		future1=rs.getString("future");
		point1=rs.getString("point");
		analysis1=rs.getString("analysis");
		way1=rs.getString("way");
		moment1=rs.getString("moment");
		result1=rs.getString("result");
		reference1=rs.getString("reference");
		market1=rs.getString("market");
		commend_mind1=rs.getString("commend_mind");
		expert_mind1=rs.getString("expert_mind");
		leading_mind1=rs.getString("leading_mind");
		pass1=rs.getString("pass");
		
		rs.close();
        s_showitem.closeStmt();
        s_showitem.closeConn();
	}
	String begin_year=begin_date1.substring(0,4);
	String begin_month=begin_date1.substring(5,7);
	String finish_year=finish_date1.substring(0,4);
	String finish_month=finish_date1.substring(5,7);
	String fill_year=fill_date1.substring(0,4);
	String fill_month=fill_date1.substring(5,7);
	String fill_day=fill_date1.substring(8,10);

	String sql2="select * from I_s_money where itemID='"+itemID+"'";
	ResultSet rs2=s_showitem.executeQuery(sql2);
	String sql3="select sum(sMoney) as ssum from I_s_money where itemID='"+itemID+"'";
	ResultSet rs3=s_showitem.executeQuery(sql3);
	if(rs3.next()){ sum=rs3.getString("ssum");}
	String pSql="select * from I_distribute where itemID='"+itemID+"'";
	ResultSet pRs=s_showitem.executeQuery(pSql);
	String expert[]={"ר��һ","ר�Ҷ�","ר����","ר����","ר����"};
	
%>

<html>
<head>
<title>��Ŀ�걨</title>
<SCRIPT language=javascript>
<!--
OptSort = new Array(
    "0100","����",
	"0101","������",
	"0200","��Ӫ����",
	"0201","��˾Ӳ����ʩ",
	"0202","Ա����ͨ",
	"0300","Ա��ס��",
	"0301","Ա������",
	"0302","�ڼ��ղ���",
	"0303","��˾��չս��",
	"0304","���ϵͳ",
	"0400","��Ƹ��Ա��",
	"0401","�����²���",
	"0402","��˾�����ƶ�",
	"0403","��˾�������",
	"0500","��˾���¹���",
	"0501","��˾���۲���",
	"0502","��˾�ʼ첿��"	);

function showSort()
{
	var i,len,start,step,s1,a,args=showSort.arguments;
	var name;
	a=args[0];
	s1=args[1];
	start=0;
	step=2;
	len=a.length;
	for(i=0;i<len;i+=step)
	{
		if(a[i]==s1)
		{
		    name=a[i+1];
			break;
		}
		else name="";
	}
	document.writeln(name);
}
function showbank()
{
    document.writeln("");
}
//-->
</SCRIPT>
</head>

<body bgcolor="#FFFFFF" text="#000000">
<div align="center"> 
  <table border="0" cellspacing="0" cellpadding="0" width="650">
    <tr> 
      <td bgcolor="#000099"> 
        <table width="600" border="0" cellspacing="0" cellpadding="0">
          <tr bgcolor="#FFFFFF"> 
            <td colspan="3">&nbsp;</td>
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
              <div align="center"><img src="../images/s_item1.gif" width="112" height="22"></div>
            </td>
            <td width="33%">&nbsp;</td>
          </tr>
        </table>
        <table width="650" border="0" cellspacing="1" cellpadding="0" height="120">
          <tr> 
            <td height="179" bgcolor="#FFFFFF"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td height="5">&nbsp;</td>
                </tr>
              </table>
              <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center" height="151">
                <tr> 
                  <td>                    
                      <table width="95%" border="0" cellspacing="1" cellpadding="1" align="center">
                        
                      <tr> 
                        <td colspan="2" bgcolor="#d9d8dc">&nbsp;</td>
                        </tr>
                        <tr> 
                          <td width="25%" bgcolor="#d9d8dc" align="center"><font color="#000099">��Ŀ����</font></td>
                          <td><font color="#000099"><%=item_name1%></font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                          <td bgcolor="#f2f2f2"><font color="#000099"><script language="javascript">showSort(OptSort,"<%=sort1%>");showbank();showSort(OptSort,"<%=sort2%>");</script></font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">��ֹ����</font></td>
                          
                        <td> <font color="#000099"><%=begin_year%>��<%=begin_month%>�¡���<%=finish_year%>��<%=finish_month%>��</font> </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">�� 
                            �� ��</font></td>
                          <td bgcolor="#f2f2f2"> <font color="#000099"><%=applicant1%>��<%=grade1%>����<%=education%>��</font> 
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">���ڵ�λ</font></td>
                          <td><font color="#000099"><%=unit_name1%></font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">�����</font></td>
                          <td bgcolor="#f2f2f2"> <font color="#000099"><%=fill_year%>��<%=fill_month%>��<%=fill_day%>��</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" colspan="2">&nbsp;</td>
                        </tr>
                        <tr> 
                          <td colspan="2">&nbsp;</td>
                        </tr>
                      </table>
                      
                    <table width="95%" border="0" cellspacing="1" cellpadding="1" align="center">
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">һ��������Ƽ���������֤</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"> 
                          <p><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;1����������о����塢�������о���״������������Ӧ��ǰ����<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;2���������о�����Ҫ˼�롢��Ҫ�۵㡢��Ҫ���ݡ��ص���ѵ������<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;3����������о��������׶μ�����Ԥ���о��ɹ���<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;4������Ԥ�㣨������������Դ��������˵������<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;5��������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο����ϡ�</font></p>
                        </td>
                      </tr>
                      <tr> 
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;1����������о����塢�������о���״������������Ӧ��ǰ����</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;��������о�����</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=purport1%></td>
                      </tr>
                      <tr bgcolor="#d9d8dc"> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;�������о���״����</font> 
                        </td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=status1%></td>
                      </tr>
                      <tr bgcolor="#d9d8dc"> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;Ԥ��Ӧ��ǰ��</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=future1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;2���������о�����Ҫ˼�롢��Ҫ�۵㡢��Ҫ���ݡ��ص���ѵ������</font> 
                        </td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;��Ҫ˼�롢�۵�</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=point1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;��Ҫ���ݡ��ص���ѵ����</font> 
                        </td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=analysis1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;3����������о��������׶μ�����Ԥ���о��ɹ���</font> 
                        </td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;�о�����</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=way1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;�׶μ�����Ԥ���о��ɹ�</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=moment1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;Ԥ���о��ɹ�</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=result1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;4������Ԥ��</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2"> 
                          <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr> 
                              <td align="center" width="60%"><font size="2" color="#000099">֧����Ŀ</font></td>
                              <td align="center"><font size="2" color="#000099">֧������Ԫ��</font></td>
                            </tr>
                            <%
						     while(rs2.next()){ String outItem=rs2.getString("outItem");
                                               String money=rs2.getString("sMoney");
						    %>
                            <tr> 
                              <td>&nbsp;<%=outItem%></td>
                              <td>&nbsp;<%=money%></td>
                            </tr>
                            <%
						     }
						    %>
                            <tr> 
                              <td width="60%">&nbsp;<font color="#000099">�ϼƣ�</font></td>
                              <td>&nbsp;<%=sum%></td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;5��������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο����ϡ�</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=reference1%></td>
                      </tr>
                      <tr> 
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">����Ӧ���ƹ���г�����</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=market1%></td>
                      </tr>
                      <tr> 
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">������Ŀ���Ա</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp; </td>
                      </tr>
                      <tr> 
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">�ġ��Ƽ���λ���</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=commend_mind1%></td>
                      </tr>
                      <tr> 
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">�塢ר������ίԱ�����</font></td>
                      </tr>
                      <% int i=0;
					  while(pRs.next())
					  { String item_name=pRs.getString("item_name");
					    String identityID=pRs.getString("identityID");
					    String score=pRs.getString("score6");
					    String mind=pRs.getString("mind");
						String expert_mind=pRs.getString("expert_mind");
						String expertMind="������"+score+"�֣�����"+mind+"����Ŀ�������"+expert_mind;
						%>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=expert[i]%><%=expertMind%></td>
                      </tr>
                      <% i++; } %>
                      <tr> 
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2"><font color="#000099">�����������</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#f2f2f2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<%=leading_mind1%></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" width="50%" align="right"><a href="s_changeItem.jsp?itemID=<%=itemID%>"><img src="../images/change.gif" width="62" height="22" border="0"></a>&nbsp; 
                        </td>
                        <td bgcolor="#d9d8dc" colspan="2"> 
                          &nbsp;<input onClick=javascript:window.close(); type=image src="../images/close.gif" width="62" height="22" name="image">
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td>&nbsp;</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</div>
</body>
</html>