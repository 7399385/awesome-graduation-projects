<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="top.jsp"%>
<link href="css.css" rel="stylesheet" type="text/css">
        <div align="center">
          <center>
        <table border="0" width="600" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
          <tr> 
            <td width="380" height="25"> 
              <%
			  String errmsg="";
			  String user_name="";
			  String sub_number="";
			  boolean founderr=false;
    if(request.getParameter("user_name").equals("")){
        founderr=true;
        errmsg=errmsg+"<br>"+"<li>ʹ��Ͷ�߹���Ҫ�ṩ�û��˺�";
		}
    else
        user_name=request.getParameter("user_name");
    
    if(request.getParameter("sub_number").equals("")){
        founderr=true;
        errmsg=errmsg+"<br>"+"<li>ʹ��Ͷ�߹���Ҫ�ṩ������";
	}
    else
        sub_number=request.getParameter("sub_number");
    
    if(founderr==false){
        sql="select * from sub where sub_number='"+sub_number+"' and user_name='"+user_name+"'";
		rs=mdb.executeQuery(sql);
        if(!rs.next()){
            founderr=true;
            errmsg=errmsg+"<br>"+"<li>�û�û�д˶�����Ϣ";
		}
        else{
            sql="select * from ts where sub_number='"+sub_number+"'";
			rs=mdb.executeQuery(sql);
            if(!rs.next()){
				sql="insert into ts(user_name,sub_number,ts_date) values('"+user_name+"','"+sub_number+"',now())";
				mdb.executeInsert(sql);
            }
				else{
                founderr=true;
                errmsg=errmsg+"<BR>"+"<li>�벻Ҫ�ظ��ύͶ����Ϣ!";
				}
		}
	}
     %>
              <div align="center"><font color="#FFFFFF"><b> 
                <%if(founderr==true)
            out.print("��ȷ�����Ͷ����Ϣ");
        else
            out.print("������Ͷ����Ϣ�Ѿ�ȷ�ϣ�");
        %>
                </b></font></div></td>
          </tr>
          <tr> 
            <td width="100%" height="25">
            <%
        if(founderr==true)
            out.print(errmsg);
        else{%>����Ͷ�߶���Ϊ:<font color=red><%=sub_number%></font><br>���ǻᾡ��Ĵ������һ������Ĵ�</td>
		<%}%>
          </tr>
        </table>
          </center>
</div>
<%@ include file="copy.jsp"%>