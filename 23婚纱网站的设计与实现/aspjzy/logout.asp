<%
Response.cookies("admin")=""
Session.Abandon()
Response.Write("<script>alert('�˳��ɹ�');window.location='hello.asp'</script>")

%>