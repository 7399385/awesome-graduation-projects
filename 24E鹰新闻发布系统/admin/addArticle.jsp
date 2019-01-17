<%@ taglib uri="/aqu" prefix="aqu" %>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="sort" class="com.v246.NoLevelSort" scope="page"/>
<c:set value="${aqu:getUrl()}/admin/login.jsp" var="url"/>
<c:if test="${sessionScope.admin==null||sessionScope.admin!='yes'}">
	<c:redirect url="${url}"/>
</c:if>
<html>
<head>
<title>���¹���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="/css/Admin_Style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="2" topmargin="0" marginheight="0" marginwidth="0">
<table class="border" align="center" border="0" cellpadding="2" cellspacing="1" width="100%">
  <tbody>
    <tr class="topbg"> 
      <td colspan="6" align="center" height="22"><strong>�������Ĺ���----</strong>�������</td>
    </tr>
    <tr class="tdbg"> 
      <td height="30" width="70"><strong>��������</strong></td>
      <td colspan="5"><a href="http://www.v246.com/Admin/Admin_Article.asp?ChannelID=1&amp;Passed=All">���¹�����ҳ</a>&nbsp;|&nbsp;<a href="http://www.v246.com/Admin/Admin_Article.asp?ChannelID=1&amp;Action=Add&amp;AddType=1&amp;ClassID=0&amp;SpecialID=0">������£����ģʽ��</a>&nbsp;|&nbsp;<a href="http://www.v246.com/Admin/Admin_Article.asp?ChannelID=1&amp;Action=Add&amp;AddType=2&amp;ClassID=0&amp;SpecialID=0">������£��߼�ģʽ��</a>&nbsp;|&nbsp;<a href="http://www.v246.com/Admin/Admin_Article.asp?ChannelID=1&amp;ManageType=Check&amp;Passed=False">�������</a>&nbsp;|&nbsp;<a href="http://www.v246.com/Admin/Admin_Article.asp?ChannelID=1&amp;ManageType=Special">ר�����¹���</a>&nbsp;|&nbsp;<a href="http://www.v246.com/Admin/Admin_Article.asp?ChannelID=1&amp;ManageType=Recyclebin&amp;Passed=All">���»���վ����</a></td>
    </tr>
  </tbody>
