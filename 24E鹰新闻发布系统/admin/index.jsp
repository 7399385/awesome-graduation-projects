<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<jsp:useBean id="type" scope="page" class="com.v246.GetTemplateType"/>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="images/Admin_Style.css" rel="stylesheet" type="text/css">
</head>

<body>
***************************************ϵͳ��ǩ*****************************<br>
{$nonceLocation$}---------��ǰλ��<br>
{$title$}---------���¼�̱��⣺<br>
{$titleIntact$}---------���µ���������<br>
{$subheading$}---------���µĸ� �� ��<br>
{$author$}---------��������<br>
{$copyFrom$}---------������Դ<br>
{$intro$}---------���¼��<br>
{$content$}---------��������<br>
{$updateTime$}---------���µ�¼��ʱ��<br>
{$navigation$}--------��Ŀ������<br>
{$click$}------------���µĵ���� 
<p><br>
  ************************************�Զ����ǩ*****************************<br>
  ��ϵͳ��̨�㻹���Ը����Լ�����Ҫ�����Ʊ�ǩ��<br>
</p>
<p>��������������ͼ����֤��������֣�ǰ�����������ҳ����������<br>
  �������ҳ��ģ�壬���֮����Դ������Ϊ��ҳģ�壡��������ļ��ϴ�</p>
<p><img src="/images/001.JPG" width="810" height="456"><br>
</p>
<p>�������ҳģ�����õ����Զ����ǩ����Ȼ�ˣ���������ں�̨����Ŀ��Ӻã�Ȼ��������Զ����ǩ</p>
<p><img src="/images/002.JPG" width="700" height="248"></p>
</body>
</html>
