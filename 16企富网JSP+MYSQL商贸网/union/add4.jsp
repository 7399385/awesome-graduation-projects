<%@ page contentType="text/html;charset=gb2312" %>


<table cellSpacing="0" cellPadding="0" width="100%" align="center" bgColor="#999999" border="0" height="123">
<tbody>
<tr>
<td bgColor="#ffffff" height=80>
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
<tbody><tr>


<%@ include file="../top.jsp"%>

</table>
   <TABLE cellSpacing=0 cellPadding=0 width="750" align=center 
      bgColor=#ff7d00 border=0>

</tr>

<tr>
<td background="images/title_13.gif" colSpan="3" width="100%">		
<%@ include file="menu.jsp"%>
</td>
              </tr>
              <tr bgColor="#cccccc">
                <td colSpan="3" height="8" width="100%" background="images/de1.gif"></td>
              </tr>
            </tbody>
          </table>
        </td>
      </tr>
    </tbody>
  </table>


<html>
<body topmargin="0" leftmargin="0">
  <table style="BORDER-COLLAPSE: collapse" borderColor="#111111" height="22" cellPadding="0" width="750" align=center border="0" bgcolor="#F0F0F0">
    <tbody>
   
      <form action="search.jsp" method=get name=search><tr>
<input name="finaler" type="hidden" value="1">        <td align=center><font size=3>��վ����:</font>
<input class="ibox" size="70" name="key"><input type="image" alt="��" src="images/search_but.gif" align="absMiddle" border="0" name="I1"> </td>
      </tr></form>
    
   	<tr>
        <td height="9">
<TABLE width=100% border=0 cellPadding=0 cellSpacing=0>
  <TBODY>
  <TR>
    <TD width="25%" bgColor=#a6daf5><SPACER height="1" type="block"></TD>
    <TD width="25%" bgColor=#c0e898><SPACER height="1" type="block"></TD>
    <TD width="25%" bgColor=#f9adbe><SPACER height="1" type="block"></TD>
    <TD width="25%" bgColor=#fed57f><SPACER height="1" type="block"></TD></TR>
  <TR>
    <TD bgColor=#95d3f3><SPACER height="1" type="block"></TD>
    <TD bgColor=#b4e484><SPACER height="1" type="block"></TD>
    <TD bgColor=#f89db2><SPACER height="1" type="block"></TD>
    <TD bgColor=#fece67><SPACER height="1" type="block"></TD></TR>
  <TR>
    <TD bgColor=#7fc9f0><SPACER height="1" type="block"></TD>
    <TD bgColor=#a4de6a><SPACER height="1" type="block"></TD>
    <TD bgColor=#f688a1><SPACER height="1" type="block"></TD>
    <TD bgColor=#fec346><SPACER height="1" type="block"></TD></TR>
  <TR>
    <TD bgColor=#6ec2ee><SPACER height="1" type="block"></TD>
    <TD bgColor=#98da56><SPACER height="1" type="block"></TD>
    <TD bgColor=#f57995><SPACER height="1" type="block"></TD>
    <TD bgColor=#febb2e><SPACER height="1" type="block"></TD></TR>
 </TBODY></TABLE>
<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table2">
			<tr bgColor="#5d90de">
				<td width="20" background="result_back1.gif" bgcolor="#ff6d00">
				<br>
��</td>
				<td vAlign="bottom" background="result_back1.gif" height="30" bgcolor="#ff6d00"><!-- search bar -->
	<font color=ffffff size=3>��վ��¼:���Ĳ�</font>
				</td>
				<td vAlign="button" noWrap align="right" background="result_back1.gif" height="30" bgcolor="#ff6d00">
				
				<a class="title3" href="add.jsp"><img src=images/add.jpg border=0></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
			</td>
      </tr>
    </tbody>
  </table>
  <table style="BORDER-COLLAPSE: collapse" borderColor="#111111" height="181" cellSpacing="0" cellPadding="0" width="750" border="0" align=center>
    <tbody>
      <tr>
        <td vAlign="top" height="181">
        <TABLE cellSpacing=10 cellPadding=0 width="100%" align=center border=0>
        <COLGROUP>
        <COL width="50%">
        <COL width="50%">
        <TBODY>
        <TR class=p6 vAlign=top>
          <TD valign="top">

<font color=red size=3>�ɹ��ύ!</font><br><br>

<font size=3>������Ա���ڶ�ʱ������˲���¼����վ��!������ڹ�վ������λ���������ǵ���������!<br><br>���Ǿͻ�ѹ�վ����������������º͸÷�����<font color=red><b>�ö�</b></font>,�ﵽ��õ�����Ч��!������һ��<img src=images/tj.gif>ͼ��!<br><br><a href=search.jsp?biglei=��������&smalllei=��Ӱ���� target="_blank"><font color=red>�鿴��ʾ>></font></a><br>
<hr><br>

��վ�������Ӵ���:
<input readonly="true" value="<a href=<%=WebUrl%> target=_blank><%=webname%> �̻�����</a>" size=63><br><br>

��վͼƬ���Ӵ���:(����ͼ)

<textarea name="webtext" cols="58" rows="2" id="webtext"><a href=<%=webname%> target=_blank><img src=<%=WebUrl%>/images/smalllogo.gif border=0></a></textarea>

          </TD></TR>




        </TBODY></TABLE>






</td>
<td vAlign="top" height="181" align="right">




<TABLE cellSpacing=0 cellPadding=0 width="300" border=0>
        <TBODY>
        <TR>
          <TD width=26><IMG src="images/index_left5.gif" border=0></TD>
          <TD class=p6 vAlign=bottom width="100%" 
          background=images/index_back5.gif><FONT 
            color=#5c5c5c><B>��վ��¼����:</B></FONT></TD>
          <TD width=12><IMG height=25 src="images/index_right5.gif" 
            width=13 border=0></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="300" border=0>
        <TBODY>
        <TR>
          <TD bgColor=#f0f0f0><font size=3>
<br>��һ��:�Ķ�Э��<br><br>
�ڶ���:ѡ��������վƥ��������<br><br>
������:������д���.<br><br>
<font color=red><b>���Ĳ�:������24Сʱ������¼������վ.</b></font><br><br>
</font>
</TD></TR></TBODY></TABLE>


<TABLE cellSpacing=0 cellPadding=0 width="300" border=0>
<TBODY>
<TR>
<br><br>
<TD bgColor=#fffff>
<a href=<%=WebUrl%> target="_blank"><img src=../images/smalllogo.gif border=0></a>
</TD><td>������¾��ô�ͼƬ���ڹ�վ�ĳߴ��С������!��������ϵ����Ϊ������һ�����ʵ�ͼƬ!</td></TR></TBODY></TABLE>


</td></tr></tbody></table>
<%@ include file="../end.jsp"%>
</body>
</html>

