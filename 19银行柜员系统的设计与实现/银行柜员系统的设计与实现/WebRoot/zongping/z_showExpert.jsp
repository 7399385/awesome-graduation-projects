<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>

<%
    String z_Loginmessage=(String)session.getValue("z_loginSign");
    String adminID=(String)session.getValue("adminID");    
    if(z_Loginmessage!="OK")
    {
	response.sendRedirect("index4.jsp");
    }
%>
<jsp:useBean id="z_showExpert" scope="page" class="firm.firm"/>
<%
    String identityID=new String(request.getParameter("identityID").getBytes("8859_1"));
    String sql="select * from I_p_info where identityID='"+identityID+"'";
    ResultSet rs=z_showExpert.executeQuery(sql);
	//�����������Ͳ���ʼ��
	String expert_name1="";         //ר������
	String identityID1="";          //���֤��
	String sex1="";                 //�Ա�
	String nation1="";              //����
	String bir_date1="";            //����
	String unit_ID1="";
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
        z_showExpert.closeStmt();
        z_showExpert.closeConn();
	}
	String bir_year=bir_date1.substring(0,4);
	String bir_month=bir_date1.substring(5,7);
	String bir_day=bir_date1.substring(8,10);	
%>

<html>
<head>
<title>showInfo</title>
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
  <table border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td bgcolor="#4f71b8"> 
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
        <table width="600" border="0" cellspacing="1" cellpadding="0" height="120">
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
                        <td bgcolor="#d9d8dc" width="25%" align="center"> <font color="#000099">ר������</font></td>
                        <td width="75%"><font color="#000099"><%=expert_name1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">���֤��</font></td>
                        <td bgcolor="#f2f2f2"><font color="#000099"><%=identityID1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td><font color="#000099"><%=sex1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td bgcolor="#f2f2f2"><font color="#000099"><%=nation1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"> <font color="#000099">��������</font></td>
                        <td><font color="#000099"><%=bir_year%>��<%=bir_month%>��<%=bir_day%>��</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��λ����</font></td>
                        <td><font color="#000099"><%=unit_ID1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">���ڵ�λ</font></td>
                        <td bgcolor="#f2f2f2"><font color="#000099"><%=unit_name1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">ְ&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td><font color="#000099"><%=grade1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">�о�����</font></td>
                        <td bgcolor="#f2f2f2"> <font color="#000099"><%=domain1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">����רҵ</font></td>
                        <td> <font color="#000099"> 
                          <script language="javascript">showSort(OptSort,"<%=sort1%>");showbank();showSort(OptSort,"<%=sort2%>");</script>
                          </font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">E 
                          - mail</font></td>
                        <td bgcolor="#f2f2f2" width="75%"><font color="#000099"><%=email1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��ϵ��ַ</font></td>
                        <td><font color="#000099"><%=address1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��������</font></td>
                        <td bgcolor="#f2f2f2"><font color="#000099"><%=zipcode1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td><font color="#000099"><%=tel1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td bgcolor="#f2f2f2"><font color="#000099"><%=introduction1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" colspan="2">&nbsp;</td>
                      </tr>
                      <tr align="center"> 
                        <td bgcolor="#d9d8dc" colspan="2"> 
                          <input type=image src="../images/shutdown.gif" width="80" height="22" border="0" onclick=javascript:window.close();>
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
