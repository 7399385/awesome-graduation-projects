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
.STYLE2 {color: #000000}
.STYLE3 {color: #FF0000}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<head>
<title><%= Web_Name %></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="title" content="Charles">
<META content="ԭ����� ��ҳ���� ������� �����ƹ� ����ע�� domain domain domain domain homepage homepage homepage homepage web hosting web hosting web hosting" name=keywords>
<META content=ԭ�����,�ṩ���ʹ�������ע�ᣬ��������������ע�᣻�����������ռ�����ã��Լ����������ҳ�ȷ��� name=description>
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

<body>
<!--#include file="../inc/top2.asp" -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="253"><img src="../images/product_03.jpg" width="253" height="598"></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="../images/zxyy.jpg" width="750" height="83"></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="38"><img src="../images/product_05.jpg" width="38" height="460"></td>
          <td width="642" valign="top"><br>
          <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#666666" bgcolor="#666666">
		  <form name="addform" action="index.asp?action=ok" method="post">
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><font 
                size="2">ԤԼ�ˣ�<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input  id="order13" maxlength="10" size="10" name="order1"  />
                    <font 
                  size="2">(������) </font><span class="STYLE3">*</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ���룺
                    <input id="order23" size="15"  name="order2"/>
                    </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><font size="2">�Ա�<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input 
                  type="radio" checked="checked" value="��" name="order3" />
                    ��ʿ
                    <input type="radio" 
                  value="Ů" name="order3" />
                    Ůʿ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;�䣺
                    <input id="order42" maxlength="2" size="4" name="order4" msg="����ֻ����Ϊ����" 
                  datatype="Number" require="false" />
                    </font> </span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><font 
size="2">������<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
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
                    </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><font 
                size="2">�绰��<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2">
                    <input  id="order63" maxlength="13" size="15" name="order6"  />
                    (��ͥ)
                    <input id="order82" 
                  maxlength="13" size="15" name="order8"  />
                    (�ֻ�) </span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><font 
                  size="2">E-mail��<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input 
                  id="order92" maxlength="50" size="40" name="order9" />
                    </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td height="25" colspan="2" bgcolor="#FFFFFF"><div align="left" class="unnamed4 STYLE2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����������</strong></div></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="unnamed4 STYLE2">����д����ϵ��<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input  id="order10_122" maxlength="10" size="10" name="order10_1"  />
                    Ԫ (����д����) </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2">��ɴд����ϵ��<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input  id="order10_222" maxlength="10" size="10" name="order10_2"  />
                    Ԫ (����д����) </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2">����д����ϵ��<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input  id="order10_322" maxlength="10" size="10" name="order10_3"  />
                    Ԫ (����д����) </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right" class="STYLE2"><font 
                  size="2">Ԥ���������ڣ�<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <SCRIPT>
           											 curdate= new Date();
           											 iyear=curdate.getYear();
      										         imon=1+curdate.getMonth();
            										 iday=curdate.getDate();
       											     thisday=""+iyear+"-"+imon+"-"+iday;
         											 arrowtag("order11",thisday);
        										  </SCRIPT>
                    <span class="STYLE3">*</span>&nbsp; Ԥ������ʱ�䣺
                    <input 
                  type="radio" checked="checked" value="����" name="order12" />
                    ����
  <input type="radio" 
                  value="����" name="order12" />
                    ����
  <input type="radio" value="����" 
                  name="order12" />
                    ����</font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="91" bgcolor="#FFFFFF"><div align="right" class="STYLE2">
                <p align="right"><font size="2">�ر�˵����<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong></font></p>
                      <p align="right"><font 

                size="2">(�ɲ���)<strong><font 
                  size="2">&nbsp;&nbsp;</font></strong>��</font></p>
                  </div></td>
                  <td width="574" height="91" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <textarea id="textarea3" name="order13" rows="5" cols="40"></textarea>
                    </font></span></td>
              </tr>
            <tr bgcolor="#393738" class="unnamed4">
              <td width="154" height="25" bgcolor="#FFFFFF"><div align="right"><span class="STYLE2"></span></div></td>
                  <td width="574" height="25" bgcolor="#FFFFFF"><span class="STYLE2"><font size="2">
                    <input type="submit" value="�ύԤԼ" name="Submit" />
  &nbsp;
                    <input type="reset" value="������д" name="Submit" />
                    </font></span></td>
              </tr>
			  </form>
          </table></td><td><img src="../images/product_07.jpg" width="70" height="460"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="../images/product_08.jpg" width="750" height="55"></td>
        </tr>
      </table></td>
  </tr>
</table>
<!--#include file="../inc/end2.asp" -->
</body>
</html>
 
 
 
 
 
 
 
 
 
 
 






