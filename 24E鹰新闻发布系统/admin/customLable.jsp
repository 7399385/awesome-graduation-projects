<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<jsp:useBean id="sort" class="com.v246.NoLevelSort" scope="page"/>
<html>
<head>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="/css/Admin_Style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�Զ����ǩ</title>
</head>

<body>
<form name="form1" method="post" action="./addCustom.do" onSubmit="return aquCheckout()">
  �������ǩ���ƣ�<font color="#FF0000"><strong>{$</strong></font> 
  <input name="lableName" type="text" id="lableName">
  <font color="#FF0000"><strong>$}</strong></font> ��ǩ������
  <input name="remark" type="text" id="remark" size="45">
  <br>
  ��ѡ����Ŀ�� 
  <SELECT name=withClass id="withClass">
    <OPTION value=0 
        selected>��(��ָ����Ϊ������Ŀ)</OPTION>
    <c:forEach var="noLevelSort" items="${sort.coll}"> 
    <OPTION value=${noLevelSort.id}>${noLevelSort.title}</OPTION>
    </c:forEach> 
  </SELECT>
  <br>
  <input name="hotOrNews" type="radio" value="hot" checked>
  �������� 
  <input type="radio" name="hotOrNews" value="news">
  ��������<br>
  ��ʾ������ 
  <input name="barNumber" type="text" id="barNumber" value="10" size="5">
  <br>
  ÿ����ʾ������ 
  <input name="letterNumber" type="text" id="letterNumber" value="0" size="5">
  (<font color="#666666">0��ʾ������</font>)<br>
  <input name="isDate" type="checkbox" id="isDate" value="checkbox">
  �Ƿ���ʾ����ʱ�� �� 
  <input name="isClick" type="checkbox" id="isClick" value="checkbox">
  �Ƿ���ʾ����� <br>
  <label>
  <input name="staticOrDynamic" type="radio" value="staticed" checked>
  ��̬��ʾ
  </label>
  <label> 
  <input type="radio" name="staticOrDynamic" value="dinamic">
  ��̬��ʾ<br>
  <br>
  </label>
  <input type="reset" name="Submit" value="����">
  <input type="submit" name="Submit2" value="�ύ">
</form>
<p>&nbsp; </p>
<script language="JavaScript">
	function aquCheckout()
	{
		if(document.form1.barNumber.value=="")
		{
			alert("��ʾ��������Ϊ��");
			document.form1.barNumber.focus();
			return false;
		}
		if(document.form1.letterNumber.value=="")
		{
			alert("������ÿ����ʾ������");
			document.form1.letterNumber.focus();
			return false;
		}
	}
</script>
</body>
</html>
