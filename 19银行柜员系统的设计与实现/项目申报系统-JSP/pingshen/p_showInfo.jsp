<%@ page language="java" import="java.sql.*"contentType="text/html;charset=GB2312"%>

<%
    String getLoginmessage=(String)session.getValue("p_loginSign");
    String identityID=(String)session.getValue("identityID");    
    if(getLoginmessage!="OK")
    {
        response.sendRedirect("index3.jsp");
    }
%>
<jsp:useBean id="p_showinfo" scope="page" class="firm.firm"/>
<%
    String itemID=request.getParameter("itemID");  
    String sql="select * from I_p_info where identityID='"+identityID+"'";
    ResultSet rs=p_showinfo.executeQuery(sql);
	//�����������Ͳ���ʼ��
	String expert_name1="";         //ר������
	String identityID1="";          //���֤��
	String sex1="";                 //�Ա�
	String nation1="";              //����
	String bir_date1="";            //����
        String bir_year="";
        String bir_month="";
        String bir_day="";
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
		//nation1=rs.getString("na");
		//System.out.println(nation1);
		bir_date1=rs.getString("bir_date");
		System.out.println(bir_date1);
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
		nation1=rs.getString("na");
		System.out.println(nation1);
	rs.close();
        p_showinfo.closeStmt();
        p_showinfo.closeConn();
	}
        if(bir_date1.length()!=0)
        {
          bir_year=bir_date1.substring(0,4);
	  bir_month=bir_date1.substring(5,7);
	  bir_day=bir_date1.substring(8,10);
        }	
%>

<html>
<head>
<title>ר����Ϣ</title>
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
                        <td colspan="3" bgcolor="#d9d8dc">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" width="21%" align="center"> <font color="#000099">ר������</font></td>
                        <td colspan="2"><font color="#000099"><%=expert_name1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">���֤��</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"><font color="#000099"><%=identityID1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td colspan="2"><font color="#000099"><%=sex1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"><font color="#000099"><%=nation1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"> <font color="#000099">��������</font></td>
                        <td colspan="2"><font color="#000099"><%=bir_year%>��<%=bir_month%>��<%=bir_day%>��</font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��λ����</font></td>
                        <td colspan="2"><font color="#000099"><%=unit_ID1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">���ڵ�λ</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"><font color="#000099"><%=unit_name1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">ְ&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td colspan="2"><font color="#000099"><%=grade1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">�о�����</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"> <font color="#000099"><%=domain1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">����רҵ</font></td>
                        <td colspan="2"> <font color="#000099"> 
                          <script language="javascript">showSort(OptSort,"<%=sort1%>");showbank();showSort(OptSort,"<%=sort2%>");</script>
                          </font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">E 
                          - mail</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"><font color="#000099"><%=email1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��ϵ��ַ</font></td>
                        <td colspan="2"><font color="#000099"><%=address1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��������</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"><font color="#000099"><%=zipcode1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td colspan="2"><font color="#000099"><%=tel1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" width="21%"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                        <td bgcolor="#f2f2f2" colspan="2"><font color="#000099"><%=introduction1%></font></td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" align="center" colspan="3">&nbsp;</td>
                      </tr>
                      <tr> 
                        <td bgcolor="#d9d8dc" colspan="2" align="right"><a href="p_changeInfo.jsp"><img src="../images/change.gif" width="62" height="22" border="0"></a>&nbsp;</td>
                        <td bgcolor="#d9d8dc" width="50%">&nbsp; 
                          <INPUT onclick=javascript:window.close(); type=image src="../images/close.gif" width="62" height="22">
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