</table>
<script language="JavaScript">
function AddItem(strFileName){
  var arrName=strFileName.split('.');
  var FileExt=arrName[1];
  if (FileExt=='gif'||FileExt=='jpg'||FileExt=='jpeg'||FileExt=='jpe'||FileExt=='bmp'||FileExt=='png'){
      if(document.myform.IncludePic.selectedIndex<2){
        document.myform.IncludePic.selectedIndex+=1;
      }
  frmPreview.img.src='/Article/UploadFiles/'+strFileName;
  document.myform.DefaultPicUrl.value=strFileName;}
  document.myform.DefaultPicList.options[document.myform.DefaultPicList.length]=new Option(strFileName,strFileName);
  document.myform.DefaultPicList.selectedIndex+=1;
  if(document.myform.UploadFiles.value==''){
    document.myform.UploadFiles.value=strFileName;
  }
  else{
    document.myform.UploadFiles.value=document.myform.UploadFiles.value+'|'+strFileName;
  }
}
function selectPaginationType(){
  document.myform.PaginationType.value=2;
}
function rUseLinkUrl(){
  if(document.myform.UseLinkUrl.checked==true){
    document.myform.LinkUrl.disabled=false;
     ArticleContent.style.display='none';
     ArticleContent2.style.display='none';
     ArticleContent3.style.display='none';
  }
  else{
    document.myform.LinkUrl.disabled=true;
    ArticleContent.style.display='';
    ArticleContent2.style.display='';
    ArticleContent3.style.display='';
  }
}
function CheckForm(){
  if (document.myform.classID.value==''){
    alert('����������Ŀ����ָ��Ϊ�ⲿ��Ŀ��');
    document.myform.classID.focus();
    return false;
  }
  if (document.myform.classID.value=='0'){
    alert('ָ������Ŀ������������£�ֻ������������Ŀ��������¡�');
    document.myform.classID.focus();
    return false;
  }
  if (document.myform.title.value==''){
     alert('���±��ⲻ��Ϊ�գ�');
     document.myform.title.focus();
     return false;
  }
  if (document.myform.keyword.value==''){
     alert('�ؼ��ֲ���Ϊ�գ�');
     document.myform.keyword.focus();
     return false;
  }
  if(document.myform.useLinkUrl.checked==true){
    if (document.myform.linkUrl.value==''||document.myform.LinkUrl.value=='http://'){
      alert('������ת�����ӵĵ�ַ��');
      document.myform.linkUrl.focus();
      return false;
    }
  }
  else{
    if (document.myform.content.value==''){
      alert('�������ݲ���Ϊ�գ�');
      document.content.focus();
      return false;
    }
  }
  return true;  
}
</script>
<form method="post" name="myform" onsubmit="return CheckForm();" action="./addArticle.do" target="_self">
  <table class="border" align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr class="title"> 
        <td align="center" height="22"><b>������£��߼�ģʽ��</b>----��������</td>
      </tr>
      <tr align="center"> 
        <td> <table border="0" cellpadding="2" cellspacing="1" width="100%">
            <tbody>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>������Ŀ��</strong></td>
                <td> <select name="classID" id="classID">
					<c:forEach var="noLevelSort" items="${sort.coll}">
            		<OPTION value=${noLevelSort.id}>${noLevelSort.title}</OPTION>
            		</c:forEach>
                   
                  </select> &nbsp;&nbsp;&nbsp;&nbsp;<font color="#ff0000"><strong>ע�⣺</strong></font> 
                  <font color="#0000ff">����ָ��Ϊ�ⲿ��Ŀ</font> </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>����ר�⣺</strong></td>
                <td><select name="specialID" id="specialID">
                    <option value="0" selected>�������κ�ר��</option>
                  </select></td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>���±��⣺</strong></td>
                <td> <table border="0" cellpadding="0" cellspacing="2" width="100%">
                    <tbody>
                      <tr> 
                        <td width="64">��̱��⣺</td>
                        <td> <select name="includePic" id="includePic">
                            <option value="0" selected="selected"> </option>
                            <option value="1">[ͼ��]</option>
                            <option value="2">[��ͼ]</option>
                            <option value="3">[�Ƽ�]</option>
                            <option value="4">[ע��]</option>
                          </select> 
                          <input name="title" id="title" value="" size="44" maxlength="255" type="text"> 
                          <font color="#ff0000">*</font> <select name="titleFontColor" id="titleFontColor">
                            <option value="0" selected>��ɫ</option>
                            <option value="0">Ĭ��</option>
                            <option value="#000000"></option>
                            <option value="#FFFFFF"></option>
                            <option value="#008000"></option>
                            <option value="#800000"></option>
                            <option value="#808000"></option>
                            <option value="#000080"></option>
                            <option value="#800080"></option>
                            <option value="#808080"></option>
                            <option value="#FFFF00"></option>
                            <option value="#00FF00"></option>
                            <option value="#00FFFF"></option>
                            <option value="#FF00FF"></option>
                            <option value="#FF0000"></option>
                            <option value="#0000FF"></option>
                            <option value="#008080"></option>
                          </select> 
                          <select name="titleFontType" id="titleFontType">
                            <option value="0" selected="selected">����</option>
                            <option value="1">����</option>
                            <option value="2">б��</option>
                            <option value="3">��+б</option>
                            <option value="0">����</option>
                          </select> </td>
                      </tr>
                      <tr> 
                        <td width="64">�������⣺</td>
                        <td><input name="titleIntact" id="titleIntact" value="" size="80" maxlength="500" type="text"></td>
                      </tr>
                      <tr> 
                        <td width="64">�� �� �⣺</td>
                        <td><input name="subheading" id="subheading" value="" size="80" maxlength="500" type="text"></td>
                      </tr>
                      <tr> 
                        <td>&nbsp;</td>
                        <td><input name="showCommentLink" id="showCommentLink" value="Yes" type="checkbox">
                          ��ʾ�����б�ʱ�ڱ�������ʾ��������</td>
                      </tr>
                    </tbody>
                  </table></td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>�ؼ��֣�</strong></td>
                <td> <input name="keyword" id="keyword" value="" size="50" maxlength="255" type="text"> 
                  <font color="#ff0000">*</font> <font color="blue">&lt;=��<font onclick="document.myform.keyword.value+=(document.myform.keyword.value==''?'':'|')+'�����Ҹ棬�͸�����Ů�˺�������'" style="" color="green">�����Ҹ棬�͸�����Ů�˺�������</font>����<font onclick="document.myform.keyword.value+=(document.myform.keyword.value==''?'':'|')+'��'" style="" color="green">��</font>����<font onclick="document.myform.keyword.value+=(document.myform.keyword.value==''?'':'|')+'��'" style="" color="green">��</font>����<font onclick="document.myform.keyword.value+=(document.myform.keyword.value==''?'':'|')+'��ʵ�Ĺ���'" style="" color="green">��ʵ�Ĺ���</font>����<font onclick="window.open('Admin_SourceList.asp?ChannelID=1&TypeSelect=KeyList', 'KeyList', 'width=600,height=450,resizable=0,scrollbars=yes');" style="" color="green">����</font>��</font> 
                  <br>
                  <font color="#0000ff">��������������£����������ؼ��֣��м���<font color="#ff0000">��|��</font>���������ܳ���"'&amp;?;:()���ַ���</font> 
                </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>�������ߣ�</strong></td>
                <td> <input name="author" id="author" value="" size="50" maxlength="100" type="text">
                  <font color="blue">&lt;=��<font onclick="document.myform.author.value='δ֪'" style="" color="green">δ֪</font>����<font onclick="document.myform.author.value='����'" style="" color="green">����</font>����<font onclick="document.myform.author.value='admin'" style="" color="green">admin</font>����<font onclick="window.open('Admin_SourceList.asp?TypeSelect=authorList&ChannelID=1', 'authorList', 'width=600,height=450,resizable=0,scrollbars=yes');" style="" color="green">����</font>��</font> 
                </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>������Դ��</strong></td>
                <td> <input name="copyFrom" id="copyFrom" value="" size="50" maxlength="100" type="text">
                  <font color="blue">&lt;=��<font onclick="document.myform.copyFrom.value='��վԭ��'" style="" color="green">��վԭ��</font>����<font onclick="window.open('Admin_SourceList.asp?TypeSelect=copyFromList&ChannelID=1', 'copyFromList', 'width=600,height=450,resizable=0,scrollbars=yes');" style="" color="green">����</font>��</font> 
                </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong><font color="#ff0000">ת�����ӣ�</font></strong></td>
                <td> <input name="linkUrl" id="linkUrl" value="http://" size="50" maxlength="255" disabled="disabled" type="text"> 
                  <input name="UseLinkUrl" id="UseLinkUrl" value="Yes" onclick="rUseLinkUrl();" type="checkbox"> 
                  <font color="#ff0000">ʹ��ת������</font> </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>���¼�飺</strong></td>
                <td><textarea name="intro" cols="80" rows="4" id="intro"></textarea></td>
              </tr>
              <tr class="tdbg" id="ArticleContent" style=""> 
                <td align="right" valign="bottom" width="120"><p><strong>�������ݣ�</strong></p>
                  <table>
                    <tbody>
                      <tr>
                        <td><input name="SaveRemotePic" value="Yes" checked="checked" type="checkbox"></td>
                        <td>�Զ����������������ͼƬ</td>
                      </tr>
                    </tbody>
                  </table>
                  <div align="left"><font color="#006600">&nbsp;&nbsp;&nbsp;&nbsp;���ô˹��ܺ������������վ�ϸ������ݵ��ұߵı༭���У����������а�����ͼƬ����ϵͳ���ڱ�������ʱ�Զ������ͼƬ���Ƶ���վ�������ϡ�<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;ϵͳ����������ͼƬ�Ĵ�С��Ӱ���ٶȣ�����ͼƬ�϶�ʱ��Ҫʹ�ô˹��ܡ�</font><br>
                    <br>
                    <font color="red">�����밴Shift+Enter<br>
                    <br>
                    ����һ���밴Enter</font></div>
                  <br>
                  <br>
                  <br>
                  <br>
                  
                </td>
                <td> 
                  <INPUT type="hidden" name="content" value="<p>&nbsp;</p><p><font color=#ff0000>����ʽΪ�Դ�Ĭ����ʽ����ѵ��ÿ��550px���߶�350px��</font></p><p>����ΪһЩ�߼����ù��ܵ����ӣ�������ýű�����ı༭����һЩ������</p><p>������Щ���ݣ���û�д�����ʾ��˵����װ�Ѿ���ȷ��ɣ�</p>">
                  <IFRAME ID="eWebEditor1" src="./eWebEditor.jsp?id=content&style=standard" frameborder="0" scrolling="no" width="640" height="350"></IFRAME>
                  </iframe> </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong><font color="#ff0000">��ҳͼƬ��</font></strong></td>
                <td> <input name="defaultPicUrl" id="defaultPicUrl" size="56" maxlength="200" type="text">
                  ��������ҳ��ͼƬ���´���ʾ <br>
                  ֱ�Ӵ��ϴ�ͼƬ��ѡ�� 
                  <select name="defaultPicList" id="defaultPicList" onchange="DefaultPicUrl.value=this.value;frmPreview.img.src=((this.value == '') ? '../images/nopic.gif' : '/Article/UploadFiles/'+this.value);">
                    <option selected="selected">��ָ����ҳͼƬ</option>
                  </select> <input name="UploadFiles" id="UploadFiles" type="hidden"> 
                </td>
              </tr>
              <tr class="tdbg" id="ArticleContent2" style=""> 
                <td align="right" width="120"><strong>���ݷ�ҳ��ʽ��</strong></td>
                <td> <select name="paginationType" id="paginationType">
                    <option value="0" selected="selected">����ҳ</option>
                    <option value="1">�Զ���ҳ</option>
                    <option value="2">�ֶ���ҳ</option>
                  </select> &nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#0000ff">ע��</font></strong><font color="#0000ff">�ֶ���ҳ�����Ϊ��</font><font color="#ff0000">[NextPage]</font><font color="#0000ff">����ע���Сд</font> 
                </td>
              </tr>
              <tr class="tdbg" id="ArticleContent3" style=""> 
                <td align="right" width="120">&nbsp;</td>
                <td>�Զ���ҳʱ��ÿҳ��Լ�ַ���������HTML��ǣ���<strong> 
                  <input name="maxCharPerPage" id="maxCharPerPage" value="10000" size="8" maxlength="8" type="text">
                  </strong></td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>�����Ķ�������</strong></td>
                <td><input name="readPoint" id="readPoint" value="0" size="5" maxlength="4" type="text"> 
                  &nbsp;&nbsp;<font color="#0000ff">�����������0�����Ա�Ķ�������ʱ��������Ӧ��������Ϊ9999ʱ���⣩���οͽ��޷��鿴������</font> 
                </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>�������ԣ�</strong></td>
                <td> <input name="onTop" id="onTop" value="yes" type="checkbox">
                  �̶�����&nbsp;&nbsp;&nbsp;&nbsp; <input name="hot" id="hot" value="yes" onclick="javascript:document.myform.Hits.value='1000'" type="checkbox">
                  ��������&nbsp;&nbsp;&nbsp;&nbsp; <input name="elite" id="elite" value="yes" type="checkbox">
                  �Ƽ�����&nbsp;&nbsp;&nbsp;&nbsp; �������ֵȼ��� 
                  <select name="stars" id="stars">
                    <option value="5">������</option>
                    <option value="4">�����</option>
                    <option value="3" selected="selected">����</option>
                    <option value="2">���</option>
                    <option value="1">��</option>
                    <option value="0">��</option>
                  </select> </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>�������ʼֵ��</strong></td>
                <td> <input name="hits" id="hits" value="0" size="10" maxlength="10" type="text">
                  &nbsp;&nbsp; <font color="#0000ff">�⹦�����ṩ������Ա�����õġ�����������Ҫ��ѽ��^_^</font> 
                </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>¼��ʱ�䣺</strong></td>
                <td> <input name="updateTime" id="updateTime" value="<aqu:getNow/>" maxlength="50" type="text">
                  ʱ���ʽΪ����-��-�� ʱ:��:�롱���磺<font color="#0000ff">2003-5-12 12:32:47</font> 
                </td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>��ɫ���</strong></td>
                <td><select name="skinID" id="skinID">
                    <option value="0" selected="selected">ϵͳĬ�Ϸ��</option>
                    <option value="1">��ɫ���䣨Ĭ�ϣ�</option>
                  </select>
                  &nbsp;���ģ���а���CSS����ɫ��ͼƬ����Ϣ</td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>�������ģ�壺</strong></td>
                <td><select name="templateID" id="templateID">
                    <option value="0" selected="selected">ϵͳĬ������ҳģ��</option>
                    <option value="6">��������ҳģ�壨һ��ʽ����Ĭ�ϣ�</option>
                    <option value="7">��������ҳģ�壨����ʽ(��С�Ҵ�)��</option>
                    <option value="8">��������ҳģ�壨����ʽ(�����С)��</option>
                  </select>
                  &nbsp;���ģ���а����˰�����Ƶİ�ʽ����Ϣ</td>
              </tr>
              <tr class="tdbg"> 
                <td align="right" width="120"><strong>����������</strong></td>
                <td> <input name="passed" id="passed" value="yes" checked="checked" type="checkbox">
                  ��<font color="#0000ff">�����ѡ�еĻ���ֱ�ӷ�����������˺���ܷ�������</font> </td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
  <p align="center"> 
    <input name="Action" id="Action" value="SaveAdd" type="hidden">
    <input name="AddType" id="AddType" value="2" type="hidden">
    <input name="ChannelID" id="ChannelID" value="1" type="hidden">
    <input name="add" id="Add" value=" �� �� " onclick="document.myform.Action.value='SaveAdd';document.myform.target='_self';" style="" type="submit">
    &nbsp; 
    <input name="Preview" id="Preview" value=" Ԥ �� " onclick="document.myform.Action.value='Preview';document.myform.target='_blank';" style="" type="submit">
    <input name="Cancel" id="Cancel" value=" ȡ �� " onclick="window.location.href='Admin_Article.asp?ChannelID=1&Action=Manage';" style="" type="button">
  </p>
  <br>
</form>
<!-- Powered by: PowerEasy 2005 -->
</body>
</html>
