<!--#include file="inc/conn.asp"-->
<%
if request("act")="upd" then
   sql="update Infor set web_zcxy='"&Request("content")&"' where 1=1"
   conn.execute sql
   response.write "<script language=javascript>alert('�޸ĳɹ�');location='zcxy.asp';</script>"
end if
dim rs,sql
set rs=server.createobject("adodb.recordset")
sql="select web_zcxy from Infor where 1=1"
rs.open sql,conn,1,1
if not (rs.eof or err) then 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.p {padding-left:10px;}
.style1 {color: #990000}
-->
</style>
<Script Language=JavaScript>
	// ���ϴ�ͼƬ���ļ�ʱ����������������ͼƬ·�����ɸ���ʵ����Ҫ���Ĵ˺���
	function doChange(objText, objDrop){
		if (!objDrop) return;
		var str = objText.value;
		var arr = str.split("|");
		var nIndex = objDrop.selectedIndex;
		objDrop.length=1;
		for (var i=0; i<arr.length; i++){
			objDrop.options[objDrop.length] = new Option(arr[i], arr[i]);
		}
		objDrop.selectedIndex = nIndex;
	}

	// ���ύ�ͻ��˼��
	</Script>
</head>

<body style="padding-bottom:10px;">
<form name="myform" action="?act=upd" method="post"> 
  <table width="85%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
    <tr bgcolor="#DBE6FF">
      <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
          <tr>
            <td align="center" class="table_bg_size">��Աע��Э��</td>
          </tr>
      </table></td>
    </tr>
    <tr bgcolor="#DBE6FF">
      <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
          <tr class="table_bg_n">
            <td height="80" align="center" class="table_bg_n"><textarea name="content" style="display:none"><%=rs("web_zcxy")%>	</textarea>
            <IFRAME ID="eWebEditor" SRC="../WebEditor/eWebEditor.asp?id=content&style=s_coolblue&originalfilename=d_originalfilename&savefilename=d_savefilename&savepathfilename=d_savepathfilename" FRAMEBORDER="0" SCROLLING="no" WIDTH="550" HEIGHT="400"></IFRAME></td>
          </tr>
          <tr class="table_bg_n">
            <td height="25" align="center"><span class="unnamed1">
              <input type="submit" name="Submit" value="�޸�">
            </span></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
<%else %>
<span class="unnamed1">�޸ü�¼����<a href="Javascript:window.history.go(-1)">����</a></span>
<%
rs.close
end if %>