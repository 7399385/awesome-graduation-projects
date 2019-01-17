<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/aqu" prefix="aqu"%>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<jsp:useBean id="sort" class="com.v246.NoLevelSort" scope="page"/>
<c:if test="${param.pid==null||param.pid=='0'}"> 
<c:set value="Article" var="query"/> 
	${aqu:initArticleManage(query)} 
	<c:out value="Article"/> 
</c:if> 
<c:if test="${param.pid!=null||param.pid!=''}"> 
	<c:set value="Article where ClassId=${param.pid}" var="query"/> 
	<c:out value="${query}"/> 
	${aqu:initArticleManage(query)} 
</c:if> 
<c:if test="${param.page==null||param.page==0}"> 
	<c:set value="1" var="page"/> 
</c:if> 
<c:if test="${param.page!=null||param.page==0}"> 
	${aqu:gotoPage(param.page)}
</c:if> 
<c:if test="${param.page>aqu:getPageCount()}"> 
	<c:set value="${aqu:getPageCount()}" var="page"/> 
</c:if> 
<c:if test="${param.page<=aqu:getPageCount()}"> 
	<c:set value="${param.page}" var="page"/> 
</c:if> 
${aqu:setPageSize('20')} 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0077)http://127.0.0.1/admin/Admin_Article.asp?ChannelID=1&Action=Manage&Passed=All -->
<HTML>
<HEAD>
<TITLE>���¹���</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK 
href="/css/Admin_Style.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2800.1505" name=GENERATOR>
</HEAD>
<BODY leftMargin=2 topMargin=0 marginheight="0" marginwidth="0">
<TABLE class=border cellSpacing=1 cellPadding=2 width="100%" align=center 
border=0>
  <TBODY>
    <TR class=topbg> 
      <TD align=middle colSpan=2 
  height=22><STRONG>�������Ĺ���----</STRONG>���¹�����ҳ</TD>
    </TR>
    <TR class=tdbg> 
      <TD width=70 height=30><STRONG>��������</STRONG></TD>
      <TD>�������</TD>
    </TR>
  <FORM name=form3 
  action=file:///C|/Documents%20and%20Settings/Administrator/My%20Documents/%B6%AF%D2%D7%CD%F8%C2%E7--%BA%F3%CC%A8%B9%DC%C0%ED.files/Admin_Article.asp?ChannelID=1&Action=Manage&ManageType=&ClassID=0&SpecialID=0&Field=&keyword= 
  method=post>
  </FORM></TBODY>
</TABLE>
<SCRIPT language=javascript>
function unselectall(){
    if(document.myform.chkAll.checked){
 document.myform.chkAll.checked = document.myform.chkAll.checked&0;
    }
}
function CheckAll(form){
  for (var i=0;i<form.elements.length;i++){
    var e = form.elements[i];
    if (e.Name != 'chkAll'&&e.disabled==false)
       e.checked = form.chkAll.checked;
    }
  }
