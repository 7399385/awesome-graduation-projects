<!--#include file="inc/conn.asp"-->
<%
Call QuanXian(News_B)
session("News")=0
dim rs
dim sql
dim count
set rs=server.createobject("adodb.recordset")
sql = "select * from N_Class Where ParentClassID<>0 order by Xu asc"
rs.open sql,conn,1,1
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
.STYLE3 {color: #000000; }
-->
</style>
<script>
var onecount;
subcat = new Array();
        <%
        count = 0
        do while not rs.eof 
        %>
subcat[<%=count%>] = new Array("<%= trim(rs("ClassName"))%>","<%= trim(rs("ParentClassID"))%>","<%= trim(rs("ID"))%>");
        <%
        count = count + 1
        rs.movenext
        loop
        rs.close
        %>
onecount=<%=count%>;

function changelocation(locationid)
    {
    document.myform.SmallClassName.length = 1; 
    var locationid=locationid;
    var i;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][1] == locationid)
            { 
                document.myform.SmallClassName.options[document.myform.SmallClassName.length] = new Option(subcat[i][0], subcat[i][2]);
            }        
        }
    }    
function cek(formname)
{
		if(formname.SmallClassName.value=="")
		{
		alert("��ѡ���Ʒ����")
		formname.SmallClassName.focus()
		return false;
		}
		
		if(formname.N_title.value=="")
		{
		alert("���������д")
		formname.N_title.focus()
		return false;
		}
		
		if(formname.content.value=="")
		{
		alert("���ݱ�����д")
		formname.content.focus()
		return false;
		}
}

function Checkwb1(){
if (document.myform.wb111.checked == false) {
        wbms1.style.display = "none";
}else
        wbms1.style.display = "";
}

</script>
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
<form name="myform" method="post" action="N_Sava.asp?action=add">
	<% 'ȡԴ�ļ��� %>
	<input type=hidden name=d_originalfilename>
	<% 'ȡ����ķ������������Ҫ��·������������򣬿���������ı������onchange�¼� %>
	<input type=hidden name=d_savefilename>
	<% 'ȡ������ļ�������·������ʹ�ô�·������������� %>
	<input type=hidden name=d_savepathfilename onChange="doChange(this,document.myform.d_picture)">
  <table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table_border">
    <tr bgcolor="#DBE6FF">
      <td colspan="2" class="padding_1"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="table_bg">
          <tr>
            <td align="center" class="table_bg_size"> �����Ѷ</td>
          </tr>
      </table></td>
    </tr>
    <tr bgcolor="#DBE6FF">
      <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
        <tr class="table_bg_n">
          <td height="25" align="center"> ��Ѷ����</td>
          <td class="padding-left-10">
		  <%
        sql = "select * from N_Class Where ParentClassID=0 Order By Xu Asc"
        rs.open sql,conn,1,1
		if rs.eof and rs.bof then
			response.write "���������Ŀ��"
		else
		%>
                <select name="BigClassName" onChange="changelocation(document.myform.BigClassName.options[document.myform.BigClassName.selectedIndex].value)" size="1">
		  <%
			dim selclass
			selclass=rs("ID")
			do while not rs.eof
		  %>
			  <option value="<%=trim(rs("ID"))%>"><%=trim(rs("ClassName"))%></option>
		  <%
			rs.movenext
			loop
			end if
			rs.close
		 %>
                </select>
                <select name="SmallClassName">
				 <option value="" selected>��ѡ�����</option>
		  <%
			sql="select * from N_Class where ParentClassID=" & selclass & " Order By Xu Asc"
			rs.open sql,conn,1,1
			if not(rs.eof and rs.bof) then
			do while not rs.eof
			%>
                  <option value="<%=rs("ID")%>" <% IF rs("ID")=Cint(request("Small_Class")) Then Tw("Selected") End IF%>><%=rs("ClassName")%></option>
		  <%
			rs.movenext
			loop
			end if
	        rs.close
			%>
                </select></td>
        </tr>
		  <%
		  IF banben_China=True Then
		  %>
          <tr class="table_bg_n">
            <td width="19%" height="25" align="center">��Ѷ����</td>
            <td width="81%" class="padding-left-10"><input name="N_title" type="text" id="N_title" size="50">
            <span class="style1">*(��*����)</span></td>
          </tr>
		  <%
		  End IF
		  %>
          <tr class="table_bg_n">
            <td height="25" align="center">������</td>
            <td class="padding-left-10"><input name="N_fabu" type="text" id="N_fabu" value="<%Tw(Session("admin_Name"))%>" size="15"></td>
          </tr>
          <tr class="table_bg_n">
            <td height="25" align="center">��������</td>
            <td class="padding-left-10"><input name="N_Time" type="text" id="UpdateTime2" value="<%=Date()%>" maxlength="50" readonly style="background-color:#EFEFEF">
                <span class="style1">(��ȷ��ʽ��2006-12-12)</span></td>
          </tr>
          <!--<tr class="table_bg_n">
            <td height="25" align="center">��ѶͼƬ</td>
            <td class="padding-left-10"><select name="d_picture" size=1><option  value="">��</option></select></td>
          </tr> -->
		  <%
		  IF banben_China=True Then
		  %>
          <tr class="table_bg_n">
            <td height="80" align="center" class="table_bg_n"> ���� </td>
            <td><textarea name="content" style="display:none"></textarea>
                <IFRAME ID="eWebEditor" SRC="../WebEditor/eWebEditor.asp?id=content&style=s_coolblue&originalfilename=d_originalfilename&savefilename=d_savefilename&savepathfilename=d_savepathfilename" FRAMEBORDER="0" SCROLLING="no" WIDTH="680" HEIGHT="400"></IFRAME></td>
          </tr>
		  <%
		  End IF
		  %>
          <tr class="table_bg_n">
            <td height="25" align="center"> �Ƽ�</td>
            <td class="padding-left-10"><input name="N_Index" type="checkbox" id="N_Index" value="1">
                <span class="style1"></span></td>
          </tr>
          <tr class="table_bg_n">
            <td height="25" align="center">��ʼ�����</td>
            <td class="padding-left-10"><input name="N_Hits" type="text" id="N_Hits" value="0" size="15">
              <span class="style1">(��ȷ��ʽΪ����)</span></td>
          </tr>
          <tr class="table_bg_n">
            <td height="25" colspan="2" align="center"><input type="submit" name="Submit" value="�����Ѷ">
            &nbsp;&nbsp;
            <input type="reset" name="Submit" value="������д"></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
