<div>
<img src="images/logo.gif" style="float:left;" />
<div class="time"></div>
<div class="menu"><%
dim menus,menui,menustr,filename

menus="��ҳ|default.asp|��������|about.asp|���Ŷ�̬|news.asp|��װ�̳�|product.asp|�˿�����|guest.asp"
menus=split(menus,"|")
menustr=""

filename=Request.ServerVariables("SCRIPT_NAME")
filename=mid(filename,InStrRev(filename,"/")+1,len(filename))

for menui=LBound(menus) to UBound(menus) step 2
	menustr=menustr&"<a href='"&menus(menui+1)&"'"
	if(filename=menus(menui+1)) then
		menustr=menustr&" class='cur'"
	end if
	menustr=menustr&">"&menus(menui)&"</a>"		
next
Response.Write(menustr)
%>
</div><img src="images/top.gif" class="topimg"/><br />
</div>