function ConfirmDel(){
 if(document.myform.Action.value=='Del'){
     if(confirm('ȷ��Ҫɾ��ѡ�е������𣿱���������ѡ�е������Ƶ�����վ�С���Ҫʱ���ɴӻ���վ�лָ���'))
         return true;
     else
         return false;
 }
 else if(document.myform.Action.value=='MoveToClass'){
     if(document.myform.TargetClassID.value==''){
         alert('���ܽ������ƶ�����������Ŀ����Ŀ���ⲿ��Ŀ�У�');
         return false;
     }
     if(confirm('ȷ��Ҫ��ѡ�е������ƶ���ָ������Ŀ��'))
         return true;
     else
         return false;
 }
 else if(document.myform.Action.value=='ConfirmDel'){
     if(confirm('ȷ��Ҫ����ɾ��ѡ�е������𣿳���ɾ���󽫲��ָܻ���'))
         return true;
     else
         return false;
 }
 else if(document.myform.Action.value=='ClearRecyclebin'){
     if(confirm('ȷ��Ҫ��ջ���վ��һ����ս����ָܻ���'))
         return true;
     else
         return false;
 }
 else if(document.myform.Action.value=='DelFromSpecial'){
     if(confirm('ȷ��Ҫ��ѡ�е����´�������ר����ɾ���𣿲����ɹ������½��������κ�ר�⡣'))
         return true;
     else
         return false;
 }
 else if(document.myform.Action.value=='MoveToSpecial'){
     if(confirm('ȷ��Ҫ��ѡ�е������ƶ���ָ����ר����'))
         return true;
     else
         return false;
 }
}
</SCRIPT>
<BR>
<TABLE class=border cellSpacing=1 cellPadding=2 width="100%" align=center 
border=0>
  <TBODY>
    <TR class=title> 
      <TD height=22><A 
            onclick="return confirm('ȷ��Ҫ����������������ô��');" 
            href="${aqu:getUrl()}/admin/MDDArticle.jsp?action=writeAll&amp;id=0">������������</A>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
    <TR> 
      <TD height=22>�����ڵ�λ�ã�&nbsp;�������Ĺ���&nbsp;&gt;&gt;&nbsp;���¹���&nbsp;&gt;&gt;&nbsp;<c:if test="${query=='Article'}">��������</c:if><c:if test="${page!='all'}"><c:set value="class where Id=${param.pid}" var="queryClassName"/><c:out value="${aqu:getParentName(queryClassName)}"/></c:if></TD>
      <TD align=right width=200 height=22> <SELECT  onchange="javascript:window.location='articleManage.jsp?pid='+this.options[this.selectedIndex].value+'&amp;Action=manage&amp;page=1'" 
      size=1 name=page>
          <OPTION value=0 
        selected>��Ŀ��ת��......</OPTION>
          <c:forEach var="noLevelSort" items="${sort.coll}"> 
          <OPTION value=${noLevelSort.id}>${noLevelSort.title}</OPTION>
          </c:forEach> </SELECT></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
    <TR> 
      <FORM name=myform onsubmit="return ConfirmDel();" action="./articleManage.do"
    method=post>
        <TD> <TABLE class=border cellSpacing=1 cellPadding=0 width="100%" border=0>
            <TBODY>
              <TR class=title height=22> 
                <TD align=middle width=30 height=22><STRONG>ѡ��</STRONG></TD>
                <TD align=middle width=25><STRONG>ID</STRONG></TD>
                <TD align=middle><STRONG>���±���</STRONG></TD>
                <TD align=middle width=60><STRONG>¼��</STRONG></TD>
                <TD align=middle width=40><STRONG>�����</STRONG></TD>
                <TD align=middle width=80><STRONG>��������</STRONG></TD>
                <TD align=middle width=40><STRONG>�����</STRONG></TD>
                <TD align=middle width=180><STRONG>����������</STRONG></TD>
              </TR>
              <c:forEach var="aqu" begin="1" end="20"> <c:if test="${aqu:next()}"> 
              <TR class=tdbg onmouseover="this.style.backgroundColor='#BFDFFF'" 
        onmouseout="this.style.backgroundColor=''"> 
                <TD align=middle width=30><INPUT id=ArticleID onclick=unselectall() 
            type=checkbox value=${aqu:getInt('ArticleId')} name=articleId></TD>
                <TD align=middle width=25><c:out value="${aqu:getInt('ArticleId')}"/></TD>
                <TD><A 
            href="${aqu:getUrl()}/admin/articleManage.jsp?action=manage&amp;pid=${aqu:getInt('ClassId')}&amp;page=${page}">[<c:set value="class where Id=${aqu:getInt('ClassId')}" var="queryParentName"/><c:out value="${aqu:getParentName(queryParentName)}"/>]</A>&nbsp;${aqu:getString('Title')}</TD>
                <TD align=middle width=60>admin</TD>
                <TD align=middle width=40><c:out value="${aqu:getInt('Hits')}"/></TD>
                <TD align=middle 
            width=80>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </TD>
                <TD align=middle width=40><B>��</B> </TD>
                <TD align=left width=180>&nbsp;�޸�&nbsp;<A 
            onclick="return confirm('ȷ��Ҫɾ����������ɾ�����㻹���Դӻ���վ�л�ԭ��');" 
            href="${aqu:getUrl()}/admin/MDDArticle.jsp?action=del&amp;id=${aqu:getInt('ArticleId')}">ɾ��</A>&nbsp;<A 
            onclick="return confirm('ȷ��Ҫ�������ɴ�����ô��');" 
            href="${aqu:getUrl()}/admin/MDDArticle.jsp?action=writeOne&amp;id=${aqu:getInt('ArticleId')}">��������</A>&nbsp;</TD>
              </TR>
              </c:if> </c:forEach> 
            </TBODY>
          </TABLE>
          <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
            <TBODY>
              <TR> 
                <TD width=200 height=30><INPUT id=chkAll onclick=CheckAll(this.form) 
            type=checkbox value=checkbox name=chkAll>
                  ѡ�б�ҳ��ʾ����������</TD>
                <TD><INPUT onclick="document.myform.Action.value='Del'" type=submit value=ɾ��ѡ�������� name=submit1>
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
<INPUT 
            id=Action type=hidden name=Action>
                  <INPUT id=ChannelID type=hidden 
            value=1 name=ChannelID>
                </TD>
              </TR>
            </TBODY>
          </TABLE></TD>
      </FORM>
    </TR>
  </TBODY>
