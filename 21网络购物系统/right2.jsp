<!-------------------------right begin------------------------------------->
<table width="560" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom: 6">
  <!--DWLayoutTable-->
  <tr> 
    <td width="560" height="328" valign="top" bgcolor="#FFFFFF"> 
      <table width="560" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        <!--DWLayoutTable-->
        <tr> 
          <td> <p align="center"> <a target="_blank" href="http://www.freedown.net"> 
              <img src="img/banner.gif" width="575" height="118" border="0"></a></td>
          <td width="1"></td>
        </tr>
        <tr> 
          <td width=478 height="2" style="border-bottom:#cccccc 1px solid" bgcolor="f7f7f7"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">��</td>
                <td height="25" valign="middle"> <b><%=Nsort_name%></b>�ͺ��б� | 
                  <%
  		sql="select *  from Nsort where sort_id="+sort_id+" and Nsort_id<>"+nsort_id;
        rs=mdb.executeQuery(sql);
		if(rs.next())
		{
		%>
                  <font color="#0000FF">���С��</font>|-- 
                  <%
		rs.previous();
		while(rs.next())
		{	
		%>
                  |<a href="nsort.jsp?sort_id=<%=sort_id%>&nsort_id=<%=rs.getInt("Nsort_id")%>"><%=rs.getString("Nsort_name")%></a> 
                  <%
         }
		}
        rs.close();
      %>
                </td>
              </tr>
            </table></td>
          <td></td>
        </tr>
        <tr> 
          <td width="100%"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td valign="top"> <div align="center"> </div>
                  <table width="99%" border="0"cellspacing="0" cellpadding="0" align="center">
                    <tr> 
                      <td valign="top"> <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                          <%
int PageSize =10; //����ÿ����ҳ��ʾ������¼
int ShowPage = 1; //��������ʾ��ҳ��
int RowCount = 0; //ResultSet�ļ�¼��Ŀ
int PageCount = 0; //ResultSet��ҳ�����ҳ��
int duoyu=0;
sql="select * from hw where sort_id="+sort_id+" and Nsort_id="+nsort_id;
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
   }
   else if(ShowPage <= 0)
   { //��ָ��ҳ��С��0, ��������ʾ��һҳ�ļ�¼
     ShowPage = 1;
   }
}
rs.absolute((ShowPage - 1) * PageSize + 1); 
//��������ʾҳ�ĵ�һ�ʼ�¼λ��
%>
                          <!----------------------one showing unit------------------------------->
                          <%
//����Forѭ�����PageSize�������һҳ�еļ�¼
int i=1,hw_id,daili,pifa,hw_cash,linshi;
String hw_pic,hw_name,hw_content;
  rs.previous();
  while(rs.next()&i<= PageSize)
  {
    i++;
   hw_id=rs.getInt("hw_id");
   hw_pic=rs.getString("hw_pic");
   hw_name=rs.getString("hw_name");
   hw_content=rs.getString("hw_content");
   hw_cash=rs.getInt("hw_cash");
   daili=rs.getInt("daili");
   pifa=rs.getInt("pifa");
%>
                          <tr> 
                            <td valign="top"> <table width="100%" border="0" align="center"cellspacing="0">
                                <tr> 
                                  <td width="25%" rowspan="5" bgcolor="#FFFFFF" align="left"><a href="views.jsp?hw_id=<%=hw_id%>"><img border="0" src="<%=hw_pic%>" width="120" height="85"></a> 
                                    <div align="right"></div>
                                    <div align="right"></div>
                                    <div align="right"></div></td>
                                  <td height="25" bgcolor="#FFFFFF" width="75%">��</td>
                                </tr>
                                <tr> 
                                  <td height="28" bgcolor="#FFFFFF" width="75%"> 
                                    <a href="views.jsp?hw_id=<%=hw_id%>"><font color="#006699"><u><%=hw_name%></u></font></a></td>
                                </tr>
                                <tr> 
                                  <td height="28" style="line-height:20px" bgcolor="#FFFFFF" width="75%"><%=hw_content%></td>
                                </tr>
                                <tr> 
                                  <td height="28" bgcolor="#FFFFFF" width="75%">�г��۸�<s><%=pifa%></s>Ԫ����վ��Ա�ۣ�<%=hw_cash%>Ԫ��VIP�ۣ���<%=daili%>Ԫ<br>
                                    <a href='javascript:openbag(<%=hw_id%>)'>����<img src="img/order.gif" width="21" height="15" border="0" align="middle"></a></td>
                                </tr>
                                <tr> 
                                  <td height="25" bgcolor="#FFFFFF" width="75%">��</td>
                                </tr>
                              </table>
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
								 <td background="http://www.9channel.com/new2/111.gif" height="1"></td>
                                </tr>
                              </table></td>
                          </tr>
                          <%
//�����if�ж�������ڷ�ֹ������һҳ��¼ʱ, 
//����¼ָ���������һ�ʼ�¼֮��
 //����forѭ��
}
%>
                          <!-----------------------shonwing unit end----------------------------------------------->
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
          <td></td>
        </tr>
        <tr> 
          <td width="100%" height="20"> <div align="center"></div></td>
          <td></td>
        </tr>
        <tr> 
          <td width=478 height="23"> <p align="right">��<%=ShowPage%>ҳ/��<%=PageCount%>ҳ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <%linshi=ShowPage-1;if(linshi>0){%>
              <a href="nsort.jsp?sort_id=<%=sort_id%>&ToPage=<%=linshi%>&nsort_id=<%=nsort_id%>">��һҳ</a> 
              <%
						  }else
						  {%>
              ��һҳ 
              <%}%>
              �� 
              <%
						  linshi=ShowPage+1;
						  if(linshi<=PageCount){%>
              <a href="nsort.jsp?sort_id=<%=sort_id%>&ToPage=<%=linshi%>&nsort_id=<%=nsort_id%>">��һҳ</a> 
              <%
						  }else
						  {%>
              ��һҳ 
              <%}%></font>
              </p></td>
          <td></td>
        </tr>
      </table></td>
  </tr>
</table>
	  <!-------------------------right end------------------------------------->
	  <%
	  }//�ҵ���Ӧ��С��Ĳ�Ʒ
	  
	  %>