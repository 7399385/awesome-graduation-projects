<!--����¼-->
<%
if Session("admin")="" then
	Response.Write("<script>alert('���¼');top.location='index.asp'</script>")
	Response.End()
end if
%>