</TABLE>
<TABLE align=center>
  <TBODY>
    <TR> 
      <TD>��${aqu:getRowsCount()}ƪ����&nbsp;&nbsp;<a href='${aqu:getUrl()}/admin/articleManage.jsp?pid=${param.pid}&Action=manage&page=1'>��ҳ</a> 
        <c:if test="${aqu:getPageCount()<=1}">��һҳ&nbsp;��һҳ&nbsp;</c:if><c:if test="${aqu:getPageCount()>1&&page==aqu:getPageCount()}"><a href='${aqu:getUrl()}/admin/articleManage.jsp?pid=${param.pid}&Action=manage&page=${page-1}'>��һҳ&nbsp;</a>��һҳ&nbsp;</c:if><c:if test="${aqu:getPageCount()>1&&page<=1}">��һҳ&nbsp;</c:if><c:if test="${aqu:getPageCount()>1&&page<aqu:getPageCount()&&page!=1}"><a href='${aqu:getUrl()}/admin/articleManage.jsp?pid=${param.pid}&Action=manage&page=${page-1}'>��һҳ&nbsp;</a></c:if><c:if test="${aqu:getPageCount()>1&&page<aqu:getPageCount()}"><a href='${aqu:getUrl()}/admin/articleManage.jsp?pid=${param.pid}&Action=manage&page=${page+1}'>��һҳ&nbsp;</a></c:if><a href='${aqu:getUrl()}/admin/articleManage.jsp?pid=${param.pid}&Action=manage&page=${aqu:getPageCount()}'>βҳ</a>&nbsp;ҳ�Σ�<STRONG><FONT 
      color=red><c:out value="${page}"/></FONT>/<c:out value="${aqu:getPageCount()}"/></STRONG>ҳ 
        &nbsp;<B>20</B>ƪ����/ҳ&nbsp;ת���� 
        <SELECT onchange="javascript:window.location='articleManage.jsp?pid=${param.pid}&amp;Action=manage&amp;page='+this.options[this.selectedIndex].value;" 
      size=1 name=page>
          <c:set value="1" var="jumpCount"/> <c:forEach var="jump" begin="1" end="${aqu:getPageCount()}"> <OPTION value=${jumpCount}
	      <c:if test="${param.page==jumpCount}">
	  selected
	  </c:if> >��${jumpCount}ҳ</OPTION> <c:set value="${jumpCount+1}" var="jumpCount"/> 
          </c:forEach> </SELECT></TD>
    </TR>
  </TBODY>
</TABLE>
<BR>
<TABLE class=border cellSpacing=0 cellPadding=0 width="100%" border=0><TBODY>
  <TR class=tdbg> 
    <TD align=right width=80><STRONG>����������</STRONG></TD>
    <TD> <TABLE cellSpacing=0 cellPadding=0 border=0>
        <FORM name=SearchForm 
        action=file:///C|/Documents%20and%20Settings/Administrator/My%20Documents/%B6%AF%D2%D7%CD%F8%C2%E7--%BA%F3%CC%A8%B9%DC%C0%ED.files/Admin_Article.asp?ChannelID=1&Action=Manage&ManageType= 
        method=get>
          <TBODY>
            <TR> 
              <TD align=middle height=28><SELECT size=1 name=Field>
                  <OPTION 
              value=Title selected>���±���</OPTION>
                  <OPTION 
              value=Content>��������</OPTION>
                  <OPTION 
              value=Author>��������</OPTION>
                  <OPTION 
            value=Inputer>¼����</OPTION>
                </SELECT>
                <SELECT name=ClassID>
                  <OPTION 
              value="" selected>������Ŀ</OPTION>
                  <OPTION 
            value=1>ddd</OPTION>
                </SELECT>
                <INPUT onfocus=this.select(); 
            maxLength=50 value=�ؼ��� name=keyword>
                <INPUT type=submit value=���� name=Submit>
                <INPUT 
            id=ManageType type=hidden name=ManageType>
                <INPUT id=ChannelID 
            type=hidden value=1 
  name=ChannelID></TD>
            </TR>
        </FORM>
        
      </TABLE></TD>
  </TR></TBODY>
</TABLE>
<BR>
<B>˵����</B><BR>
&nbsp;&nbsp;&nbsp;&nbsp;���������еĸ���壺<FONT 
color=blue>��</FONT>----�̶����£�<FONT color=red>��</FONT>----�������£�<FONT 
color=green>��</FONT>----�Ƽ����£�<FONT color=blue>ͼ</FONT>----��ҳͼƬ����<BR>
<BR>
<!-- Powered by: PowerEasy 2005 -->
</BODY>
</HTML></body>
</html> 