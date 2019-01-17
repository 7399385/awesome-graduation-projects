<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu" %>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<jsp:useBean id="sort" class="com.v246.NoLevelSort" scope="page"/>
<html>
<head>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="/css/Admin_Style.css" type=text/css rel=stylesheet>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�Զ����ǩ</title>
</head>
<c:choose>
	<c:when test="${param.id==null||param.action==null}">
		����˭��
	</c:when>
	<c:when test="${param.action=='del'}">
		${aqu:initMDDCustom()}
		${aqu:deleteCustom(param.id)}
		${aqu:customClose()}
		<c:set value="customManage.jsp" var="url"/>
		<c:redirect url="${url}"/>
		ɾ���ɹ�
	</c:when>
	<c:when test="${param.action=='modify'}">
	${aqu:modifyCustom(param.id)}
	<c:if test="${aqu:customNext()}">
<body>
<form name="form1" method="post" action="./addCustom.do" onSubmit="return aquCheckout()">
  �������ǩ���ƣ�<font color="#FF0000"><strong>{$</strong></font> 
  <c:set value="${aqu:getCustomString('LableName')}" var="customName"/>
  <input name="lableName" type="text" id="lableName" value="${aqu:subLable(customName)}">
  <font color="#FF0000"><strong>$}</strong></font> ��ǩ������
  <input name="remark" type="text" id="remark" size="45" value="${aqu:getCustomString('remark')}">
  <br>
  ��ѡ����Ŀ�� 
  <SELECT name=withClass id="withClass">
  <c:set value="${aqu:getCustomInt('WithClass')}" var="withClassId"/>
  	<c:if test="${withClassId==0}">
    <OPTION value=0 selected>��(��ָ����Ϊ������Ŀ)</OPTION>
	</c:if>
	<c:if test="${withClassId!=0}">
    <OPTION value=0>��(��ָ����Ϊ������Ŀ)</OPTION>
	</c:if>
    <c:forEach var="noLevelSort" items="${sort.coll}">
		<c:set value="${noLevelSort.id}" var="classId"/>
		<c:if test="${withClassId!=classId}">
		<OPTION value=${noLevelSort.id}>${noLevelSort.title}</OPTION>
		</c:if>
		<c:if test="${withClassId==classId}">
		<OPTION value=${noLevelSort.id} selected>${noLevelSort.title}</OPTION>
		</c:if>
    </c:forEach> 
  </SELECT>
  <br>
  <c:if test="${aqu:getCustomBoolean('IsHot')=='1'}">
  <input name="hotOrNews" type="radio" value="hot" checked>
  </c:if>
  <c:if test="${aqu:getCustomBoolean('IsHot')!='1'}">
  <input name="hotOrNews" type="radio" value="hot">
  </c:if>
  �������� 
  <c:if test="${aqu:getCustomBoolean('IsNew')=='1'}">
  <input type="radio" name="hotOrNews" value="news" checked>
  </c:if>
  <c:if test="${aqu:getCustomBoolean('IsNew')!='1'}">
  <input type="radio" name="hotOrNews" value="news">
  </c:if>
  ��������<br>
  ��ʾ������ 
  <input name="barNumber" type="text" id="barNumber" value="${aqu:getCustomInt('BarNumber')}" size="5" >
  <br>
  ÿ����ʾ������ 
  <input name="letterNumber" type="text" id="letterNumber" value="${aqu:getCustomInt('LetterNumber')}" size="5">
  (<font color="#666666">0��ʾ������</font>)<br>
  <input name="isDate" type="checkbox" id="isDate" value="checkbox">
  �Ƿ���ʾ����ʱ�� �� 
  <input name="isClick" type="checkbox" id="isClick" value="checkbox">
  �Ƿ���ʾ����� <br>
  <label>
  <c:if test="${aqu:getCustomBoolean('staticed')=='1'}">
  <input name="staticOrDynamic" type="radio" value="staticed" checked>
  </c:if>
  <c:if test="${aqu:getCustomBoolean('staticed')!='1'}">
  <input name="staticOrDynamic" type="radio" value="staticed">
  </c:if>
  ��̬��ʾ
  </label>
  <label> <c:if test="${aqu:getCustomBoolean('dynamic')=='1'}"> 
  <input type="radio" name="staticOrDynamic" value="dinamic" checked>
  </c:if> <c:if test="${aqu:getCustomBoolean('dynamic')!='1'}"> 
  <input type="radio" name="staticOrDynamic" value="dinamic">
  </c:if> ��̬��ʾ<br>
  <input type="hidden" name="modify" value="modify">
  <input type="hidden" name="id" value="${param.id}">
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
		</c:if>
	</c:when>
</c:choose>
</html>
