<!--#include file="../inc/conn.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="title" content="Charles">
<META content="ԭ����� ��ҳ���� ������� �����ƹ� ����ע�� domain domain domain domain homepage homepage homepage homepage web hosting web hosting web hosting" name=keywords>
<META content=ԭ�����,�ṩ���ʹ�������ע�ᣬ��������������ע�᣻�����������ռ�����ã��Լ����������ҳ�ȷ��� name=description>
<title><%= Web_Name %></title>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<script>
<!--
function windowopen(vhtm){
newwindow=window.open(vhtm,"","fullscreen=1,toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no");
}
//-->
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body>
<!--#include file="../inc/top2.asp" -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="253"><img src="../images/product_03.jpg" width="253" height="598"></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="../images/pp.jpg" width="750" height="83"></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="38"><img src="../images/product_05.jpg" width="38" height="460"></td>
          <td width="642" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
                  <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                        <tbody>
<%
MaxPerPage=8
page=Request("page")
if (page="" or isempty(page)) then page=1
thisUrl="?Big_Class="&request("Big_Class")&"&ID="&request("ID")
Set Rs2=Server.CreateObject("adodb.recordset")
StrSql2="select * from P_Class Where ParentClassID=154 Order by Xu Asc"
Rs2.open StrSql2,conn,1,3
if not Rs2.eof then
num1=Rs2.recordcount
rs2.movefirst
if not isempty(request("page")) then   
pagecount=cint(request("page"))   
else   
pagecount=1   
end if
Rs2.pagesize=MaxPerPage
if pagecount>rs2.pagecount or pagecount<=0 then              
pagecount=1              
end if              
rs2.AbsolutePage=pagecount
end if
i=1
'if not (Rs2.eof or err) then Rs2.move (page-1)*maxPerPage
do while not Rs2.eof
if i mod 4=1 then Response.Write("<tr>")
%>
						  <td align="middle"><table cellspacing="3" cellpadding="0" width="80%" align="center" border="0">
                                <tbody>
                                  <tr>
                                    <td width="2%" height="150"><div align="center">
<TABLE width="104" border=0 cellPadding=0 cellSpacing=0 style="border:2px solid #FFFFFF;">
<TR> 
<TD> 
<a href="#" onClick="windowopen('../photo/product_show.asp?Big_Class=<%= Rs2("ID") %>&Small_Class=<%= Rs2("ID") %>');"><img src="<%= Rs2("pic") %>" onload="javascript:if(this.height>=this.width){this.height=120;}else{this.width=120;}" border="0"  style="border:#7A3854 solid 1px;"/></a></td>
</tr>
</table></td>
                                  </tr>
                                  <tr>
                                    <td width="2%" height="5" align=center><a href="#" onClick="windowopen('../photo/product_show.asp?Big_Class=<%= rs2("ID") %>&Small_Class=<%= rs2("ID") %>');" style="color:#000000;  "><%= leftT(rs2("ClassName"),16) %></a></td>
                                  </tr>
                                </tbody>
                            </table></td>
<%
				Rs2.MoveNext
				if i mod 4=0 then Response.Write("</tr>")
				i=i+1
				if i>maxPerPage then exit do
				Loop
%> 
                        </tbody>
                      </table>
					  						<br>
                  <table width="100%" height="18" border="0" align="center" cellpadding="0" cellspacing="0" id="table7">
                    <tr>
                      <td height="18" align="center" valign="middle">
                        <%
              if request("page")="" then
              Lin_page=1
              else
              Lin_page=cint(request("page"))
              end if
			 if rs2.pagecount>1 then
			    response.Write "��"&pagecount&"ҳ/��"&rs2.pagecount&"ҳ&nbsp;&nbsp;"
			    if pagecount>=10 then
				   response.write"<a href="&thisUrl&"&page="&(((cstr(pagecount)\10)-1)*10)+1&"><<</a>&nbsp;&nbsp;"
			    end if
			    q=(cstr(pagecount)-1)\10
			    if q<0 then
			       q=1
			    end if
			    p=(q*10)+1
			    do while p<((q*10)+11)
			       If p=pagecount Then                        
				      Response.Write p&"&nbsp;&nbsp;"
			       Elseif p<=rs2.pagecount then
				      Response.Write "<a href='"&thisUrl&"&page="&p&"'>"& p &"</a>&nbsp;&nbsp;"
			       End If
			       p=p+1
		        loop
			    A=rs2.pagecount
			    if (A mod 10)=0 then
			        A=rs2.pagecount-1
			    end if
			    if pagecount<(A\10)*10 then
				   response.write"<a href="&thisUrl&"&page="&((((cstr(pagecount)-1)\10)+1)*10)+1&">>></a>"
			    end if
			    if Lin_page<=1 then
			     Response.Write ("�� ҳ " & vbCrLf)        

			     Response.Write ("��һҳ " & vbCrLf)
			    else        
			     Response.Write("<A href="&thisUrl&"&page=1>�� ҳ</A> " & vbCrLf)
			     Response.Write("<A href="&thisUrl&"&page=" & (Lin_page-1) & ">��һҳ</A> " & vbCrLf)
			    end if

			    if Lin_page>=rs2.pagecount then
			     Response.Write ("��һҳ "& vbCrLf)
			     Response.Write ("β ҳ " & vbCrLf)            
			    else
			     Response.Write("<A href="&thisUrl&"&page=" & (Lin_page+1) & ">��һҳ</A> " & vbCrLf)
			     Response.Write("<A href="&thisUrl&"&page=" & rs2.pagecount & ">β ҳ</A> " & vbCrLf)            
			    end if
			 End If%>                      </td>
                    </tr>
                  </table>
<% 
				Rs2.close
				set Rs2=nothing
 %>					  </td>
                    </tr>
                  </table></td>
              </tr>
          </table></td>
          <td><img src="../images/product_07.jpg" width="70" height="460"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="../images/product_08.jpg" width="750" height="55"></td>
        </tr>
      </table></td>
  </tr>
</table>
<!--#include file="../inc/end2.asp" -->
</body>
</html>
 
 
 
 
 
 
 
 
 
 
 






