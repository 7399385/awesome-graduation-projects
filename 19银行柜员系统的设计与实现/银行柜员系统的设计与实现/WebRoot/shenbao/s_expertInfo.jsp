<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>
<%
    String getLoginmessage=(String)session.getValue("loginSign");
    String unit_ID=(String)session.getValue("unitID");    
    if(getLoginmessage!="OK")
    {    
        response.sendRedirect("index2.jsp");
    }    
%>
<jsp:useBean id="s_expertInfo" scope="page" class="firm.firm"/>
<%
    String identityID=request.getParameter("identityID");  
    String sql="select * from I_p_info where identityID='"+identityID+"'";
    ResultSet rs=s_expertInfo.executeQuery(sql);
	//�����������Ͳ���ʼ��
	String expert_name1="";         //ר������
	String identityID1="";          //���֤��
	String sex1="";                 //�Ա�
	String nation1="";              //����
	String bir_date1="";            //����
	String unit_ID1="";             //��λ����
	String unit_name1="";           //���ڵ�λ
	String grade1="";               //ְ��
	String domain1="";              //�о�����
    String sort1="";                    //����רҵ
    String sort2="";                    //����רҵ
    String email1="";                   //E-mail
    String address1="";                 //סַ
    String zipcode1="";                 //�ʱ�
    String tel1="";                     //�绰
    String introduction1="";            //����
    if(rs.next())
	{
	    identityID1=rs.getString("identityID");
                expert_name1=rs.getString("expert_name");
		sex1=rs.getString("sex");
		nation1=rs.getString("nation");
		bir_date1=rs.getString("bir_date");
		unit_ID1=rs.getString("unit_ID");
		unit_name1=rs.getString("unit_name");
		grade1=rs.getString("grade");
		domain1=rs.getString("domain");
		sort1=rs.getString("sort1");
		sort2=rs.getString("sort2");
		email1=rs.getString("email");
		address1=rs.getString("address");
		zipcode1=rs.getString("zipcode");
		tel1=rs.getString("tel");
		introduction1=rs.getString("introduction");
	rs.close();
        s_expertInfo.closeStmt();
        s_expertInfo.closeConn();
	}
	String bir_year=bir_date1.substring(0,4);
	String bir_month=bir_date1.substring(5,7);
	String bir_day=bir_date1.substring(8,10);	
%>

<html>
<head>
<title>ר����Ϣ</title>
<SCRIPT language=javascript>
<!--
OptSort = new Array(
    "0100","��ѧ",
	"0101","��ѧ",
	"0200","����ѧ",
	"0201","���۾���ѧ",
	"0202","Ӧ�þ���ѧ",
	"0300","��ѧ",
	"0301","��ѧ",
	"0302","����ѧ",
	"0303","���ѧ",
	"0304","����ѧ",
	"0400","����ѧ",
	"0401","����ѧ",
	"0402","����ѧ",
	"0403","����ѧ",
	"0500","��ѧ",
	"0501","�й�������ѧ",
	"0502","���������ѧ",
	"0503","���Ŵ���ѧ",
	"0504","����ѧ",
	"0600","��ʷѧ",
	"0601","��ʷѧ",
	"0700","��ѧ",
	"0701","��ѧ",
	"0702","����ѧ",
	"0703","��ѧ",
	"0704","����ѧ",
	"0705","����ѧ",
	"0706","������ѧ",
	"0707","�����ѧ",
	"0708","��������ѧ",
	"0709","����ѧ",
	"0710","����ѧ",
	"0711","ϵͳ��ѧ",
	"0712","��ѧ����ʷ",
	"0800","��ѧ",
	"0801","��ѧ",
	"0802","��е����",
	"0803","��ѧ����",
	"0804","������ѧ�뼼��",
	"0805","���Ͽ�ѧ�빤��",
	"0806","ұ�𹤳�",
	"0807","�������̼�����������",
	"0808","��������",
	"0809","���ӿ�ѧ�뼼��",
	"0810","��Ϣ��ͨ�Ź���",
	"0811","���ƿ�ѧ�빤��",
	"0812","�������ѧ�뼼��",
	"0813","����ѧ",
	"0814","��ľ����",
	"0815","ˮ������",
	"0816","����ѧ�뼼��",
	"0817","��ѧ�����뼼��",
	"0818","������Դ����ʹ���",
	"0819","��ҵ����",
	"0820","ʯ������Ȼ������",
	"0900","ũѧ",
	"0901","����ѧ",
	"0902","԰��ѧ",
	"0903","ũҵ��Դ����",
	"0904","ֲ�ﱣ��",
	"0905","����ѧ",
	"0906","��ҽѧ",
	"0907","��ѧ",
	"0908","ˮ��",
	"1000","ҽѧ",
	"1001","����ҽѧ",
	"1002","�ٴ�ҽѧ",
	"1003","��ǻҽѧ",
	"1004","����������Ԥ��ҽѧ",
	"1005","��ҽѧ",
	"1006","����ҽ���",
	"1007","ҩѧ",
	"1008","��ҩѧ",
	"1100","����ѧ",
	"1101","����",
	"1200","����ѧ",
	"1201","�����ѧ�빤��",
	"1202","���̹���");

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
  <table border="0" cellspacing="0" cellpadding="0">
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
              <div align="center"><img src="../images/p_expertinfo.gif" width="112" height="22"></div>
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
                        <td colspan="3" bgcolor="#d9d8dc">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" width="21%" align="center"> <font color="#000099">ר������</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=expert_name1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">���֤��</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"><font color="#000099"><%=identityID1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=sex1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"><font color="#000099"><%=nation1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"> <font color="#000099">��������</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=bir_year%>��<%=bir_month%>��<%=bir_day%>��</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��λ����</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=unit_ID1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">���ڵ�λ</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"><font color="#000099"><%=unit_name1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">ְ&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=grade1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">�о�����</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"> <font color="#000099"><%=domain1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">����רҵ</font></td>
                        <td colspan="2" width="50%"> <font color="#000099"> 
                          <script language="javascript">showSort(OptSort,"<%=sort1%>");showbank();showSort(OptSort,"<%=sort2%>");</script>
                          </font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">E 
                          - mail</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"><font color="#000099"><%=email1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��ϵ��ַ</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=address1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��������</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"><font color="#000099"><%=zipcode1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td colspan="2" width="50%"><font color="#000099"><%=tel1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td bgcolor="#f2f2f2" colspan="2" width="50%"><font color="#000099"><%=introduction1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" colspan="3">&nbsp;</td>
                      </tr>
                      <tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" colspan="3">&nbsp;<INPUT onclick=javascript:window.close(); type=image src="../images/close.gif" width="62" height="22"></td>
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
