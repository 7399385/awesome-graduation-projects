<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<jsp:useBean id="sort" class="com.v246.NoLevelSort" scope="page"/>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>�������Ĺ���----��Ŀ����</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="/css/Admin_Style.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2800.1522" name=GENERATOR></HEAD>
<BODY leftMargin=2 topMargin=0 marginheight="0" marginwidth="0">
<TABLE class=border cellSpacing=1 cellPadding=2 width="100%" align=center 
border=0>
  <TBODY>
  <TR class=topbg>
    <TD align=middle colSpan=2 height=22><STRONG>�������Ĺ���----��Ŀ����</STRONG></TD></TR>
  <TR class=tdbg>
    <TD width=70 height=30><STRONG>��������</STRONG></TD>
      <TD height=30><A 
      href="addTemplate.jsp">���������Ŀ</A>&nbsp;|</TD>
    </TR></TBODY></TABLE><BR>
<TABLE class=border cellSpacing=1 cellPadding=0 width="100%" align=center 
border=0>
  <TBODY>
    <TR class=title height=22> 
      <TD align=middle width=30><STRONG>ID</STRONG></TD>
      <TD align=middle><STRONG>��Ŀ����</STRONG></TD>
      <TD align=middle width=60><STRONG>��ĿȨ��</STRONG></TD>
      <TD align=middle width=100><STRONG>��Ŀ����</STRONG></TD>
      <TD align=middle width=380><STRONG>����ѡ��</STRONG></TD>
    </TR>
	<c:forEach var="noLevelSort" items="${sort.coll}">
    <TR class=tdbg onmouseover="this.style.backgroundColor='#BFDFFF'" 
  onmouseout="this.style.backgroundColor=''"> 
      <TD align=middle width=30><c:out value="${noLevelSort.id}"/></TD>
      <TD><B><c:out value="${noLevelSort.title}"/></B></TD>
      <TD align=middle width=60>&nbsp;</TD>
      <TD align=left width=100>&nbsp;</TD>
      <TD align=left width=380>&nbsp;<A onClick="return ConfirmDel2()"href="MDDClass.jsp?id=${noLevelSort.id}">ɾ��</A></TD>
    </TR>
	</c:forEach>
  </TBODY>
</TABLE>
<TABLE width="100%">
  <TBODY>
  <TR>
    <FORM name=form1 action=/admin/Admin_Class.asp method=post>
    <TD align=middle><INPUT id=Action type=hidden value=CreateJS 
      name=Action><INPUT id=ChannelID type=hidden value=1 name=ChannelID><INPUT style="CURSOR: hand" type=submit value=ˢ����ĿJS name=submit></TD></FORM></TR></TBODY></TABLE>
<SCRIPT language=JavaScript type=text/JavaScript>
function ConfirmDel1(){
   alert('����Ŀ�»�������Ŀ��������ɾ����������Ŀ�����ɾ������Ŀ��');
   return false;}
function ConfirmDel2(){
   if(confirm('ɾ����Ŀ������ɾ������Ŀ�е���������Ŀ�����£����Ҳ��ָܻ���ȷ��Ҫɾ������Ŀ��'))
     return true;
   else
     return false;}
function ConfirmDel3(){
   if(confirm('�����Ŀ������Ŀ����������Ŀ�����������·������վ�У�ȷ��Ҫ��մ���Ŀ��'))
     return true;
   else
     return false;}
</SCRIPT>
<BR>
<TABLE width="100%">
  <TBODY>
  <TR>
    <TD colSpan=5><B>��Ŀ�����и���ĺ��壺</B></TD></TR>
  <TR>
    <TD>ԭ----��ԭ���ڴ�</TD>
    <TD>��----���´��ڴ�</TD>
    <TD>��----����ҳ�����б���ʾ��ֻ��һ����Ŀ��Ч</TD></TR>
  <TR>
    <TD>��----�ڸ���Ŀ�����б���ʾ</TD>
    <TD>��----������Ŀʱ�������������</TD>
    <TD>��----������Ŀʱ�����������</TD></TR>
  <TR>
    <TD>��----���÷�����/���ع���</TD></TR></TBODY></TABLE><!-- Powered by: PowerEasy 2005 --></BODY></HTML>
