<%@ page contentType="text/html;charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="mdb" class="ckstudio.db.mysqlconn" scope="page"/>
<%
if(session.getAttribute("user_name")==null){%><br>1.����δ��¼!���¼���ٶ�����վ��Ʒ!<br>2.��һ������վ������ע���Ա����ѣ�!<br><br>
<%}else{
%>
<link href="css.css" rel="stylesheet" type="text/css">
<script>
  function openbag(id) { window.open("submore.jsp?sub_id="+id,"","height=400,width=600,left=190,top=0,resizable=yes,scrollbars=yes,status=no,toolbar=no,menubar=no,location=no");} 
</script><head>
<title>�����б�</title>
<link href=css.css rel=STYLESHEET type=text/css>
</head>
<table border="0" width="100%" cellspacing="0" style="border-collapse: collapse" cellpadding="0">
      <tr>
        <td width="100%" colspan="4">
        <img border="0" src="img/promo_list_top.gif" width="100%" height="4"></td>
      </tr>
      <tr>
        <td width="100%" colspan="4" bgcolor="#989DA5" height="25" align="center">
        <b><font color="#FF0000">δ������ </font>&nbsp;<a href="submitsub.jsp"><font color="#FFFFFF">����鿴�Ѵ�����</font></a></b></td>
      </tr>
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
<%String mypage;
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

String sql;
sql="select * from sub where user_name='"+session.getValue("user_name")+"' and sub_check='false'";
ResultSet rs;
rs=mdb.executeQuery(sql);
if(!rs.next())
    out.print("����û���κζ���");
else{
	int PageSize =10; //����ÿ����ҳ��ʾ������¼
int ShowPage = 1; //��������ʾ��ҳ��
int RowCount = 0; //ResultSet�ļ�¼��Ŀ
int PageCount = 0; //ResultSet��ҳ�����ҳ��
int duoyu=0;

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

rs.absolute((ShowPage - 1) * PageSize + 1); 
//��������ʾҳ�ĵ�һ�ʼ�¼λ��
/**
    rs.pagesize=10
    totalrec=rs.recordcount
    totalpage=rs.pagecount
    if page>totalpage then page=totalpage
    rs.absolutepage=page
    rs.cachesize=rs.pagesize
    i=0
    dim sub_id(),user_name(),sub_number(),sub_adds(),sub_date()
    do while not rs.eof and (i<rs.pagesize)
        i=i+1
        redim preserve sub_id(i),user_name(i),sub_number(i),sub_adds(i),sub_date(i)
        sub_id(i)=rs("sub_id")
        user_name(i)=rs("user_name")
        sub_number(i)=rs("sub_number")
        sub_adds(i)=rs("sub_adds")
        sub_date(i)=rs("sub_date")
        rs.movenext
    loop
    rs.close
	**/
    %>
    

      <tr>
        <td width="100%" colspan="4" bgcolor="#ECECEC" height="20">��<font color=red><%=PageCount%></font>ҳ ��<%=intpage%>ҳ         
                      <font color=666666><%if(intpage-1>0){%><a href="subpass.jsp?page=<%=intpage-1%>">��һҳ</a><%}else{%>��һҳ<%}%><%if (intpage+1<=PageCount){%><a href="subpass.jsp?page=<%=intpage+1%>">��һҳ</a><%}else{%>��һҳ</font><%}
%></td>
      </tr>
      <tr>
        <td width="25%" bgcolor="#ECECEC" height="20">������</td>
        <td width="25%" bgcolor="#ECECEC" height="20">������</td>
        <td width="25%" bgcolor="#ECECEC" height="20">��ַ</td>
        <td width="25%" bgcolor="#ECECEC" height="20">����</td>
      </tr>
    <%int i=1;
rs.previous();
	while(rs.next()&&i<=PageSize){
		i++;
		int sub_id=rs.getInt("sub_id");
		String sub_number=rs.getString("sub_number");
		String user_name=rs.getString("user_name");
		String sub_adds=rs.getString("sub_adds");
		Date sub_date=rs.getDate("sub_date");
		%>
      <tr>
        <td width="25%" bgcolor="#ECECEC" height="20"><a href='javascript:openbag(<%=sub_id%>)'><%=sub_number%></a>��</td>
        <td width="25%" bgcolor="#ECECEC" height="20"><%=user_name%>��</td>
        <td width="25%" bgcolor="#ECECEC" height="20"><%=sub_adds%>��</td>
        <td width="25%" bgcolor="#ECECEC" height="20"><%=sub_date%>��</td>
      </tr>
      <%
			}%>
      <tr>
        <td width="100%" colspan="4" bgcolor="#ECECEC" height="20">��<font color=red><%=PageCount%></font>ҳ ��<%=intpage%>ҳ         
                      <font color=666666><%if(intpage-1>0){%><a href="subpass.jsp?page=<%=intpage-1%>">��һҳ</a><%}else{%>��һҳ<%}%>��<%if (intpage+1<=PageCount){%><a href="subpass.jsp?page=<%=intpage+1%>">��һҳ</a><%}else{%>��һҳ</font><%
			}%></td>
      </tr>
    </table>
<%}
	}
	mdb.Close();%>