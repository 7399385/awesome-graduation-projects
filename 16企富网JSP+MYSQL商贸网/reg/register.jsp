<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../top.jsp"%>

<%@ include file="../conn/time.jsp"%>

<SCRIPT language=JavaScript>
//У��user�ĵ�������
function check_id_window(value){	window.open("check_id.jsp?user="+value,"",'toolbar=no,directories=no,scrollbars=0,resizable=1,status=no,menubar=0,width=250,height=100');
}
</SCRIPT>


<script LANGUAGE="JavaScript">
function check()
{

       if (document.Form1.user.value == "")
        {
        alert("����д�����û�����");
		document.Form1.user.focus();
        return (false);
        }

        var filter=/^\s*[.A-Za-z0-9_-]{5,15}\s*$/;
        if (!filter.test(document.Form1.user.value)) { 
                alert("�û�����д����ȷ,��������д����ʹ�õ��ַ�Ϊ��A-Z a-z 0-9 _ - .)���Ȳ�С��5���ַ���������15���ַ���ע�ⲻҪʹ�ÿո�"); 
                document.Form1.user.focus();
                document.Form1.user.select();
                return (false); 
                } 
        
         if (document.Form1.pass.value =="") 
         {
         alert("����д�������룡");
         document.Form1.pass.focus();
         return (false); 
         }
		
		if(document.Form1.confirmPassword.value==""){
		alert("����������ȷ�����룡");
		document.Form1.confirmPassword.focus();
		return (false);
		}
		
        var filter=/^\s*[.A-Za-z0-9_-]{5,15}\s*$/;
        if (!filter.test(document.Form1.pass.value)) { 
                alert("������д����ȷ,��������д����ʹ�õ��ַ�Ϊ��A-Z a-z 0-9 _ - .)���Ȳ�С��5���ַ���������15���ַ���ע�ⲻҪʹ�ÿո�"); 
                document.Form1.pass.focus();
                document.Form1.pass.select();
                return (false); 
                } 
               
		if (document.Form1.pass.value!=document.Form1.confirmPassword.value ){
		        alert("������д�����벻һ�£���������д��"); 
                document.Form1.pass.focus();
                document.Form1.pass.select();
                return (false); 
                } 
                
 if (document.Form1.question.value == "")        
  {        
    alert("������������ʾ���⣡");        
    document.Form1.question.focus();        
    return (false);        
  }        
 if (document.Form1.answer.value == "")        
  {        
    alert("������������ʾ�𰸣�");        
    document.Form1.answer.focus();        
    return (false);        
  }        
                

 if (document.Form1.name.value == "")        
  {        
    alert("����������������");        
    document.Form1.name.focus();        
    return (false);        
  }        

   if (document.Form1.myname.value == "")        
  {        
    alert("����д�������ƣ�");        
    document.Form1.myname.focus();        
    return (false);        
  } 

 
 if (document.Form1.address.value == "")        
  {        
    alert("������������ϵ��ַ��");        
    document.Form1.address.focus();        
    return (false);        
  } 

 if (document.Form1.post.value == "")        
  {        
    alert("�������������룡");        
    document.Form1.post.focus();        
    return (false);        
  }        

 if (document.Form1.tel.value == "")        
  {        
    alert("������������ϵ�绰��");        
    document.Form1.tel.focus();        
    return (false);        
  }         
  
   if (document.Form1.email.value == "")
        {
        alert("���������ĵ����ʼ���ַ��");
		document.Form1.email.focus();
		document.Form1.email.select();
        return (false);
        }

        var filter=/^\s*([A-Za-z0-9_-]+(\.\w+)*@(\w+\.)+\w{2,3})\s*$/;
        if (!filter.test(document.Form1.email.value)) { 
                alert("�ʼ���ַ����ȷ,��������д��"); 
                document.Form1.email.focus();
                document.Form1.email.select();
                return (false); 
                }      
 
  if (document.Form1.qymc.value == "")        
  {        
    alert("����������˾�����ƣ�");        
    document.Form1.qymc.focus();        
    return (false);        
  }  
          
 if (document.Form1.qyjj.value == "")
  {        
    alert("�����빫˾��飡");        
    document.Form1.qyjj.focus();        
    return (false);        
  } 
  
  
  
    document.Form1.submit()
}
</script>
<SCRIPT language=javascript>
  function PopupCatSel()
  {
   var selProdWnd=window.open("select_sort.jsp","new","resizable=yes,width=580,height=320,top=0,scrollbars=yes");
   if(selProdWnd.opener== null) 
   selProdWnd.opener = self;
   return (false);
  }
