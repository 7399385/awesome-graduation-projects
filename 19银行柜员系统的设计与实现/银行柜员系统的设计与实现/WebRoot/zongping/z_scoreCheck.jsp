<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>

<%
    String z_Loginmessage=(String)session.getValue("z_loginSign");
    String adminID=(String)session.getValue("adminID");    
    if(z_Loginmessage!="OK")
    {
	response.sendRedirect("index4.jsp");
    }
%>
<jsp:useBean id="z_sortItem" scope="page" class="firm.firm"/>
<%
    String sort=request.getParameter("SubSort");
	String subSort1=sort.substring(0,2);
	String subSort2=sort.substring(2,4);
	String str="";
	String sql="";
        String sql1="";
	if(sort.compareTo("0000")==0){
	    sql="select * from I_s_item as x order by (select sum(score6) from I_distribute as y where y.itemID=x.itemID) desc";
	    sql1="select count(*)as cnt from I_s_item";
        str="ȫ��";
	}
	else if(subSort2.compareTo("00")==0){
	    sql="select * from I_s_item as x where sort1 like '"+subSort1+"__"+"' or sort2 like '"+subSort1+"__"+"' order by (select sum(score6) from I_distribute as y where y.itemID=x.itemID) desc";
	    sql1="select count(*)as cnt from I_s_item where sort1 like '"+subSort1+"__"+"' or sort2 like '"+subSort1+"__"+"'";
        str="����";
	}
	else{
	    sql="select * from I_s_item as x where sort1='"+sort+"' or sort2='"+sort+"' order by (select sum(score6) from I_distribute as y where y.itemID=x.itemID) desc";
	    sql1="select count(*)as cnt from I_s_item where sort1='"+sort+"' or sort2='"+sort+"'";
	    str="����";
	}
	ResultSet rs=z_sortItem.executeQuery(sql);

    int pageLine=20;
    int totalRec=0;
    int intPage=1;
    int i;
    if (request.getParameter("page")!=null)
    intPage=Integer.parseInt(request.getParameter("page"));
    try{
        ResultSet countrs=z_sortItem.executeQuery(sql1);
        if(countrs.next())
            totalRec=countrs.getInt("cnt");
        countrs.close();
        z_sortItem.closeStmt();
    }
    catch(Exception e){
        e.printStackTrace();
    }
    int intPageCount=0;
    intPageCount=(totalRec+pageLine-1)/pageLine;
%>

