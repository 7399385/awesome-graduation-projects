<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
���Ժ�����������վ��ҳ.....
<c:set value="${aqu:writeIndex()}" var="check"/>
<c:if test="${check=='ok'}">
	<br>������վ��ҳ�ɹ�!
</c:if>
<c:if test="${check=='error'}">
	<br>��������վ��ҳ��ʱ�������������Ժ�����!
</c:if>