</SCRIPT>

<head>
</head>
<BODY text=#000000 leftMargin=0 topMargin=0 
marginheight="0" marginwidth="0">
<center>










<TABLE cellSpacing=0 cellPadding=0 width="750" align=center border=0 height=20>
        <TBODY>
        <TR>
          <TD><embed src="../images/icstock.swf" quality=high 
pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" 
type="application/x-shockwave-flash" width=750  height=80></embed></TD></TR>
</TBODY></TABLE>


















<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 style="border-collapse: collapse" bordercolor="#111111">
  <TBODY>
  <TR>
 

    <TD width=774>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
      <tr>
        <td width="100%">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber2" bgcolor="#FFFFFF">
          <tr>
            <td width="100%" style="color: #000; font-family: ����; font-size: 12px">
<CENTER>
<table border="0" style="border-collapse: collapse" bordercolor="#111111" width="750" id="AutoNumber3" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">
       <center>
  <FORM method="POST" action="Registerok.jsp" name="Form1" >     



<INPUT type=hidden  name=dlid size="20" value="<%=(String) session.getAttribute("Did")%>">





<div align="center">
  <center>     
<TABLE  border=0 cellPadding=0 cellSpacing=0 width="64" style="border-collapse: collapse" bordercolor="#111111">
  <TBODY>
  <TR vAlign=top>
     <TD width="779" height="443">
       <center>
      <TABLE border=0  width="750" bordercolor="#3399FF" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" style="border-collapse: collapse" cellspacing="1" cellpadding="0" height="672">
        <TBODY>
                     <tr><TD align=left height="24" colspan="2" width="382">
                       <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="72%" id="AutoNumber4" background="../IMAGES/newmiddle-bg7.gif" height="24">
                         <tr>
                           <td width="100%" height="24" background="newmiddle-bg6.gif">
                           <FONT color=#000000>
                           &nbsp;<IMG 
                  src="../images/bul_arrowGrnSm.gif"></FONT><font class=f12 style="font-size: 10.5pt"><b> 
                           ��д��������</b></font></td>
                         </tr>
                       </table>
                       </TD>
        </CENTER> 
<TD align=left height="24" colspan="2" width="347">
  <p align="center"><FONT class=text9><B>��</B></FONT> 
            <FONT color=red face="verdana, arial" size=1><B>*</B></FONT> <FONT 
            class=text9><B>����Ŀ�Ǳ�����д��</B></FONT></TD>
</tr> 
<CENTER>

        <TR valign="middle">
          <TD align=right width="745" height="12" bgcolor="#ff8a02" colspan="4">
              <p align="right"><font color="#FFffff">ע����Ա�����ظ�ע���ʺţ��������Ա��Ȩɾ����������&nbsp;&nbsp;&nbsp;&nbsp; 
              </font></TD>
          </TR> 
        <tr>
          <TD align=right width="115" height="26" bgcolor="#ff8a02">��Ա��¼����</TD>
          <TD height="26" width="630" colspan="3" bgcolor="#f7fce9">&nbsp;<INPUT class=fongt9a 
                  maxLength=15 size=20 name=user> <FONT color=#990000             
            size=2>*</FONT><font color="#666666">&nbsp;</font><INPUT class=buttons onclick=check_id_window(document.Form1.user.value) type=button value="����ʺ�" name=Check_ID><font color="#666666"> 5-20���ַ���<font face="Arial">A-Z</font>��            
            <font face="Arial"> a-z</font>�� <font face="Arial">            
            0-9</font>����</font></TD>
