<!--#include file="../inc/conn.asp"-->
<%
if request("action")="ok" then
   if request("order1")="" then
   Response.Write "<script>alert('������ԤԼ��');history.go(-1);</Script>"
   Response.End
   end if
   if request("order6")="" then
   Response.Write "<script>alert('������̶��绰');history.go(-1);</Script>"
   Response.End
   end if
   if request("order10_1")="" and request("order10_2")="" and request("order10_3")="" then
   Response.Write "<script>alert('��ѡ���κ�һ����ϵ');history.go(-1);</Script>"
   Response.End
   end if
   if request("order10_1")<>"" and IsNumeric(request("order10_1"))=false then
   response.write"<script>alert('����д������');history.go(-1);</script>"
   response.end
   end if
   if request("order10_2")<>"" and IsNumeric(request("order10_2"))=false then
   response.write"<script>alert('����д������');history.go(-1);</script>"
   response.end
   end if
   if request("order10_3")<>"" and IsNumeric(request("order10_3"))=false then
   response.write"<script>alert('����д������');history.go(-1);</script>"
   response.end
   end if
   if request("order11")="" then
   Response.Write "<script>alert('������Ԥ����������');history.go(-1);</Script>"
   Response.End
   end if
   set res=server.createobject("adodb.recordset") 
   sql="select * from Net_Order"
   res.open sql,conn,1,3
   res.addnew
   res("order1")=request("order1")
   res("order2")=request("order2")
   res("order3")=request("order3")
   res("order4")=request("order4")
   res("order5")=request("order5")
   res("order6")=request("order6")
   res("order7")=request("order7")
   res("order8")=request("order8")
   res("order9")=request("order9")
   if request("order10_1")<>"" then
   order10=order10&"����д����ϵ:��"&request("order10_1")
   end if
   if request("order10_2")<>"" then
   order10=order10&"<br>��ɴд����ϵ:��"&request("order10_2")
   end if
   if request("order10_3")<>"" then
   order10=order10&"<br>����д����ϵ:��"&request("order10_3")
   end if
   res("order10")=order10
   res("order11")=request("order11")
   res("order12")=request("order12")
   res("order13")=request("order13")
   res.update
   res.close
   response.write "<script language=javascript>alert('��Ķ����Ѿ��ɹ��ύ��');window.location='index.asp';</script>"
   response.end
end if
%>
<html>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
<head>
<title><%= Web_Name %></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="title" content="Charles">
<META content="ԭ����� ��ҳ���� ������� �����ƹ� ����ע�� domain domain domain domain homepage homepage homepage homepage web hosting web hosting web hosting" name=keywords>
<META content=ԭ�����,�ṩ���ʹ�������ע�ᣬ��������������ע�᣻�����������ռ�����ã��Լ����������ҳ�ȷ��� name=description>
<STYLE type=text/css>BODY {
	SCROLLBAR-FACE-COLOR: #333333; FONT-SIZE: 9pt; SCROLLBAR-HIGHLIGHT-COLOR: #666666; SCROLLBAR-SHADOW-COLOR: #000000; SCROLLBAR-3DLIGHT-COLOR: #666666; SCROLLBAR-ARROW-COLOR: #eeeeee; SCROLLBAR-TRACK-COLOR: #000000; FONT-FAMILY: ����; SCROLLBAR-DARKSHADOW-COLOR: #000000
}
</STYLE>
<SCRIPT src="../JS/Date.js"></SCRIPT>
<script language="javascript">
function arrowtag(namestr,valuestr){
      istr=unescape('%u25bc');          
	  document.write("<input type='text' name='"+namestr+"' value='"+valuestr+"' size='10' style='text-align: center;'><input style='font-size:8pt;font-family: ����;' type='button' value='"+istr+"'onclick='fPopCalendar("+namestr+","+namestr+");return false'>");
}
</script>
<script language="JavaScript">
<!--
function fucCheckNUM(NUM)
{
var i,j,strTemp;
strTemp="0123456789";
if ( NUM.length== 0)
return 0
for (i=0;i<NUM.length;i++)
{
j=strTemp.indexOf(NUM.charAt(i)) ; 
if (j==-1)
{
//˵�����ַ���������
return 0;
}
}
//˵��������
return 1;
}


function CheckValidForm() {

if( addform.order1.value =="") {
alert("������ԤԼ��")
addform.order1.focus()
return false;
}
if( addform.order6.value =="") {
alert("������̶��绰")
addform.order6.focus()
return false;
}
if( addform.order10_1.value =="" && addform.order10_2.value =="" && addform.order10_3.value =="") {
addform.order10_1.focus()
alert("��ѡ���κ�һ����ϵ")
return false;
}
if( addform.order10_1.value !="" || !fucCheckNUM(addform.addform.order10_1.value)) {
alert("����д����")
addform.order10_1.focus()
return false;
}
if( addform.order10_2.value !="" || !fucCheckNUM(addform.addform.order10_2.value)) {
alert("����д����")
addform.order10_2.focus()
return false;
}
if( addform.order10_3.value !="" || !fucCheckNUM(addform.addform.order10_3.value)) {
alert("����д����")
addform.order10_3.focus()
return false;
}
return true;
}
// -->
</script>
</head>

