<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../../conn/conn.jsp"%>
<%@ include file="../../config.jsp"%>
<%String memid = (String)request.getParameter("id");
rs=stmt.executeQuery("SELECT * from qyml where id='"+memid+"'");
rs.next();
%>

<LINK href="../../conn/laba.css" rel=stylesheet type=text/css>
<HTML><HEAD>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<CENTER>
<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE><%=rs.getString("qymc")%></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<style type="text/css">
<!--
body { font-family: "����"; font-size: 9pt}
p { }
table { font-family: "����"; font-size: 9pt}
td { font-family: "����"; font-size: 9pt; line-height: 14pt; letter-spacing: 0pt}
a:link { text-decoration: none}
a:visited { text-decoration: none}
.unnamed1 { cursor: hand}
a:hover { color: #FF6600; text-decoration: none}
-->
</style>
<script language=JavaScript>
<!--
today=new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray(
"������",
"����һ",
"���ڶ�",
"������",
"������",
"������",
"������");
function MM_preloadImages() { //v3.0
var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_findObj(n, d) { //v4.01
var p,i,x; if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_nbGroup(event, grpName) { //v3.0
var i,img,nbArr,args=MM_nbGroup.arguments;
if (event =="init" && args.length > 2) {
if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
nbArr[nbArr.length] = img;
for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
if (!img.MM_up) img.MM_up = img.src;
img.src = img.MM_dn = args[i+1];
nbArr[nbArr.length] = img;
} }
} else if (event =="over") {
document.MM_nbOver = nbArr = new Array();
for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
if (!img.MM_up) img.MM_up = img.src;
img.src = (img.MM_dn && args[i+2]) ? args[i+2] : args[i+1];
nbArr[nbArr.length] = img;
}
} else if (event =="out" ) {
for (i=0; i < document.MM_nbOver.length; i++) {
img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
} else if (event =="down") {
if ((nbArr = document[grpName]) != null)
for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
document[grpName] = nbArr = new Array();
for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
if (!img.MM_up) img.MM_up = img.src;
img.src = img.MM_dn = args[i+1];
nbArr[nbArr.length] = img;
} }
}
//-->
</script>
<SCRIPT language=javascript 
src="images/zyok.JS"></SCRIPT>
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" 
marginwidth="0" background="images/bg.gif">
<DIV align=center>
<TABLE cellSpacing=0 cellPadding=0 width="64%" border=0>
<TBODY>
<TR>
<TD vAlign=top height=338>
<DIV align=center>
<TABLE cellSpacing=0 cellPadding=0 width="66%" border=0>
<TBODY>
<TR>
<TD vAlign=top width="26%">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="449" id="AutoNumber7" height="83">
<tr>
<td width="100%" background="images/mb13.gif">
<div align="center">
<center>
<table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="440" id="AutoNumber8" height="50">
<tr>
<td width="100%" valign="top" height="34">
<p align="center">
<font style='width=100%; position: relative; filter: glow(color=#000000, strength=4); font-size:20pt; letter-spacing:-1' color="#FFFFFF" face="����">
<%=rs.getString("qymc")%></font></td>
</tr>
</table>
</center>
</div>
</tr>
</table>
</TD>
<TD vAlign=top width="42%">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="323" id="AutoNumber5" height="83" background="images/mb6.gif">
<tr>
<td width="323" valign="bottom" colspan="2">��</td>
</tr>
<tr>
<td width="104" valign="bottom">��</td>
<td width="219" valign="bottom">��</td>
</tr>
<tr>
<td width="104" valign="bottom">��</td>
<td width="219" valign="middle">
<p align="center"><script language="javascript"> 
document.write( 
"<font color=#ffffff> ", 
today.getYear(),"��", 
today.getMonth()+1,"��", 
today.getDate(),"�� ", 
d[today.getDay()+1], 
"</font>" ); </script></td>
</tr>
</table>
</TD></TR></TBODY></TABLE></DIV>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 height="196">
<TBODY>
<TR>
<TD vAlign=top width="16%" height=196 rowSpan=3 bgcolor="#F0F0F0">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100" id="AutoNumber2" height="351">
<tr>
<td width="100%" height="156">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber6">
<tr>
<td width="100%">
<TABLE WIDTH=144 BORDER=0 CELLPADDING=0 CELLSPACING=0>
<TR>
<TD> <a href="corporation_web.jsp?id=<%=memid%>" onClick="MM_nbGroup('down','group1','bt1','images/bt1.gif',1)" onMouseOut="MM_nbGroup('out')" onMouseOver="MM_nbGroup('over','bt1','images/bt2.gif','images/bt2.gif',1);MM_nbGroup('over','bt1','images/bt11.gif','images/bt11.gif',1)"> 
<img border="0" src="images/bt1.gif" width="144" height="29" name="bt1" alt="��˾���"></a></TD>
</TR>
<TR>
<TD> 
<a onClick="MM_nbGroup('down','group1','bt2','images/bt2.gif',1)" onMouseOut="MM_nbGroup('out')" onMouseOver="MM_nbGroup('over','bt2','images/bt21.gif','images/bt21.gif',1)" href="spzs.jsp?id=<%=memid%>"> 
<img border="0" src="images/bt2.gif" width="144" height="29" name="bt2" alt="��Ʒ����"></a></TD>
</TR>
<TR>
<TD> <a href="syjh.jsp?id=<%=memid%>" onClick="MM_nbGroup('down','group1','bt3','images/bt3.gif',1)" onMouseOut="MM_nbGroup('out')" onMouseOver="MM_nbGroup('over','bt3','images/bt31.gif','images/bt31.gif',1)"> 
<img border="0" src="images/bt3.gif" width="144" height="32" name="bt3" alt="������Ϣ"></a></TD>
</TR>
<TR>
<TD valign="top"> <a href="job.jsp?id=<%=memid%>" onClick="MM_nbGroup('down','group1','bt4','images/bt4.gif',1)" onMouseOut="MM_nbGroup('out')" onMouseOver="MM_nbGroup('over','bt4','images/bt41.gif','images/bt41.gif',1)"> 
<img border="0" src="images/bt4.gif" name="bt4" alt="��Ƹ��Ϣ"></a></TD>
</TR>
<TR>
<TD> <a href="contact.jsp?id=<%=memid%>" onClick="MM_nbGroup('down','group1','bt5','images/bt5.gif',1)" onMouseOut="MM_nbGroup('out')" onMouseOver="MM_nbGroup('over','bt5','images/bt51.gif','images/bt51.gif',1)"> 
<img border="0" src="images/bt5.gif" width="144" height="37" name="bt5" alt="��ϵ����"></a></TD>
</TR>
</TABLE>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="144" background="images/mb1.gif" height="157" bgcolor="#F0F0F0" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber14">
<tr>
<td width="100%" height="88" valign="top" style="font-family: ����; font-size: 9pt; line-height: 14pt; letter-spacing: 1pt">
<div align="center">
<center>
<table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber10" height="9">
<tr>
<td width="88%" valign="bottom" style="font-family: ����; font-size: 9pt; line-height: 14pt; letter-spacing: 1pt">
<p align="left">&nbsp;<img border="0" src="images/gb_site.gif"><a href="index.jsp?id=<%=memid%>"><font color="#004F75">������ҳ</font></a></td>
</tr>
</table>
</center>
</div>
</td>
</tr>
<tr>
<td width="100%" height="68" style="font-family: ����; font-size: 9pt; line-height: 14pt; letter-spacing: 1pt">
<p align="center">
<a href="mailto:<%=rs.getString("email")%>">
<img border="0" src="images/mail_comp.gif" width="32" height="32" alt="����������ϵ"></a></td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="100%" height="38" valign="top">
<p align="center">
��</td>
</tr>
</table>
</TD>
<TD vAlign=top width="84%" height=49 bgcolor="#FFFFFF"><!-- #BeginEditable "tp" -->
<img border="0" src="images/trade.gif"><!-- #EndEditable --></TD></TR>
<tr>
<TD vAlign=top width="84%" height=5 bgcolor="#FFFFFF">
</TD>
</tr>
<TR>
<TD vAlign=top width="84%" height=100>
<TABLE height=283 cellSpacing=0 cellPadding=0 width="100%" 
border=0><TBODY>
<TR vAlign=top>
<TD height=55 bgcolor="#FFFFFF">
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="99%" id="AutoNumber13">
<tr>
<td width="100%">
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%" style="border-collapse: collapse" bordercolor="#111111" height="301"> 
<TBODY> 
<TR> 
<TD valign=top height="301">
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
<TBODY>
<TR>
<TD align=right>
<p align="left"><B></TD>
</TR>
</TBODY>
</TABLE>
<div align="center">
<center>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="92%" style="border-collapse: collapse" bordercolor="#111111">
<TR><TD height="10" colspan="2" background="images/line_gr.gif"></TD></TR>
</TABLE> 
</center>
</div>




