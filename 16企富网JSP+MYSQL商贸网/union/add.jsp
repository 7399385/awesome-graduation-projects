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
  <table style="BORDER-COLLAPSE: collapse" borderColor="#111111" height="22" cellPadding="0" width="750" border="0" bgcolor="#F0F0F0" align=center>
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
<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table2" align=center>
			<tr bgColor="#5d90de">
				<td width="20" background="result_back1.gif" bgcolor="#ff6d00">
				<br>
��</td>
				<td vAlign="bottom" background="result_back1.gif" height="30" bgcolor="#ff6d00"><!-- search bar -->
	<font color=ffffff size=3>��վ��¼:��һ��</font>
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
<!--#*****-->

<TABLE cellSpacing=0 cellPadding=0 width=100% border=0>
    <TBODY> 
    <TR> 
      <TD bgcolor="#95DC49"> 
        <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
          <tr> 
            <td class="F4" valign="bottom"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="4%" height="38" valign="top"> 
                    <div align="right"><img src="images/jiao1.gif" width="24" height="27"></div>
                  </td>
                  <td width="92%" height="62" valign="bottom"> 
                    <div align="center"><b class="F4"><%=webname%>��վ��¼����Э��</b></div>
                  </td>
                  <td width="4%" height="38" valign="top"> <img src="images/jiao2.gif" width="24" height="27"></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr> 
            <td> 
              <hr size="1" width="400">
              <table width="100%" border="0" cellspacing="0" cellpadding="15">
                <tr> 
                  <td><b><span style="mso-bidi-font-size:10.5pt;
  font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2">һ��</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"> 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;
  mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2"><%=webname%>��վ��¼����Э�飨�³Ʒ���Э�飩��ȷ�������</span></b><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    <br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>��վ��¼������<%=webname%>���в��������˷����ڱ�����Э��������Ҫ�����ṩ��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">ͨ�����<%=webname%>��վ��¼����Ǽǣ��û������������˱�����Э��������ͬ���ܱ�����Э���Լ����ͬʱ���û���֤���ύ����Ϣ��ʵ��׼ȷ����ʱ��������</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">3. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>�������������ж��ڽ������κ�ʱ�������޸ġ����ӻ�ɾ��������Э���Ȩ���������޸ĵ�Э������ɱ�����Э���һ���֡�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'><br>
                    ����</span><span style='mso-bidi-font-size:
  10.5pt;color:black'> </span><span
  style='mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";color:black'><%=webname%>��վ��¼����˵��</span></b></span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;
  color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2"><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">��<%=webname%>ȷ�ϲ���¼����վ������ѡ����վ��¼���ͼ��ƹ�Ĳ�ͬ����������Ӧ�ķ���</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;
  font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman";color:black'> ������ ����͵�¼����</span></b><span lang=EN-US
  style='mso-bidi-font-size:10.5pt;color:black'><br>
                    </span></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">�����κ�վ�������ύ��Υ�����ҹ涨��վ�㣬��<%=webname%>�༭��Ա��ѽ�����վ��¼���������ݿ⣬���뵽���ʵ���Ŀ�¡�</span><br>
                    <span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'>������ �����͵�¼����</span><span lang=EN-US style='mso-bidi-font-size:
  10.5pt;color:black'><o:p></o:p><br>
                    ����</span></b></span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2">Ϊʹ˫����վ���ݻ�����<%=webname%>�ֽ׶ν����б��취������<%=webname%>������վ�������ӻ�<%=webname%>����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">logo</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:";color:black" class="F2">ͼ�����뱾����վ��ҳ�ĺ���λ�ã�<%=webname%>�����Ϊ����վ������վ��¼�����ö�����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p></span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'><br>
                    ������ �շ��͵�¼����<font color=browse>(�ݲ�ʵ��)</font></span></b><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����Ϊʹ������վ�õ����õ������ƹ㣬��ø�������������ǽ�ͨ����¼����ǰ��������վ�Ƽ�����������ɫͻ�����Եȷ�ʽ��ǿ��������վ����Խλ�ã�ͻ����ɫ���Ӷ�������õ������ƹ�Ч�����û��ύ��¼�����<%=webname%>�༭��Ա���ڵ�һʱ���ڽ�������¼��׼����վ��¼���������ݿ⣬���뵽���ʵ���Ŀ�£�����ȡ��Ӧ�ĵ�¼����ѡ�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p></span><br>
                    <span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�û��������<%=webname%>��վ��¼����<%=webname%>���������жϵĻ����Ͼ����Ƿ��û�����վ��¼��<%=webname%>Ŀ¼�С���<%=webname%>�յ��û����ձ�Э���Լ��֧���ķ�����ú�<%=webname%>�Ĺ�����Ա���ڿ���</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">���������ڴ����û��ĵ�¼���󣬲������û������ĵ����ʼ���ַ�������ţ����<%=webname%>������Ա���鿴��Ϊ�û���¼����վ��������¼��׼�������ڴ����и����ܾ���¼��ԭ��</span><br>
                    <span class="F2">����<span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black"></span></span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">3. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����<%=webname%>��վ��¼�����Ҫ���û�ͬ�⣺</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(1) 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�ṩ����վ��ǰ���һ�µ��꾡��׼ȷ�ĵ�¼��Ϣ��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(2) 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">���ύ���������ҳ�ϵ�ָʾ��ʱ֧����Ӧ������á��û�Ӧ���˽⣬֧���÷�����Ϊ��ʹ<%=webname%>�����û�����վ�Ƿ���Ա���¼��������֤�û�����վһ���ᱻ��¼�����<%=webname%>�Ĺ�����Ա�ڲ鿴����Ϊ�û�����վ��������¼��׼��<%=webname%>���˻��û��Ѿ�֧���ĸñʷ�����ã���������Ϣ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p></span><br>
                    <span class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">4. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>��վ��¼����ķ��ø��ݷ������͵Ĳ�ͬ����ͬ��</span><br>
                    <span class="F2">����</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"><span
  lang=EN-US>5. </span></span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>���յ��û�ȫ��֧���ķ������֮������Э���ṩ�涨�ĸ���������<%=webname%>���û��ύ��¼�����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">10</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�������պ���δ�յ��û�֧���ķ�����ã�<%=webname%>��Ȩ�ܾ���¼�û���¼����վ���ɴ˶������ĸ�������<%=webname%>�������κ����Ρ�</span><br>
                    <span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'><br>
                    ������վ��¼��׼</span></b><span lang=EN-US style='mso-bidi-font-size:
  10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    </span></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����μ�<%=webname%>��վ��¼�������վ����ͬʱ�߱�������ͱ�׼��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"> 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����վ�������ʵ���ԵĶ��ص����ݣ������ж���<%=webname%>��վ����������</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"> 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����վ�ϵ��������Ӷ���������Ч�ģ��ұ����ܹ����ӵ���ص����ݣ�<br>
                    ����</span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">3</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"> 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����վ֧�ֶ��������������ÿ�죲��Сʱ�������У�<br>
                    ����</span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">4</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">��</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"> 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����վ���벻�ܰ����κθ���<%=webname%>���жϿ��ܱ����з��ɡ����桢���¡��������϶�Ϊ�Ƿ��ġ����ܷ������ַ��˺͵�����Ȩ���ġ�����<%=webname%>�����ж���Ϊ����ɿ���ԡ������ԡ�Υ����ṫ������׼��Σ��δ�����˵����ݡ���Ʒ�������������Ϣ��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p><br>
                    </o:p></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"></span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>���������κε�������֤�ͳ�ŵ�û���¼����վ����������͵�¼��׼���û���¼����վ���ж����ṩ�����ݡ���Ʒ������ȳе�ȫ�����Ρ�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    <br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'>�ġ�<%=webname%>��Ȩ��������</span><span
  lang=EN-US style='mso-bidi-font-size:10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    ����</span></b></span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1. 
                    </span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>������Ա���ۺϿ����û���¼��������վ���ݵĻ����ϣ���Ȩ�����û���վ�ĵ�¼λ�ã������������<%=webname%>����Ŀ¼��Ӧ����Ŀ�У���<%=webname%>�������������û���վ����λ�ú�Ŀ¼�����Ŀ¼��Ȩ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><span style="mso-spacerun:
  yes"></span>2. </span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>��Ϊ�û�����վ�ṩ��ϸ��׼ȷ����վ���ܡ������������������ڸ���վ�ṩ�Ĳ�Ʒ���������ݻ�������Ϣ��<%=webname%>�����û��ύ����վ�����Ļ����϶������������������֤���յ���վ�������û��ύ����վ����һ�£�����<%=webname%>��Ȩ�������������޸ĸ���վ������Ȩ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">3. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>����������û��������޸�����վ�����ơ�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">URL</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">��ַ���ؼ��֡������ͷ�����Ŀ�����յ��û��޸�����֮����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">���������ڣ�<%=webname%>�Ĺ�����Ա�������޸�ȷ�ϲ��ظ��û�����<%=webname%>�������������жϾ����Ƿ���û�����վ�����޸ļ�����޸ĵ�Ȩ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><span style="mso-spacerun:
  yes"></span>4. </span><span style="mso-bidi-font-size:
  10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>��֤������Ϊ����վ���������ȶ������µĲ��ܷ��ʶ�������վ��<%=webname%>����Ŀ¼��ɾ������<%=webname%>��Ȩ�������ж���ʱɾ������Σ�����Ұ�ȫ��ɫ�顢�������������������Ĳ�Ʒ�����ݡ��������Ϣ����վ���ڴ�������£�<%=webname%>���Ե����ʼ�����ʽ֪ͨ�û������û��Ѿ�֧���ķ�����ý����践����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    <br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'>�塢�û�����˽Ȩ</span><span lang=EN-US
  style='mso-bidi-font-size:10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    </span></b></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>��<%=webname%>�������ϱ����û�����Ϣ���������������û��ĵ�¼��Ϣ���û�ͬ��<%=webname%>Ϊ�˴����������ƹ��Ŀ��ʹ����Щ��Ϣ����Щ���������</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(1)</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">���ݷ��ɻ�˾������</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(2)</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">����ִ�д�Э���Ŀ�ģ�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(3)</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">Ϊ����<%=webname%>��������������Ȩ�������棻</span><span style="mso-bidi-font-size:10.5pt;color:black" class="F2"> 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">���ò��ֵ�Լ����������<%=webname%>����������¶���κ�����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2"><%=webname%>����ʹ���û���������޸Ĺ������ṩ����ϵ��ʽ���û���ϵ�й�<%=webname%>��վ��¼����Ϣ�������û���ϵ�ĵ����ʼ��п��԰�������<%=webname%>����ϵĴ�����Ϣ���Ʒ��Ϣ��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'><br>
                    �����������⳥</span><span lang=EN-US
  style='mso-bidi-font-size:10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    </span></b></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">1. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�û���ʹ��<%=webname%>��վ��¼����е����գ������������ڲ����Ͷ�ʷ��ա�<%=webname%>��վ��¼�Դ˲����κ����͵ı�֤�����۸ñ�֤����ȷ�Ļ�ʾ�ġ�<%=webname%>��վ��¼����֤����һ���������û���Ҫ���û�����ȷ�˽Ⲣͬ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(1)</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�������޷�ʹ�ã�������������<%=webname%>��������������ķ����жϣ�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(2)</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">������ļ�ʱ�԰�ȫ�Ե��µ����ϳ����ʧ�ķ�����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    ����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">(3)</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�û������ϻ����ϵĴ����⵽δ����Ȩ�Ĵ�ȡ������ԭ������֮��ʧ������������������������ʹ�á�������ʧ������������ʧ��<%=webname%>��վ��¼���е��κ�ֱ�ӡ���ӡ��������ر������Ի�ͷ����⳥��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><o:p></o:p><br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">2. 
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�û�ͬ�Ⲣ��ŵ�������û���¼��վ����Υ��������ʵ�����������ַ��������Ϸ�Ȩ������»������������������Ȩ�����󣬰����������ʦ���ã��û���Ӧ��<%=webname%>����ĸ��˾���ӹ�˾��������˾��ְԱ���ɶ�����Ա�ʹ��������⳥�����п��磬��ʹ�������𡣸������Լ����������û����⳥���Ρ�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'><br>
                    �ߡ����ɿ���</span><span lang=EN-US
  style='mso-bidi-font-size:10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    </span></b></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">��������������Ȼ��ԭ��������޷�Ԥ�������Ƶ�ԭ������ɵı�����Э������в��ܡ����ӡ����ֲ��ܣ��κ�һ�������е�ΥԼ���Ρ�</span><br>
                    <br>
                    <span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'>�ˡ�֪ͨ</span><span lang=EN-US
  style='mso-bidi-font-size:10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    </span></b></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">������Э����κ�֪ͨӦ���Ե����ʼ�����ʽ������������ʹ﷽��<%=webname%>������֪ͨӦ��������<span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><span
  style="mso-spacerun: yes">&nbsp; </span><a href="mailto:<%=serverEmail%>"><%=serverEmail%></a></span></span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:";color:black" class="F2">������ʹ﷽Ϊ�û�������֪ͨӦ�����û�ע��ʱ�ṩ����ϵ�˵����ʼ���ַ��</span><br>
                    <br>
                    <span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'>�š���������</span></b><br>
                    <br>
                    </span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">�������������ƹ��͵�¼�Լ���������¼���û���<%=webname%>�Ĺ�����Ա����Э��涨�ķ����ڽ���ǰ��</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">15</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�����������û���ϵ�Ƿ��ӳ����������ˡ�����û��ڷ����ڽ�����</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2">7</span><span style="mso-bidi-font-size:10.5pt;font-family:����;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:";color:black" class="F2">�������պ���δ��<%=webname%>֧����һ�ڷ�����ã�<%=webname%>������վ����Ӧ����վר��������������վ������ͨ����վ���������ݿ��С�</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:black" class="F2"><br>
                    </span><span class="F2"><b><span style='mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  color:black'><br>
                    ʮ�����ɵ����ú͹�Ͻ</span><span
  lang=EN-US style='mso-bidi-font-size:10.5pt;color:black'><o:p></o:p><br>
                    <br>
                    </span></b></span><span style="mso-bidi-font-size:10.5pt;font-family:
  ����;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:";
  color:black" class="F2">����������Э���������Ч�����С����ͼ�����Ľ���������л����񹲺͹����ɣ�˫��ͬ�⽫�����ύ�������ٲ�ίԱ������ٲã����ٲòþ����վֵġ�������Э�����������л����񹲺͹����з�����ִ������²�����Ч����Ӱ���������ֵ�Ч����</span><br>
                    <br>
                    <span lang=EN-US
  style='mso-bidi-font-size:10.5pt;font-family:����'><o:p></o:p></span></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr> 
            <td valign="top">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="4%" height="38" valign="bottom"> 
                    <div align="right"><img src="images/jiao3.gif" width="24" height="27"></div>
                  </td>
                  <td width="92%" height="65" valign="top"> 
                    <div align="center"><span class="F1"><a href="add2.jsp" class="F1"><font size=3>��ͬ��</font></a></span>��������<a href="../union" class="F1">�Ҳ�ͬ��</a></div>
                  </td>
                  <td width="4%" height="38" valign="bottom"> <img src="images/jiao4.gif" width="24" height="27"></td>
                </tr>
              </table>
              <span lang=EN-US
  style='mso-bidi-font-size:10.5pt;font-family:����'><o:p></o:p></span></td>
          </tr>
        </table>
      </TD>
    </TR>
    </TBODY>
  </TABLE>

<!--#*****-->
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
<br><font color=red><b>��һ��:�Ķ�Э��</b></font><br><br>
�ڶ���:ѡ��������վƥ��������<br><br>
������:������д���.<br><br>
���Ĳ�:������24Сʱ������¼������վ.<br><br>
</font>
</TD></TR></TBODY></TABLE>




</td></tr></tbody></table>
<%@ include file="../end.jsp"%>
</body>
</html>



