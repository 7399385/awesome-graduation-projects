<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*,java.util.Date" errorPage="" %>
<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")!=null){
//--------------------------------------logged------------------------------------------------------------------
%>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href=../css.css rel=STYLESHEET type=text/css>
</head>

<%
String action=request.getParameter("action");
if(action!=null)
{   action=action.trim();
   if(action.equals("del"))
   {int n=0;
    sql="delete * from hw where hw_id="+Cint(request.getParameter("hw_id"));
    mdb.executeDelete(sql);
    out.print("����ɾ���ɹ�");
    out.print("<br>");
    out.print ("<a href=delhw.jsp>����</a>");
	}
}else
{
%>

<div align="center">
  <center>

<table width="550" border="0" cellspacing="0" cellpadding="0" bgcolor="#808080" style="border-collapse: collapse" bordercolor="#111111" >
  <tr>
    <td>
      <table width="100%" border="0" cellspacing="1" cellpadding="0" height="73" align="center">
            <!--DWLayoutTable-->
            <tr> 
              <td width="123" height="20" valign="top" bgcolor="#808080"> 
                <div align="center"><font color="#FFFFFF">��Ʒ����</font></div></td>
              <td width="80" valign="top" bgcolor="#808080"> <div align="center"><font color="#FFFFFF">���� 
                  </font> </div></td>
              <td width="78" valign="top" bgcolor="#808080"> 
                <div align="center"><font color="#FFFFFF">��Ա��</font></div></td>
              <td width="75" valign="top" bgcolor="#808080">
<div align="center"><font color="#FFFFFF">ISBN����</font></div></td>
              <td width="103" valign="top" bgcolor="#808080"> <div align="center"><font color="#FFFFFF">��������</font></div></td>
              <td colspan="3" valign="top" bgcolor="#808080"> <div align="center"><font color="#FFFFFF">����</font></div></td>
            </tr>
            <%
int PageSize =20; //����ÿ����ҳ��ʾ������¼
int ShowPage = 1; //��������ʾ��ҳ��
int RowCount = 0; //ResultSet�ļ�¼��Ŀ
int PageCount = 0; //ResultSet��ҳ�����ҳ��
int duoyu=0;
sql="select * from hw order by hw_id DESC";
rs=mdb.executeQuery(sql);
if(rs.next())
{  
  //����ResultSet(�����)���󣬲�ִ��SQL���
    rs.last(); //��ָ���������һ�ʼ�¼
    RowCount=rs.getRow();
    duoyu=RowCount % PageSize;
    if(duoyu==0)
     {
          PageCount=RowCount/PageSize;
      }
     else{
      PageCount=(RowCount-duoyu)/PageSize;
       PageCount++;
      }
 // PageCount=((RowCount % PageSize) == 0?(RowCount/PageSize) : (RowCount/PageSize)+1);
  //������ʾ��ҳ��
    String ToPage = request.getParameter("ToPage");
    if(ToPage==""){ToPage="1";}
//�ж��Ƿ����ȷȡ��ToPage����, 
//��ȡ�����ʾJSP��ҳӦ��ʾ�ض���ҳ��¼�����
   if(ToPage!=""){
      ShowPage =Cint(ToPage); //ȡ��ָ����ʾ�ķ�ҳҳ��
   //�����if��佫�ж��û������ҳ���Ƿ���ȷ
       if(ShowPage > PageCount)
       { //�ж�ָ��ҳ���Ƿ������ҳ��, ����������ʾ���һҳ
           ShowPage = PageCount;
       } else if(ShowPage <= 0)
       { //��ָ��ҳ��С��0, ��������ʾ��һҳ�ļ�¼
              ShowPage = 1;
        }
    }
rs.absolute((ShowPage - 1) * PageSize+1); 
//��������ʾҳ�ĵ�һ�ʼ�¼λ��
%>
            <!----------------------one showing unit------------------------------->
            <%
 //����Forѭ�����PageSize�������һҳ�еļ�¼
   int i=1,linshi=1;
  linshi=ShowPage;
  rs.previous();
   String hw_sn,isbn;
   int hw_id;
  while(rs.next()&i<= PageSize)
 {
     i++;
     hw_id=rs.getInt("hw_id"); 
%>
            <tr bgcolor="#FFFFFF"> 
              <td height="18" valign="middle"><%=rs.getString("hw_name")%> </td>
              <td valign="middle"> 
                <div align="center"><%=rs.getString("hw_sn")%></div></td>
              <td valign="middle"> 
                <div align="center"><%=rs.getInt("hw_cash")%></div></td>
              <td valign="middle"> 
                <div align="center"><%=rs.getString("isbn")%></div></td>
              <td valign="middle"> 
                <div align="center"><%=rs.getDate("hw_date")%></div></td>
              <td width="42" valign="middle"> 
                <div align="center"> <a href="delhw.jsp?hw_id=<%=hw_id%>&action=del">ɾ��</a></div></td>
              <td colspan="2" valign="middle"> 
                <div align="center"><a href="changehw.jsp?hw_id=<%=hw_id%>&sort_id=<%=rs.getInt("sort_id")%>&Nsort_id=<%=rs.getInt("Nsort_id")%>">�޸�</a> 
                </div></td>
            </tr>
            <%
//�����if�ж�������ڷ�ֹ������һҳ��¼ʱ, 
//����¼ָ���������һ�ʼ�¼֮��
 //����forѭ��
   }
 %>
            <!-----------------------shonwing unit end----------------------------------------------->
            <tr> 
              <td height="20" colspan="7" valign="middle"> 
                <div align="center">��<%=ShowPage%>ҳ/��<%=PageCount%>ҳ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <%
                 linshi=ShowPage-1;
				 if(linshi>0)
				 {%>
                  <a href="delhw.jsp?ToPage=<%=linshi%>">��һҳ</a> 
                  <%
				 }else
				{%>
                  ��һҳ 
                  <%}		  linshi=ShowPage+1;
				if(linshi<=PageCount)
				{%>
                  <a href="delhw.jsp?ToPage=<%=linshi%>">��һҳ</a> 
                  <%
				}else
						  {%>
                  ��һҳ 
                  <%}%></font>
                  </div></td>
              <td width="11">&nbsp;</td>
            </tr>
            <tr> 
              <td height="2"></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td width="29"></td>
              <td></td>
            </tr>
            <%
			rs.close();
}
else
{//���ݿ���������
     out.print("�Բ���,û�в�Ʒ!");
}
%>
          </table>
    </td>
  </tr>
</table>
  </center>
</div>

<%
}
mdb.Close();
%>

<%}
else{
//--------------------------------------not logged------------------------------------------------------------------

response.sendRedirect("index.jsp");
}%>