<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<LINK href="/css/Admin_left.css" type=text/css rel=stylesheet>

<!-- saved from url=(0043)http://127.0.0.1/admin/Admin_Index_Left.asp -->
<HTML><HEAD><TITLE>�������˵�</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">

<META content="MSHTML 6.00.2800.1505" name=GENERATOR></HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center border=0>
  <TBODY>
  <TR>
      <TD vAlign=top height=50><IMG src="/images/title.gif"> </TD>
    </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <!--DWLayoutTable-->
  <TBODY>
    <TR> 
      <TD width="10" height="182">&nbsp;</TD>
      <TD width="142" valign="top"> <TABLE cellSpacing=0 cellPadding=0 width=132 align=center>
          <!--DWLayoutTable-->
          <TBODY>
            <TR> 
              <TD width="128" height=20><A 
            href="addArticle.jsp" 
            target=main>�������</A></TD>
            </TR>
            <TR> 
              <TD height=20><a 
            href="articleManage.jsp" 
            target=main>���¹���</a></TD>
            </TR>
            <TR> 
              <TD height=20><a href="addClass.jsp" target="main">�����Ŀ</a> | <a href="classManage.jsp" target="main">����</a></TD>
            </TR>
            <TR> 
              <TD height=20><a href="addTemplate.jsp" target="main">���ģ��</a> | 
                <a href="templateManage.jsp" target="main">����</a> </TD>
            </TR>
            <TR> 
              <TD height=20><a href="customLable.jsp" target="main">����Զ����ǩ</a> 
                | <a href="customManage.jsp" target="main">����</a></TD>
            </TR>
            <TR> 
              <TD height=20><a href="writeNavigationJS.jsp" target="main">���ɵ���JS</a></TD>
            </TR>
            <TR> 
              <TD height=20><a href="writeIndex.jsp" target="main">������ҳ</a></TD>
            </TR>
            <TR> 
              <TD height=29><a href="writeClassIndex.jsp" target="main">������Ŀҳ��ҳ</a></TD>
            </TR>
            <TR> 
              <TD height=16 valign="top"><a href="modifyPassword.jsp" target="main">���Ĺ���Ա����</a></TD>
            </TR>
            <TR>
              <TD height=12 valign="top">=====================</TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
    <TR>
      <TD height="281">&nbsp;</TD>
      <TD>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
</BODY></HTML>