</tr>
        <TR vAlign="middle"> 
          <TD align=right height="19" width="115" bgcolor="#ff8a02">�� �룺</TD>    
          <TD height="19" width="630" colspan="3" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=20 name=pass type=password size="20"> <FONT             
            color=#990000 size=2>*</FONT><font color="#666666"> 5-20���ַ���<font face="Arial">A-Z</font>��<font face="Arial">a-z</font>��<font face="Arial">0-9</font>���»��ߣ����������ִ�Сд��</font></TD></TR> 
        <TR vAlign="middle"> 
          <TD align=right height="27" width="115" bgcolor="#ff8a02">ȷ�����룺</TD> 
          <TD height="27" width="630" colspan="3" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=20 name=confirmPassword type=password size="20">   
            <FONT color=#990000 size=2>*</FONT></TD>           
        <TR vAlign="middle"> 
          <TD align=right height="48" width="115" bgcolor="#ff8a02">������ʾ���⣺</TD> 
          <TD height="48" width="630" colspan="3" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=20 name=question size="20"> <FONT color=#990000>*</FONT><font color="#666666"> �������������룬��Ҫ�һ������ʱ�����ǵ�ϵͳ��Ҫ�����ش�������⡣<BR>&nbsp;���磬�����԰�������ʾ����Ϊ����ĵ绰������ʲô��</font></TD></TR> 
        <TR vAlign="middle"> 
          <TD align=right height="30" width="115" bgcolor="#ff8a02">������ʾ�𰸣�</TD> 
          <TD height="30" width="630" colspan="3" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=20 name=answer size="20"> <FONT color=#990000>*</FONT><font color="#666666"> ������ĵ绰������65694771�������Ϳ��԰�������ʾ����дΪ��85694771��<BR>&nbsp;�����μ�����𰸣��Ա����붪ʧʱ�ش�ϵͳ�����ʡ�������Ļش���ȷ��ϵͳ�ͻ��Զ���������ʾ��������</font></TD></TR> 
                    
 <tr>
          <TD align=right height="26" width="115" bgcolor="#ff8a02">����������</TD> 
          <TD height="26" width="291" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=100 name=myname size="20"> <FONT color=#990000>
          *</FONT>&nbsp; <INPUT class=f11 name=ch type=radio value="����" checked>����&nbsp;&nbsp; <INPUT class=f11 name=ch type=radio value="Ůʿ">Ůʿ</TD> 
          <TD height="26" width="99" align="center" bgcolor="#ff8a02">����ְ��</TD>     
          <TD height="26" width="253" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=100 name=zw size="20"><FONT color=#990000 size=2>*</FONT></TD> 
                     </tr>
              
                     <tr>
          <TD align=right height="26" width="115" bgcolor="#ff8a02">��ϵ��ַ��</TD> 
          <TD height="26" width="291" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=250 name=address size=35><FONT color=#990000 size=2>*</FONT></TD> 
          <TD height="26" width="99" align="center" bgcolor="#ff8a02">��&nbsp;&nbsp;&nbsp; �ࣺ</TD>     
          <TD height="26" width="253" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=8 name=post size=8><FONT color=#990000 size=2>*</FONT></TD> 
                     </tr>
                     <tr>
          <TD align=right height="29" width="115" bgcolor="#ff8a02"> 
            <p align="right">��&nbsp;&nbsp;&nbsp; 
          ������</TD> 
          <TD height="29" width="291" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 name=tel size=20><FONT color=#990000 size=2>*</TD> 
          <TD height="29" width="99" align="center" bgcolor="#ff8a02">��&nbsp;&nbsp;&nbsp; �棺</TD>     
          <TD height="29" width="253" bgcolor="#f7fce9">&nbsp;</FONT>&nbsp;<INPUT class=f11 name=fax size=20></TD> 
                     </tr>
                   
                     <tr>
          <TD align=right height="28" width="115" bgcolor="#ff8a02">���ĵ����ʼ���</TD> 
          <TD height="28" width="291" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=100 name=email size=30><FONT size=2 color="#800000">*</FONT>&nbsp;</TD>    
          <TD height="28" width="99" bgcolor="#ff8a02" align="center"> 
            <p>��&nbsp;&nbsp;&nbsp; ַ��</TD>    
          <TD height="28" width="253" bgcolor="#f7fce9">&nbsp;<INPUT class=f11 maxLength=100 name=web size=29 value=http://>  
