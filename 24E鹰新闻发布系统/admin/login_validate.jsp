<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<html>
<body>
<c:if test="${param.userName==null||param.userPassword==null}">
	��ã���ʲô����Ϊ��Ч�͵ģ�
</c:if>
<c:if test="${param.userName!=null&&param.userPassword!=null}">

	<c:set value="${aqu:loginValidate(param.userName,param.userPassword)}" var="login"/>
	<c:set value="${aqu:getUrl()}/admin/admin_index.jsp" var="okUrl"/>
	<c:if test="${login=='ok'}">
		<% session.putValue("admin","yes"); %>
		<c:redirect url="${okUrl}"/>
	</c:if>
	<c:if test="${login=='error'}">
		�û���������������֤������
	</c:if>
</c:if>
</body>
</html>