<body bgcolor="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form name="addform" action="index.asp?action=ok" method="post">
		<table width="763" height="108" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="middle" background="../images/d1.jpg">&nbsp;&nbsp;&nbsp;</td>
          </tr>
        </table>
		<table width="763" border="0" align="center" cellpadding="0" cellspacing="0" background="../images/d2.jpg">
          <tr>
            <td align="center" valign="top"><table width="728" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#666666" bgcolor="#666666">
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><span class="STYLE1"><font 
                  size="2"><font color="#ffffff">����д��ʵ��Ϣ&nbsp;&nbsp;</font></font></span></div></td>
                <td width="574" height="35">&nbsp;</td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" 
                size="2">ԤԼ�ˣ�<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input  id="order13" maxlength="10" size="10" name="order1"  />
                  <font color="#000000"><font color="#ffffff" 
                  size="2">(������) </font></font></font><font size="2"><span class="STYLE2"><font color="#ffffff">*</font></span></font><font color="#ffffff" size="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ���룺
                  <input id="order23" size="15"  name="order2"/>
                </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" size="2">�Ա�<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input 
                  type="radio" checked="checked" value="��" name="order3" />
      ��ʿ
      <input type="radio" 
                  value="Ů" name="order3" />
      Ůʿ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;�䣺
      <input id="order42" maxlength="2" size="4" name="order4" msg="����ֻ����Ϊ����" 
                  datatype="Number" require="false" />
                </font><font color="#ffffff" 
                  size="2">&nbsp; </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" 
size="2">������<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <select 
                  name="order5" id="select2">
                    <option value="������" selected="selected">������</option>
                    <option 
                    value="��ţ��">��ţ��</option>
                    <option value="˫����">˫����</option>
                    <option value="��з��">��з��</option>
                    <option 
                    value="ʨ����">ʨ����</option>
                    <option value="��Ů��">��Ů��</option>
                    <option value="�����">�����</option>
                    <option 
                    value="��Ы��">��Ы��</option>
                    <option value="������">������</option>
                    <option value="Ħ����">Ħ����</option>
                    <option 
                    value="ˮƿ��">ˮƿ��</option>
                    <option value="˫����">˫����</option>
                  </select>
                </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" 
                size="2">�̶��绰��<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" >
                  <input  id="order63" maxlength="13" size="15" name="order6"  />
      (סլ)</font><font color="#ffffff" ><font color="#ffffff">*</font>
      <input 
                  id="order72" maxlength="13" size="15" name="order7" require="false" />
      (��λ�绰)
      <input id="order82" 
                  maxlength="13" size="15" name="order8"  />
      (�ֻ�) </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" 
                  size="2">E-mail��<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input 
                  id="order92" maxlength="50" size="40" name="order9" />
                </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td height="35" colspan="2"><div align="left" class="unnamed4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����������</strong></div></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right" class="unnamed4">����д����ϵ��<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input  id="order10_122" maxlength="10" size="10" name="order10_1"  />
      Ԫ (����д����) </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right">��ɴд����ϵ��<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input  id="order10_222" maxlength="10" size="10" name="order10_2"  />
      Ԫ (����д����) </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right">����д����ϵ��<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input  id="order10_322" maxlength="10" size="10" name="order10_3"  />
      Ԫ (����д����) </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" 
                  size="2">Ԥ���������ڣ�<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <SCRIPT>
           											 curdate= new Date();
           											 iyear=curdate.getYear();
      										         imon=1+curdate.getMonth();
            										 iday=curdate.getDate();
       											     thisday=""+iyear+"-"+imon+"-"+iday;
         											 arrowtag("order11",thisday);
        										  </SCRIPT>
                </font><font size="2"><span class="STYLE2">*</span></font><font color="#ffffff" size="2">����ʽ��YY-MM-DD�� </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"><font color="#ffffff" 
                  size="2">Ԥ������ʱ�䣺<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input 
                  type="radio" checked="checked" value="����" name="order12" />
      ����
      <input type="radio" 
                  value="����" name="order12" />
      ����
      <input type="radio" value="����" 
                  name="order12" />
      ����</font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="91"><div align="right">
                    <p align="right"><font color="#ffffff" size="2">�ر�˵����<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span></font></p>
                    <p align="right"><font color="#ffffff" 
                size="2">(�ɲ���)<span class="STYLE1"><font 
                  size="2"><font color="#ffffff">&nbsp;&nbsp;</font></font></span>��</font></p>
                </div></td>
                <td width="574" height="91"><font color="#ffffff" size="2">
                  <textarea id="textarea3" name="order13" rows="5" cols="70"></textarea>
                </font></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"></div></td>
                <td width="574" height="35"><span class="s"><span class="STYLE2"><font color="#ffffff">����ʵʩȫ��һ��һ��������������ǰԤ������ʱ��</font><font size="2">��</font></span></span></td>
              </tr>
              <tr bgcolor="#393738" class="unnamed4">
                <td width="154" height="35"><div align="right"></div></td>
                <td width="574" height="35"><font color="#ffffff" size="2">
                  <input type="submit" value="�ύԤԼ" name="Submit" />
&nbsp;
      <input type="reset" value="������д" name="Submit" />
                </font></td>
              </tr>
            </table></td>
          </tr>
        </table>
		<table width="614" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><img src="../images/d3.jpg" width="763" height="19"></td>
          </tr>
        </table>
</form>
</body>
</html>
 
 
 
 
 
 
 
 
 
 
 