<%
rs=stmt.executeQuery("SELECT * from sjxx where memid='"+memid+"' order by id desc");
String pages = request.getParameter("page") ;
int pageInt =  1 ,i=0 ;
if(pages==null){}else{pageInt = Integer.parseInt(pages);}
while(i<20*(pageInt-1)&&rs.next()){i++ ;}
i=0;
while(rs.next()&i<20){
i++ ;
%>








<div align="center">
<center> 
<TABLE border=0 cellPadding=0 cellSpacing=0 width="92%" style="border-collapse: collapse" bordercolor="#111111" height="10">
<TBODY>
<TR height="30">
<TD align=left>
<b><img border="0" src="images/14.gif">
<span style="font-size: 10.5pt">
<a href="../../sj/sjxx.jsp?id=<%=rs.getString("id")%>" target="_blank"><%=rs.getString("topic")%></a></span></b>&nbsp;&nbsp;<%=rs.getString("fbtime")%><font color="#fc9603">&nbsp;&nbsp; 


                              <%if(Integer.parseInt((String)rs.getString("lei"))==1){%>[��Ӧ��Ϣ]<%}%>
                              <%if(Integer.parseInt((String)rs.getString("lei"))==2){%><%if (rs.getString("fast").compareTo("1")==0){out.print("<font color=red>[����]</font>");}%>[����Ϣ]<%}%>
                              <%if(Integer.parseInt((String)rs.getString("lei"))==3){%>[������Ϣ]<%}%>
                              <%if(Integer.parseInt((String)rs.getString("lei"))==4){%>[������Ϣ]<%}%>
                              
                              
                              </font></TD>
</TR>
<TR height="30"> 
<TD><a href="../../sj/sjxx.jsp?id=<%=rs.getString("id")%>" target="_blank">[<font color="#FF6600">��ϸ��Ϣ</font>]</a></TD> 
</TR> 
<TR><TD height="1"></TD></TR>
<TR><TD height="10" background="images/line_gr.gif"></TD></TR>
</TBODY>
</TABLE>
</center>
</div>


                   
<%
}
%>
   



