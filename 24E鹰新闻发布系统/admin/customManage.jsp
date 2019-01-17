<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu"%>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<html>
<head>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="/css/Admin_Style.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2800.1522" name=GENERATOR></HEAD>
<title>�ޱ����ĵ�</title>
</head>

<body>
<BR>
<table class=border cellspacing=1 cellpadding=0 width="100%" align=center 
border=0>
  <tbody>
    <tr class=title height=22> 
      <td align=middle width=29><strong>ID</strong></td>
      <td width="63" align=middle><strong>��ǩ����</strong></td>
      <td align=middle width=63><strong>������Ŀ</strong></td>
      <td align=middle width=68><strong>��̬/��̬</strong></td>
      <td align=middle width=67><strong>����/����</strong></td>
      <td align=middle width=59><strong>��ʾ����</strong></td>
      <td align=middle width=54><strong>ÿ������</strong></td>
      <td align=middle width=63><strong>����ѡ��</strong></td>
      <td align=middle width=324><strong>��ע˵��</strong></td>
    </tr>
  ${aqu:initMDDCustom()} <c:forEach begin="0" end="${aqu:getCustomCount()}"> <c:if test="${aqu:customNext()}"> 
  <tr class=tdbg onMouseOver="this.style.backgroundColor='#BFDFFF'" 
  onMouseOut="this.style.backgroundColor=''"> 
    <td align=middle width=29><c:out value="${aqu:getCustomInt('id')}"/></td>
    <td><b><c:out value="${aqu:getCustomString('LableName')}"/></b></td>
    	<c:if test="${aqu:getCustomInt('WithClass')!=0}">
			<td align=middle width=63><c:set value="class where id=${aqu:getCustomInt('WithClass')}" var="classId" /><c:out value="${aqu:getParentName(classId)}"/></td>
		</c:if>
    	<c:if test="${aqu:getCustomInt('WithClass')==0}">
			<td align=middle width=63>������Ŀ</td>
		</c:if>
    <td align=left width=68><c:set value="${aqu:getCustomBoolean('staticed')}" var="staticed"/><c:if test="${staticed=='1'}">��̬</c:if><c:if test="${staticed!='1'}">��̬</c:if></td>
    <td align=left width=67><c:set value="${aqu:getCustomBoolean('IsHot')}" var="isHot"/><c:if test="${isHot=='1'}">����</c:if><c:if test="${isHot!='1'}">����</c:if></td>
    <td align=left width=59><c:out value="${aqu:getCustomInt('BarNumber')}"/></td>
    <td align=left width=54><c:out value="${aqu:getCustomInt('letterNumber')}"/></td>
    <td align=left width=63><a href="MDDCustom.jsp?action=modify&id=${aqu:getCustomInt('Id')}">�޸�</a> <a href="MDDCustom.jsp?action=del&id=${aqu:getCustomInt('Id')}">ɾ��</a></td>
    <td align=left width=324><c:out value="${aqu:getCustomString('remark')}"/></td>
  </tr>
  </c:if> </c:forEach> 
  ${aqu:customClose()}
</table>
</body>
</html>
