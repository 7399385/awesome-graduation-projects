<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>

<%
    String getLoginmessage=(String)session.getValue("p_loginSign");
    String identityID=(String)session.getValue("identityID");    
    if(getLoginmessage!="OK")
    {
        response.sendRedirect("index3.jsp");
    }
%>
<jsp:useBean id="p_mind" scope="page" class="firm.firm"/>
<%
    String ssql="select * from I_itemSetup";
    ResultSet srs=p_mind.executeQuery(ssql);
    java.util.Date today=new java.util.Date();
    java.util.Date p_beginDate=new java.util.Date();
    java.util.Date p_finishDate=new java.util.Date();
    if(srs.next())
    {
	p_beginDate=srs.getDate("p_beginDate");
	p_finishDate=srs.getDate("p_finishDate");
    }
    if(today.before(p_beginDate) || today.after(p_finishDate))
    {
        response.sendRedirect("timeOut.jsp");
    }
%>

<%
    String itemID=request.getParameter("itemID");  
    String sql1="select * from I_distribute where itemID='"+itemID+"' and identityID='"+identityID+"'";
    ResultSet rs1=p_mind.executeQuery(sql1);
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
    if(rs1.next()){
        item_name=rs1.getString("item_name");
        score0=rs1.getString("score0");
        score1=rs1.getString("score1");
        score2=rs1.getString("score2");
        score3=rs1.getString("score3");
        score4=rs1.getString("score4");
        score5=rs1.getString("score5");
        score6=rs1.getString("score6");
        mind=rs1.getString("mind");
        expert_mind=rs1.getString("expert_mind");
    }
%>

<html>
<head>
<title>ר�������</title>
<script language="JavaScript" type="text/javascript">
<!--
  function addUp()
  {
    document.form1.score6.value=parseInt(document.form1.score0.value)+parseInt(document.form1.score1.value)+parseInt(document.form1.score2.value)+parseInt(document.form1.score3.value)+parseInt(document.form1.score4.value)+parseInt(document.form1.score5.value);
  }