<%
rs=stmt.executeQuery("SELECT count(*) from sjxx where memid='"+memid+"' order by id desc");
while(rs.next()) i = rs.getInt(1) ;
%>



<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
</table></TD></TR></TABLE>
</center>
</div>
<font color="#000000">�ܹ�</font><font color="#FF0000"><%=i%></font><font color="#000000">����Ϣ</font> 
��<font color="#000000"><%=(i+20)/20%>ҳ</font>&nbsp;&nbsp;��ǰΪ<font color="#000000">��</font><font color="#FF0000"><%=pageInt%></font><font color="#000000">ҳ</font> &nbsp;&nbsp;ת����&nbsp;<%for(int j=1;j<(i+40)/20;j++){%><a href="syjh.jsp?page=<%=j%>&id=<%=memid%>"><font color=red><%=j%></font></a>&nbsp;<%}%>ҳ
                                                                                </font></TD></TR></TBODY></TABLE>
</div>
</TD></TR>
</TBODY></TABLE></TD></TR></TBODY></TABLE>
</TD></TR></TBODY></TABLE></DIV>







<%
rs=stmt.executeQuery("SELECT * from qyml where id='"+memid+"'");
rs.next();
%>









<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="772" id="AutoNumber1" height="32">
<tr>
<td width="615" valign="bottom" background="images/mb21.gif">
<div align="center">
<center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4">
<tr>
<td width="100%">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber12">
<tr>
<td width="25%">
<p align="center">��</td>
<td width="75%">
<p align="center"><font color="#FFFFFF">��Ȩ���У�&copy;<%=rs.getString("qymc")%></font></td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</div>
</td>
<td width="157" valign="bottom">
<map name="FPMap0">
<area href="javascript:window.scroll(0,-360)" shape="rect" coords="0, 4, 125, 31">
</map>
<img border="0" src="images/top1.gif" usemap="#FPMap0" width="158" height="32" alt="�ص�ҳ��"></td>
</tr>
</table>
</center>
</div>
</BODY></HTML>



















