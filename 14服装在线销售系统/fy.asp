<%
filename=Request.ServerVariables("SCRIPT_NAME")
filename=mid(filename,InStrRev(filename,"/")+1,len(filename))
if(allcounts>0) then
%>
<a href="<%=filename%>?act=<%=act%>&pages=1">��ҳ</a>��<a href="<%=filename%>?act=<%=act%>&pages=<%=pages-1%>">��һҳ</a>��<a href="<%=filename%>?act=<%=act%>&pages=<%=pages+1%>">��һҳ</a>��<a href="<%=filename%>?act=<%=act%>&pages=<%=maxpages%>">βҳ</a><%end if%>