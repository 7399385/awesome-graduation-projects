<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href=../css.css rel=STYLESHEET type=text/css>
</head>
<script>
  function user(id) { window.open("viewuser.asp?user_id="+id,"","height=400,width=600,left=190,top=0,resizable=yes,scrollbars=yes,status=no,toolbar=no,menubar=no,location=no");} 
</script>
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
if(session.getAttribute("admin_name")==null){
;}else{
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#808080" height="77"> 
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr bgcolor="688cb8"> 
          <td width="7%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">ID</font></div>
          </td>
          <td width="9%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">�û���</font></div>
          </td>
          <td width="14%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">E-mail </font></div>
          </td>
          <td width="11%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">��������</font></div>
          </td>
          <td width="18%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">��ַ</font></div>
          </td>
          <td width="11%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">ע��ʱ��</font></div>
          </td>
          <td width="8%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">����</font></div>
          </td>
          <td width="10%" height="17" bgcolor="#808080"> 
            <div align="center"><font color="#FFFFFF">ɾ��</font></div>
          </td>
          <td width="12%" bgcolor="#808080" height="17"> 
            <div align="center"><font color="#FFFFFF">������VIP</font></div>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF"> 
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

sql="select * from member order by user_id desc";
rs=mdb.executeQuery(sql);
if(!rs.next()){
%>
          <td colspan="9">����û���κ��û�ע��</td>
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

int i=1;
rs.previous();
	while(rs.next()&&i<=PageSize){
		
		i++;
		int user_id=rs.getInt("user_id");
		String user_mail=rs.getString("user_mail");
		String user_name=rs.getString("user_name");
		String user_adds=rs.getString("user_adds");
		String user_postcode=rs.getString("user_postcode");
		Date user_regtime=rs.getDate("user_regtime");
		String user_type=rs.getString("user_type");
%>
        <tr bgcolor="#FFFFFF"> 
          <td width="7%" height="15"><%=user_id%> 
            <div align="center"></div>
          </td>
          <td width="9%" height="15"><%=user_name%> 
            <div align="center"></div>
          </td>
          <td width="14%" height="15"><%=user_mail%> 
            <div align="center"></div>
          </td>
          <td width="11%" height="15"><%=user_postcode%> 
            <div align="center"></div>
          </td>
          <td width="18%" height="15"> 
            <div align="center"><%=user_adds%></div>
          </td>
          <td width="11%" height="15"><%=user_regtime%> </td>
          <td width="8%" height="15"><%=user_type%> </td>
          <td width="10%" height="15"> 
            <div align="center"><a href="viewuser.jsp?user_id=<%=user_id%>&action=deluser">ɾ��</a></div>
          </td>
          <td width="12%" height="15"> 
            <div align="center"><a href="sheng.jsp?user_id=<%=user_id%>&action=up">����</a> 
            </div>
          </td>
        </tr>
        <%}
%>
        <tr bgcolor="#FFFFFF" align="right"> 
          <td colspan="9" height="2"> 
            <p align="left">��<font color=red><%=PageCount%></font>ҳ ��<%=intpage%>ҳ 
              <font color=666666> 
              <%if(intpage-1>0){%>
              <a href="usermanage.jsp?page=<%=intpage-1%>">��һҳ</a> 
              <%}else{%>
              <font color=666666>��һҳ</font> 
              <%}%>
              �� 
              <%if(intpage+1<=PageCount){%>
              <a href="usermanage.jsp?page=<%=intpage+1%>">��һҳ</a> 
              <%}else{%>
              <font color=666666>��һҳ</font> 
              <%}%>
              </font></p>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%
}
mdb.Close();}
%>