function Jtrim(str)
{

        var i = 0;
        var len = str.length;
        if ( str == "" ) return( str );
        j = len -1;
        flagbegin = true;
        flagend = true;
        while ( flagbegin == true && i< len)
        {
           if ( str.charAt(i) == " " )
                {
                  i=i+1;
                  flagbegin=true;
                }
                else
                {
                        flagbegin=false;
                }
        }

        while  (flagend== true && j>=0)
        {
            if (str.charAt(j)==" ")
                {
                        j=j-1;
                        flagend=true;
                }
                else
                {
                        flagend=false;
                }
        }

        if ( i > j ) return ("")

        trimstr = str.substring(i,j+1);
        return trimstr;
}
function checktheform()
{
       var f1=document.form1;
	
	if (!(parseInt(f1.score0.value)>=0 && parseInt(f1.score0.value)<=5))
	{
		window.alert("����Ӧ��0-5֮�䡣");
		f1.score0.focus();
		return false;
	}
	
	if (!(parseInt(f1.score1.value)>=0 && parseInt(f1.score1.value)<=25))
	{
		window.alert("����Ӧ��0-25֮�䡣");
		f1.score1.focus();
		return false;
	}
	
	if (!(parseInt(f1.score2.value)>=0 && parseInt(f1.score2.value)<=20))
	{
		window.alert("����Ӧ��0-20֮�䡣");
		f1.score2.focus();
		return false;
	}
	
	if (!(parseInt(f1.score3.value)>=0 && parseInt(f1.score3.value)<=15))
	{
		window.alert("����Ӧ��0-15֮�䡣");
		f1.score3.focus();
		return false;
	}
	
	if (!(parseInt(f1.score4.value)>=0 && parseInt(f1.score4.value)<=10))
	{
		window.alert("����Ӧ��0-10֮�䡣");
		f1.score4.focus();
		return false;
	}
	
	if (!(parseInt(f1.score5.value)>=0 && parseInt(f1.score5.value)<=25))
	{
		window.alert("����Ӧ��0-25֮�䡣");
		f1.score5.focus();
		return false;
	}

	if (Jtrim(f1.expert_mind.value) == "")
	{
		window.alert("����δ��д���");
		f1.expert_mind.focus();
		return false;
	}
}
//-->
</script>
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
          <td bgcolor="#FFFFFF"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="5">&nbsp;</td>
              </tr>
            </table>
            <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td align="center">
				<form name=form1 method=post action="p_checkMind.jsp?itemID=<%=itemID%>" onSubmit="return checktheform(this)">
                    <table width="100%" border="1" bordercolor="#4f71b8">
                      <tr align="center"> 
                        <td colspan="7"><font color="#000000" size="2">ר�������</font></td>
                      </tr>
                      <tr> 
                        <td colspan="2" align="center"><font color="#000000" size="2">��Ŀ����</font></td>
                        <td colspan="5"><font color="#000099"><%=item_name%></font></td>
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
                        <td align="center"> 
                          <input type="text" name="score0" size="6" value="<%=score0%>" onclick="select()" onKeyUp="addUp()">
                        </td>
                      </tr>
                      <tr> 
                        <td rowspan="4" align="center" width="18%"><font size="2" color="#000000">ˮ<br>
                          ƽ<br>
                          ��<br>
                          ��<br>
                          ��</font></td>
                        <td colspan="2"><font size="2" color="#000000">�������ȡ������ش�ԭʼ�Դ���</font></td>
                        <td align="center"><font size="2" color="#000000">21-25</font></td>
                        <td align="center" rowspan="4"> 
                          <input type="text" name="score1" size="6" value="<%=score1%>" onclick="select()" onKeyUp="addUp()">
                        </td>
                      </tr>
                      <tr> 
                        <td colspan="2"><font size="2" color="#000000">�����Ƚ����������ȣ��������ش��д���</font></td>
                        <td align="center"><font size="2" color="#000000">11-20</font></td>
                      </tr>
                      <tr> 
                        <td colspan="2"><font color="#000000" size="2">�������ȡ������ش���һ������</font></td>
                        <td align="center"><font size="2" color="#000000">6-10</font></td>
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
                        <td align="center" rowspan="3"> 
                          <input type="text" name="score2" size="6" value="<%=score2%>" onclick="select()" onKeyUp="addUp()">
                        </td>
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
                        <td align="center" rowspan="3"> 
                          <input type="text" name="score3" size="6" value="<%=score3%>" onclick="select()" onKeyUp="addUp()">
                        </td>
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
                        <td align="center" height="29"><font size="2" color="#000000">6-10</font></td>
                        <td align="center" rowspan="2"> 
                          <input type="text" name="score4" size="6" value="<%=score4%>" onclick="select()" onKeyUp="addUp()">
                        </td>
                      </tr>
                      <tr> 
                        <td colspan="3"><font size="2" color="#000000">�������</font></td>
                        <td align="center"><font size="2" color="#000000">0-5</font></td>
                      </tr>
                      <tr> 
                        <td rowspan="3" align="center"><font size="2" color="#000000">�о�����</font></td>
                        <td colspan="3"><font size="2" color="#000000">�о������ã����н������ǰ���о�</font></td>
                        <td align="center"><font color="#000000" size="2">16-25</font></td>
                        <td align="center" rowspan="3">
                          <input type="text" name="score5" size="6" value="<%=score5%>" onClick="select()" onKeyUp="addUp()">
                        </td>
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
                        <td colspan="2"> 
                          <input type="radio" name="radio_mind" value="����" checked>
                          <font size="2" color="#000000">��</font> 
                          <input type="radio" name="radio_mind" value="������">
                          <font size="2" color="#000000">��������ťѡ��</font></td>
                        <td align="center"><font size="2" color="#000000">���ֺϼ�</font></td>
                        <td align="center"> 
                          <input type="text" name="score6" size="6" value="<%=score6%>">
                        </td>
                      </tr>
                      <tr> 
                        <td colspan="2" align="center"><font size="2" color="#0000CC">��Ŀ����</font></td>
                        <td colspan="5"> 
                          <p><font size="2" color="#4f71b8">���Ҫ˵���Ƿ�����������Ŀ�����ɣ�������д�������</font><br>
                            <textarea name="expert_mind" cols="70" rows="3"><%=expert_mind%></textarea>
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
                          <input type=image src="../images/refer.gif" width="62" height="22" name="image">
                        </td>
                      </tr>
                    </table>
                  </form>
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
