<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<html>
<body>
<c:choose>
	<c:when test="${param.id==null}">
		����˭�����ʲô���ٲƻ��ǽ�ɫ���������ɫ���գ�
	</c:when>
	<c:when test="${param.id==1}">
		�ñ�ǩ�Ծ�����!
	</c:when>
	<c:when test="${param.id==10}">
		����Ŀ�Ծ�����!
	</c:when>
	<c:when test="${param.id==11}">
		����ĿĿ¼�Ծ�����!
	</c:when>
</c:choose>
</body>
</html>