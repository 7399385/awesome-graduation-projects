<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<%
if(session.getAttribute("admin_name")==null){
	;}else{
%>
<head>
<link href=../css.css rel=STYLESHEET type=text/css>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="Content-Language" content="zh-cn">
</head>
<%!
 boolean IsInt(String NInt)
   {
    try {
	  int n;
      n=Integer.parseInt(NInt);
	  return true;
        }
       catch(NumberFormatException e){
                 return false;
        }
}
%>
<%
String action=request.getParameter("action");
if(action==null)
	action="notdel";
if(action.equals("del")){
	int news_id=Integer.parseInt(request.getParameter("news_id"));
    sql="select * from news where news_id="+news_id+"";
    rs=mdb.executeQuery(sql);
    if(!rs.next())
       response.sendRedirect("delnews.jsp");
    else{
        sql="delete from news where news_id="+news_id+"";
        mdb.executeDelete(sql);
        out.print("����ɾ�����<Br><a href=delnews.jsp>����</a>");
	}
}else{
%>



<table width="500" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td>
      <div align="center">
        <center>
      <table border="1" width="550" cellspacing="0" bordercolor="#C0C0C0" style="border-collapse: collapse" cellpadding="0">
        <%
String mypage;
int intpage=1;
mypage=request.getParameter("page");

if(mypage=="")
intpage=1;

if(!IsInt(mypage))
intpage=1;

if(IsInt(mypage))
intpage=Integer.parseInt(mypage);

if(intpage<1)
intpage=1;

mypage=Integer.toString(intpage);
  
  sql="select * from news order by news_id DESC";
  rs=mdb.executeQuery(sql);
if(!rs.next()){
%>
        <tr bgcolor="#FFFFFF"> 
          <td width="55">���</td>
          <td colspan="3">����</td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
          <td colspan="4">û������</td>
        </tr>
        <%}else{
  int PageSize =20; //����ÿ����ҳ��ʾ������¼
int ShowPage = 1; //��������ʾ��ҳ��
int RowCount = 0; //ResultSet�ļ�¼��Ŀ
int PageCount = 0; //ResultSet��ҳ�����ҳ��
int duoyu=0;
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
//String ToPage = request.getParameter("ToPage");
//if(ToPage==""){ToPage="1";}
//�ж��Ƿ����ȷȡ��ToPage����, 
//��ȡ�����ʾJSP��ҳӦ��ʾ�ض���ҳ��¼�����
//if(ToPage!=""){
   ShowPage=intpage; //ȡ��ָ����ʾ�ķ�ҳҳ��
   //�����if��佫�ж��û������ҳ���Ƿ���ȷ
  if(ShowPage>PageCount)
   { //�ж�ָ��ҳ���Ƿ������ҳ��, ����������ʾ���һҳ
    ShowPage=PageCount;
   }
   else if(ShowPage<=0)
   { //��ָ��ҳ��С��0, ��������ʾ��һҳ�ļ�¼
     ShowPage = 1;
   }
}
rs.absolute((ShowPage - 1) * PageSize + 1); 
  %>
        <tr bgcolor="#6894d8"> 
          <td width="55" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">���</font></div>
          </td>
          <td width="399" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">����</font></div>
          </td>
          <td colspan="2" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">����</font></div>
          </td>
        </tr>
        <%int i=1;
rs.previous();
	while(rs.next()&&i<=PageSize){
		
		i++;
		int news_id=rs.getInt("news_id");
		String news_title=rs.getString("news_title");
		
%>
        <tr bgcolor="#FFFFFF"> 
          <td width="55" height="20"><%=news_id%></td>
          <td width="399" height="20"><%=news_title%></td>
          <td width="43" height="20"> 
            <div align="center"><a href="delnews.jsp?news_id=<%=news_id%>&action=del">ɾ��</a></div>
          </td>
          <td width="40" height="20"> 
            <div align="center"><a href="editnews.jsp?news_id=<%=news_id%>">�޸�</a></div>
          </td>
        </tr>
        <%}%>
      </table>
        </center>
      </div>
    </td>
  </tr>
</table>
<div align="center">��<font color=red><%=PageCount%></font>ҳ ��<%=intpage%>ҳ <font color=666666> 
  <%if(intpage-1>0){%>
  <a href="delnews.jsp?page=<%=intpage-1%>">��һҳ</a> 
  <%}else{%>
  <font color=666666>��һҳ</font> 
  <%}%>
  �� 
  <%if(intpage+1<=PageCount){%>
  <a href="delnews.jsp?page=<%=intpage+1%>">��һҳ</a> 
  <%}else{%>
  <font color=666666>��һҳ</font> 
  <%}%>
  </font><br>
  <%}
}
mdb.Close();
	}
%>
</div>