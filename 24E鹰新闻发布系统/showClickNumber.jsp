<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/aqu" prefix="aqu" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${param.id==null}">
	<b>��ӭʹ��Eӥ���¹���ϵͳ����ַ��<a href='http://www.v246.com'>http://www.v246.com</a></b>
</c:if>
<c:if test="${param.id!=null}">
	document.write("${aqu:getClickNumber(param.id)}");
</c:if>
