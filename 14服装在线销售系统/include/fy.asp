<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" align="center" valign="middle">�� <%=allcounts%> ����<%
	dim filename
	filename=Request.ServerVariables("SCRIPT_NAME")
	filename=mid(filename,InStrRev(filename,"/")+1,len(filename))
	if(pages=1) then
		Response.Write("��ҳ")
	else
		Response.Write("<a href='"&filename&"?pages="&pages&"&act="&act&"'>��ҳ</a>")
	end if
	%>��<%
	if(pages=1) then
		Response.Write("��һҳ")
	else
		Response.Write("<a href='"&filename&"?pages="&pages-1&"&act="&act&"'>��һҳ</a>")
	end if
	%>��<%
	if(pages=maxpages) then
		Response.Write("��һҳ")
	else
		Response.Write("<a href='"&filename&"?pages="&pages+1&"&act="&act&"'>��һҳ</a>")
	end if
	%>��<%
	if(pages=maxpages) then
		Response.Write("βҳ")
	else
		Response.Write("<a href='"&filename&"?pages="&maxpages&"&act="&act&"'>βҳ</a>")
	end if
	%>��ҳ�Σ�<%=pages%>/<%=maxpages%>ҳ  <%=counts%>��/ҳ</td>
  </tr>
</table>