</TD> 
                     </tr>
                     <tr>
          <TD align=right height="28" width="115" bgcolor="#ff8a02">�����Ա���</TD> 
          <TD height="28" width="400" colspan=3 bgcolor="#f7fce9"><INPUT class=f11 name=comeon type=radio value="0" checked>��ѻ�Ա &nbsp; <INPUT class=f11 name=comeon type=radio value="1"><font color=red>��ͨ��Ա</font> <FONT color=#990000 size=2>*</FONT><a href=../qifotong.jsp target="_blank">(�˽���ͨ��Ա�ļ�ֵ)</a></TD>    
                     </tr>
                     <tr>
          <TD align=right height="24" width="100%" colspan="4" bgcolor="#f7fce9">
          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber8">
            <tr>
              <TD align=left height="22" width="382" bgcolor="#FFFFFF">
                       <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="72%" id="AutoNumber4" background="../IMAGES/newmiddle-bg7.gif" height="24">
                         <tr>
                           <td width="100%" height="24" background="newmiddle-bg6.gif">
                           <FONT color=#000000>
                           &nbsp;<IMG 
                  src="../images/bul_arrowGrnSm.gif"></FONT><font class=f12 style="font-size: 10.5pt"><b> 
                           ��д��˾����</b></font></td>
                         </tr>
                       </table>
                       </TD>
<TD align=left height="22" width="347" bgcolor="#FFFFFF">
  ��</TD>
            </tr>
          </table>
                       </TD>
                     </tr>
        <tr> 
          <TD align=right height="28" width="115" bgcolor="#ff8a02">��˾���ƣ�</TD> 
          <TD height="28" width="643" bgcolor="#f7fce9" colspan="3">&nbsp;<INPUT class=f11 maxLength=80 name=qymc size=40><FONT color=#990000 size=2>*</FONT></TD> 
        </tr> 
        
        <tr> 
          <TD align=right height="28" width="115" bgcolor="#ff8a02">��˾���ܣ�</TD> 
          <TD height="28" width="643" bgcolor="#f7fce9" colspan="3">&nbsp;<textarea class=f11 rows="8" name="qyjj" cols="70"></textarea><FONT size=2 color="#800000">*</FONT>&nbsp;</TD>    
        </CENTER> 
<CENTER> 
        </tr> 
        </CENTER> 
        <tr>
          <TD align=right height="12" width="704" colspan="4" bgcolor="#f7fce9"></TD></tr> 
          <tr> 
<CENTER>
          </tr>
          <tr>
        </CENTER>
<CENTER>
          </tr>
          <tr> 
        </CENTER> 
<CENTER> 
          </tr> 
                     <tr>
          <TD align=right height="88" width="745" bgcolor="#f7fce9" colspan="4">
          <center>
            <table border="0" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" width="750" id="AutoNumber6" height="88">
              <tr>
                <td width="100%" height="84" bgcolor="#ff8a02">
<p align="center"><br>
<FONT color=#cc0000><B><span style="font-size: 10.5pt">
<font color="#000080"><a href="item.jsp">����Ķ���������</a></font></u></p>
                <p align="center">
    <input type="button" value="������ͬ������������ע��" onclick="check()"></td>
              </tr>
            </table>
            </center>
                                 </TD>
                     </tr>
          </TBODY></TABLE>
        </center>
              </CENTER>
  </TD></TR>
  </TBODY></TABLE>
  </center>
</div>
    </FORM>
    </td>
  </tr>
</table>
            </CENTER></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </TD>
    </TR>
  </TBODY></TABLE>
  </center>
<%@ include file="../end.jsp"%>