<html>
<head>
<title>��Ŀ����</title>
<style>
<!--
:link {color:#000099}
:visited {color:#000099}
:active {color:#000099}
A:link,A:visited,A:active {text-decoration:none}
//-->
</style>
<SCRIPT language=javascript>
<!--
OptSort = new Array(
    "0100","��ѧ",
	"0101","��ѧ",
	"0200","����ѧ",
	"0201","���۾���ѧ",
	"0202","Ӧ�þ���ѧ",
	"0300","��ѧ",
	"0301","��ѧ",
	"0302","����ѧ",
	"0303","���ѧ",
	"0304","����ѧ",
	"0400","����ѧ",
	"0401","����ѧ",
	"0402","����ѧ",
	"0403","����ѧ",
	"0500","��ѧ",
	"0501","�й�������ѧ",
	"0502","���������ѧ",
	"0503","���Ŵ���ѧ",
	"0504","����ѧ",
	"0600","��ʷѧ",
	"0601","��ʷѧ",
	"0700","��ѧ",
	"0701","��ѧ",
	"0702","����ѧ",
	"0703","��ѧ",
	"0704","����ѧ",
	"0705","����ѧ",
	"0706","������ѧ",
	"0707","�����ѧ",
	"0708","��������ѧ",
	"0709","����ѧ",
	"0710","����ѧ",
	"0711","ϵͳ��ѧ",
	"0712","��ѧ����ʷ",
	"0800","��ѧ",
	"0801","��ѧ",
	"0802","��е����",
	"0803","��ѧ����",
	"0804","������ѧ�뼼��",
	"0805","���Ͽ�ѧ�빤��",
	"0806","ұ�𹤳�",
	"0807","�������̼�����������",
	"0808","��������",
	"0809","���ӿ�ѧ�뼼��",
	"0810","��Ϣ��ͨ�Ź���",
	"0811","���ƿ�ѧ�빤��",
	"0812","�������ѧ�뼼��",
	"0813","����ѧ",
	"0814","��ľ����",
	"0815","ˮ������",
	"0816","����ѧ�뼼��",
	"0817","��ѧ�����뼼��",
	"0818","������Դ����ʹ���",
	"0819","��ҵ����",
	"0820","ʯ������Ȼ������",
	"0900","ũѧ",
	"0901","����ѧ",
	"0902","԰��ѧ",
	"0903","ũҵ��Դ����",
	"0904","ֲ�ﱣ��",
	"0905","����ѧ",
	"0906","��ҽѧ",
	"0907","��ѧ",
	"0908","ˮ��",
	"1000","ҽѧ",
	"1001","����ҽѧ",
	"1002","�ٴ�ҽѧ",
	"1003","��ǻҽѧ",
	"1004","����������Ԥ��ҽѧ",
	"1005","��ҽѧ",
	"1006","����ҽ���",
	"1007","ҩѧ",
	"1008","��ҩѧ",
	"1100","����ѧ",
	"1101","����",
	"1200","����ѧ",
	"1201","�����ѧ�빤��",
	"1202","���̹���");
	
function showMainOpt()
{
	var i,start,step,len,a,args=showMainOpt.arguments;
	a = args[0];
	len = a.length;
	start = (args.length>=2)?args[1]:0;
	step = 2;

	for(i=start;i<len;i+=step)
	{
		if(a[i].substr(a[i].length-2) == "00")
			document.writeln("<option value="+a[i]+">"+a[i+1]+"</option>");
	}
}

function showSubOpt()
{
	var i,len,start,step,s1,s2,a,args=showSubOpt.arguments;
	var mainVal,val,name;
	a=args[0];
	s1=args[1];
	s2=args[2];
	start=0;
	step=2;
	IsAll = (args.length>=4)?args[3]:false;
	len=a.length;
	mainVal=s1.options[s1.selectedIndex].value;
	mainVal=mainVal.substr(0,2);

	for(i=s2.length-1;i>=0;i--)
	{
		s2.options[i]=null;
	}

	if(Number(mainVal)!=0)
	{
		for(i=start;i<len;i+=step)
		{
			val = a[i];
			name = a[i+1];
			if(val.substr(0,2)==mainVal)
			{
					if(val.substr(val.length-2) == "00")s2.options[s2.length]=new Option("ȫ��",val,false,false);
					else s2.options[s2.length]=new Option(name,val,false,false);
			}
		}
	}
}
function showSort()
{
	var i,len,start,step,s1,a,args=showSort.arguments;
	var name;
	a=args[0];
	s1=args[1];
	start=0;
	step=2;
	len=a.length;
	for(i=0;i<len;i+=step)
	{
		if(a[i]==s1)
		{
		    name=a[i+1];
			break;
		}
		else name="";
	}
	document.writeln(name);
}
//-->
</SCRIPT>
</head>

<body bgcolor="#FFFFFF" text="#000000">
<div align="center">
  <table border="0" cellspacing="0" cellpadding="0" width="600">
    <tr>
      <td bgcolor="#4f71b8"> 
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr bgcolor="#FFFFFF"> 
            <td colspan="3">&nbsp;</td>
            </tr>
            <tr> 
              <td colspan="3"></td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td colspan="3">&nbsp;</td>
            </tr>
            <tr> 
              
            <td width="33%">&nbsp;</td>
              
            <td bgcolor="#FFFFFF"> 
              <div align="center"><img src="../images/z_itemSetup.gif" width="112" height="22"></div>
            </td>
              
            <td width="33%">&nbsp;</td>
            </tr>
          </table>
          
        <table width="100%" border="0" cellspacing="1" cellpadding="0" height="120">
          <tr>
              
            <td height="179" bgcolor="#FFFFFF"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="5">&nbsp;</td>
                </tr>
              </table>
              <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center" height="151">
                <tr>
                  <td>
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          
                        <td><font color="#000099">ר�ҷ������������</font></td>
                        </tr>
                      </table>
				  <form name=theform method=post action="z_scoreCheck.jsp">
                      <table width="100%" border="0" cellspacing="1" cellpadding="1" align="center">
                        <tr> 
                          <td colspan="2" bgcolor="#d9d8dc"></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" colspan="2" align="center"> 
                            <p>&nbsp;</p>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center" width="25%"><font color="#000099" size="2">ѡ����Ŀ���</font></td>
                          <td>
                            <select name=Sort onChange="JavaScript:showSubOpt(OptSort,this,theform.SubSort)" style="WIDTH:200px">
                              <option selected value="0000">---��ѡ��---</option>
                              <script language="javascript">showMainOpt(OptSort);</script>
                            </select>
                            <select name=SubSort style="WIDTH:200px">
                              <option selected value="0000">---��ѡ��---</option>
                            </select>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center" colspan="2">&nbsp; </td>
                        </tr>
                        <tr bgcolor="#d9d8dc" align="center"> 
                          <td colspan="2"> 
                            <input type=image src="../images/refer.gif" width="62" height="22" name="refer">
                          </td>
                        </tr>
                      </table>
				  </form>
				    <font size="2" color="#000099">��*&nbsp;<script language="javascript">showSort(OptSort,"<%=sort%>");</script>*<%=str%>��ѯ</font><br>
                    <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#CCCCCC">
                      <tr> 
                        <td width="45%" bgcolor="#d9d8dc"><font size="2" color="#000099">��Ŀ����</font></td>
                        <td width="11%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר��һ</font></td>
                        <td width="11%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר�Ҷ�</font></td>
                        <td width="11%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר����</font></td>
                        <td width="11%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר����</font></td>
                        <td align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר����</font></td>
                      </tr>
                      <% 
                                                     if (intPageCount>0)
                                                     {
                                                         for(i=1;i<=(intPage-1)*pageLine;i++)
                                                             rs.next();
                                                         for(i=1;i<=pageLine;i++){
                                                             if(rs.next()){
								 String itemID=rs.getString("itemID");
                                 String item_name=rs.getString("item_name");
								 String score[]={"&nbsp;","&nbsp;","&nbsp;","&nbsp;","&nbsp;"};
								 String expertID[]={"","","","",""};
								 String name[]={"δ����","δ����","δ����","δ����","δ����"};
								 int k=0;
								 String sql2="select * from I_distribute where itemID='"+itemID+"'";
								 ResultSet rs2=z_sortItem.executeQuery(sql2);
								 while(rs2.next())
								 {												    
								 	  expertID[k]=rs2.getString("identityID");
									  name[k]=rs2.getString("expert_name");
									  score[k]=rs2.getString("score6");
									  k++;
								 }
								 String color0="";
								 String color1="";
								 String color2="";
								 String color3="";
								 String color4="";
								     if(score[0].compareTo("0")==0||name[0].compareTo("δ����")==0)
									 { color0="#ff0000";}
									 else { color0="#000099";}
								     if(score[1].compareTo("0")==0||name[1].compareTo("δ����")==0)
									 { color1="#ff0000";}
									 else { color1="#000099";}
								     if(score[2].compareTo("0")==0||name[2].compareTo("δ����")==0)
									 { color2="#ff0000";}
									 else { color2="#000099";}
								     if(score[3].compareTo("0")==0||name[3].compareTo("δ����")==0)
									 { color3="#ff0000";}
									 else { color3="#000099";}
								     if(score[4].compareTo("0")==0||name[4].compareTo("δ����")==0)
									 { color4="#ff0000";}
									 else { color4="#000099";}
						  %>
                      <tr> 
                        <td><font size="2" color="#000099"><a href="z_showItem.jsp?itemID=<%=itemID%>" target="_blank"><%=item_name%></a>&nbsp;</font></td>
                        <td align="center"><font size="2" color="<%=color0%>"><a href="z_expertSetup.jsp?itemID=<%=itemID%>&&identityID=<%=expertID[0]%>" target="_blank"><%=name[0]%></a>&nbsp;<%=score[0]%></font></td>
                        <td align="center"><font size="2" color="<%=color1%>"><a href="z_expertSetup.jsp?itemID=<%=itemID%>&&identityID=<%=expertID[1]%>" target="_blank"><%=name[1]%></a>&nbsp;<%=score[1]%></font></td>
                        <td align="center"><font size="2" color="<%=color2%>"><a href="z_expertSetup.jsp?itemID=<%=itemID%>&&identityID=<%=expertID[2]%>" target="_blank"><%=name[2]%></a>&nbsp;<%=score[2]%></font></td>
                        <td align="center"><font size="2" color="<%=color3%>"><a href="z_expertSetup.jsp?itemID=<%=itemID%>&&identityID=<%=expertID[3]%>" target="_blank"><%=name[3]%></a>&nbsp;<%=score[3]%></font></td>
                        <td align="center"><font size="2" color="<%=color4%>"><a href="z_expertSetup.jsp?itemID=<%=itemID%>&&identityID=<%=expertID[4]%>" target="_blank"><%=name[4]%></a>&nbsp;<%=score[4]%></font></td>
                      </tr>
                      <%
                                                             }
                                                         }
						     }
					  %>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">                      
                      <tr bgcolor="#d9d8dc"> 
                        <td colspan="3" bgcolor="#d9d8dc">&nbsp;</td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                        <%
                            out.print("<tr>");
                            if(intPageCount*pageLine<totalRec)
                                intPageCount++;
                            if(intPage>intPageCount)
                                intPage=intPageCount;
                            if(intPage<1)
                                intPage=1;
                            out.print("<form method='post' name=fPageNum action='z_scoreCheck.jsp?SubSort="+sort+"'>");
                            out.print("<p align='left'><font color='#000099'> ��ҳ</font>&nbsp;");
                            if(intPage<2)
                                out.print("<font color='#000099'>��ҳ ��һҳ </font>");
                            else{
                                out.print("<a href='z_scoreCheck.jsp?page=1&&SubSort="+sort+"'><font color='#000099'>��ҳ</font></a>&nbsp;");
                                out.print("<a href='z_scoreCheck.jsp?page="+(intPage-1)+"&&SubSort="+sort+"'><font color='#000099'>��һҳ</font></a>&nbsp;");
                            }
                            if(intPage-intPageCount>=0)
                                out.print("<font color='#000099'> ��һҳ βҳ</font>");
                            else{
                                out.print("<a href='z_scoreCheck.jsp?page="+(intPage+1)+"&&SubSort="+sort+"'><font color='#000099'>��һҳ</font></a>&nbsp;<a href='z_scoreCheck.jsp?page="+intPageCount+"&&SubSort="+sort+"'><font color='#000099'>βҳ</font></a>");
                            }
                            out.print("&nbsp;<font color='#000099'>ҳ��</font>��<strong><font color='#000099'>"+intPage+"/"+intPageCount+"</font></strong><font color='#000099'>ҳ</font>");
                            out.print("&nbsp;<font color='#000099'>��</font><b><font color='#000099'>"+totalRec+"</font></b><font color='#000099'>����Ŀ</font><b><font color='#000099'>"+pageLine+"</font></b><font color='#000099'>��/ҳ</font>");
                            out.print("<font color='#000099'>ת����</font><input type='text' name='page' size=2 maxlength=10  class=smallInput value="+intPage+">");
                            out.print("<font color='#000099'>ҳ</font><input class=buttonface type='submit' value='GO' name='cndok'></span></p></form>");
                            out.print("</td>");
                            out.print("</tr>");
                         %>
                      <tr align="center"> 
                        <td bgcolor="#d9d8dc" colspan="3"><INPUT onclick=javascript:window.close(); type=image src="../images/close.gif" width="62" height="22"></td>
                      </tr>
                    </table>              
                  </td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>
            </td>
            </tr>
          </table>        
      </td>
    </tr>
  </table>
</div>
</body>
</html>
