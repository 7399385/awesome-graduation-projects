<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" %>
<%@ page errorPage="error.html"%>
<html>
<head>
<link href=css.css rel=STYLESHEET type=text/css>
<jsp:useBean id="mdb" class="ckstudio.db.mysqlconn" scope="page"/>

<title>
<%!
 int Cint(String cint)
   {
    try {
	  int n;
      n= Integer.parseInt(cint);
	  return n;
        }
       catch (NumberFormatException e) {
                 return 0;
        }
}
%>
<%!
 String getStr(String str)
{
 	try
	{
		String temp_p=str;
		byte[] temp_t=temp_p.getBytes("ISO8859-1");
		String temp=new String(temp_t);
		return temp;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	 }
}
%>
<%
String user_name=(String)session.getValue("user_name");
      
String user_type=(String)session.getValue("user_type");
       
if(user_name!=null)
{
%>
<%=user_name%>�Ĺ��ﳵ
<%
}else
{
out.print("���ﳵ");
}%>
</title></head>
<body><font color="#000000"><b>
<%
String hw_cashs,basket_count,sql,hw_name;
int hw_cash,jiage,count,totalcash=0;
if(user_name==null) 
{
    out.print( "1.����δ��¼!���¼���ٶ�����վ�ֻ�!");
    out.print("<br>2.��һ������վ������ע���Ա����ѣ�!");
	%>
	<a href=# onClick="javascript:window.close();">�رմ���</a>
	<%
}
else
{//having  login check
    int hw_id;
	String hw_ids=request.getParameter("hw_id");
     if(hw_ids==null)
        {
		 out.print("û�д˻���");
        }
	   else
	  {//hw_id exists or not--------------------------------------------------------------
         
		 hw_ids.trim();
		 ResultSet rs;
		  int daili;
		  hw_id=Cint(hw_ids);
         sql="select * from hw where hw_id="+hw_id;
         rs=mdb.executeQuery(sql);
		 if(rs.next())
		  {   
		  //result showing begin ------------------------------------------
		    hw_cash=rs.getInt("hw_cash");
		    daili=rs.getInt("daili");
		    hw_name=rs.getString("hw_name");
    %>
<br>
<table border="0" width="400" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="center" bgcolor="#989DA5"><font color="#000000"><b>
    <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td></tr>
  <tr> 
    <td height="18" align="center" bgcolor="#989DA5">��ѡ������Ʒ��Ϣ</td></tr><tr> 
    <td height="16"> <form method="POST" action="buy.jsp?action=buy&hw_id=<%=hw_id%>&hw_name=<%=hw_name%>&hw_cash=<%
	if(user_type.equals("��Ա"))
	{
	out.print(hw_cash);
	}else
	{out.print(daili);
	}%>">
        <table border="0" width="100%" cellspacing="0" height="34" cellpadding="0">
          <tr bgcolor="#FFFFFF"> 
            <td width="398" bgcolor="#ECECEC">
            <div align="center">
              <center>
              <table width="90%" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111">
                <tr background="img/pics/tile_bg.gif"> 
                  <td width="155" height="25"> <div align="center">��Ʒ����</div></td>
                  <td width="60" height="25"> <div align="center">��Ʒ����</div></td>
                  <td width="60" height="25"> <div align="center">��������</div></td>
                  <td width="80" height="25"> <div align="center">ȷ�Ϲ���</div></td>
                </tr>
                <tr> 
                  <td width="155" height="30"> <div align="center"><%=hw_name%></div></td>
                  <td width="60" height="30"> <div align="center"> 
                      <%if(user_type=="��Ա")
					  {%>
                      <%=hw_cash%> 
                      <%
					  }else
					  {%>
                      <%=daili%> 
                      <%}
					  %>
                      Ԫ</div></td>
                  <td width="60" height="30"> <div align="center"> 
                      <select size="1" name="count">
                        <%for(int i=1;i<=10;i++){
						%>
                        <option><%=i%></option>
                        <%}
						%>
                      </select>
                    </div></td>
                  <td width="80" height="30"> <div align="center"> 
                          <input name=B1 type=image id="B1" 
      src="img/pics/ok.gif" alt=Ͷ�� 
      align=absMiddle width="45" height="20" cache tppabs="">
                        </div></td>
                </tr>
              </table>
              </center>
            </div></tr>
        </table>
      </form></td>
  </tr>
  <tr> 
    <td height="30" valign="top" bgcolor="#ECECEC"><table width="83%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="33%"><a href="buy.jsp"><img src="img/pics/lookbcar.gif" width="100" height="20" border="0"></a></td>
          <td width="33%"><a href="clear.jsp"><img src="img/pics/relbcar.gif" width="100" height="20" border="0"></a></td>
          <td width="33%"><a href="cash.jsp"><img src="img/pics/gobuy.gif" width="100" height="20" border="0"></a></td>
        </tr>
      </table></td>
  </tr>

  <tr> 
    <td align="center">
    <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
  </tr>
  <tr> 
    <td height="18" align="center" bgcolor="#989DA5">����ѡ������Ʒ����</td>
  </tr>
  <!----------------------------things bought------------------------------------>
  <%@ include file="bought.jsp"%>
<!----------------------------things bought end ------------------------------------>

</table>
<%          }//result showing end ------------------------------------------
    rs.close();
	mdb.Close();
       }//hw_id exist check end------------------------------------------------------------
}//login or not check end
%>