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
	    sql="select * from I_s_item as x order by (select avg(score6) from I_distribute as y where y.itemID=x.itemID) desc";
	    sql1="select count(*) as cnt from I_s_item";
        str="ȫ��";
	}
	else if(subSort2.compareTo("00")==0){
	    sql="select * from I_s_item as x where sort1 like '"+subSort1+"__"+"' or sort2 like '"+subSort1+"__"+"' order by (select avg(score6) from I_distribute as y where y.itemID=x.itemID) desc";
	    sql1="select count(*) as cnt from I_s_item where sort1 like '"+subSort1+"__"+"' or sort2 like '"+subSort1+"__"+"'";
        str="����";
	}
	else{
	    sql="select * from I_s_item as x where sort1='"+sort+"' or sort2='"+sort+"' order by (select avg(score6) from I_distribute as y where y.itemID=x.itemID) desc";
	    sql1="select count(*) as cnt from I_s_item where sort1='"+sort+"' or sort2='"+sort+"'";
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
    "0100","����",
	"0101","������",
	"0200","��Ӫ����",
	"0201","��˾Ӳ����ʩ",
	"0202","Ա����ͨ",
	"0300","Ա��ס��",
	"0301","Ա������",
	"0302","�ڼ��ղ���",
	"0303","��˾��չս��",
	"0304","���ϵͳ",
	"0400","��Ƹ��Ա��",
	"0401","�����²���",
	"0402","��˾�����ƶ�",
	"0403","��˾�������",
	"0500","��˾���¹���",
	"0501","��˾���۲���",
	"0502","��˾�ʼ첿��"	);
	
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
                          
                        <td><img src="../images/z_list2.gif" width="140" height="23" usemap="#Map" border="0"></td>
                        </tr>
                      </table>
				  <form name=theform method=post action="z_sortItem.jsp">
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
                          <td bgcolor="#d9d8dc" align="center" width="25%"><font color="#000099">ѡ����Ŀ���</font></td>
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
                        <td width="36%" bgcolor="#d9d8dc"><font size="2" color="#000099">��Ŀ����</font></td>
                        <td width="8%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר��һ</font></td>
                        <td width="8%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר�Ҷ�</font></td>
                        <td width="8%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר����</font></td>
                        <td width="8%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר����</font></td>
                        <td width="8%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ר����</font></td>
                        <td width="8%" align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ͨ����</font></td>
                        <td align="center" bgcolor="#d9d8dc" width="8%"><font size="2" color="#000099">�ܷ�</font></td>
                        <td align="center" bgcolor="#d9d8dc"><font size="2" color="#000099">ƽ����</font></td>
                      </tr>
                      <% 
							     String ssum="";
						         String savg="";
                                                     if (intPageCount>0)
                                                     {
                                                         for(i=1;i<=(intPage-1)*pageLine;i++)
                                                             rs.next();
                                                         for(i=1;i<=pageLine;i++){
                                                             if(rs.next()){
								 String itemID=rs.getString("itemID");
                                 String item_name=rs.getString("item_name");
								 String sql2="select sum(score6) as ssum,avg(score6) as savg from I_distribute where itemID='"+itemID+"' and score6>0";
								 ResultSet rs2=z_sortItem.executeQuery(sql2);
								 if(rs2.next())
								 {
									  ssum=rs2.getString("ssum");
									  savg=rs2.getString("savg");
									  if(ssum==null){ ssum="&nbsp;";}
									  if(savg==null){ savg="&nbsp;";}
									  else { savg=savg.substring(0,4);}
								 }
								 String expert[]={"&nbsp;","&nbsp;","&nbsp;","&nbsp;","&nbsp;"};
								 int k=0;
								 String sql3="select score6 from I_distribute where itemID='"+itemID+"'";
								 ResultSet rs3=z_sortItem.executeQuery(sql3);
								 while(rs3.next())
								 {												    
								 	  expert[k]=rs3.getString("score6");
									  if(expert[k]==null){ expert[k]="&nbsp;";}
									  k++;
								 }
								 String cMind="";
								 String sql4="select count(mind) as cMind from I_distribute where itemID='"+itemID+"' and mind='����'";
								 ResultSet rs4=z_sortItem.executeQuery(sql4);
								 if(rs4.next()){ cMind=rs4.getString("cMind");}
						  %>
                      <tr> 
                        <td><font size="2" color="#000099"><%=item_name%>&nbsp;</font></td>
                        <td align="center"><font size="2" color="#000099"><%=expert[0]%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=expert[1]%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=expert[2]%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=expert[3]%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=expert[4]%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=cMind%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=ssum%></font></td>
                        <td align="center"><font size="2" color="#000099"><%=savg%></font></td>
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
                            out.print("<form method='post' name=fPageNum action='z_sortItem.jsp?SubSort="+sort+"'>");
                            out.print("<p align='left'><font color='#000099'> ��ҳ</font>&nbsp;");
                            if(intPage<2)
                                out.print("<font color='#000099'>��ҳ ��һҳ </font>");
                            else{
                                out.print("<a href='z_sortItem.jsp?page=1&&SubSort="+sort+"'><font color='#000099'>��ҳ</font></a>&nbsp;");
                                out.print("<a href='z_sortItem.jsp?page="+(intPage-1)+"&&SubSort="+sort+"'><font color='#000099'>��һҳ</font></a>&nbsp;");
                            }
                            if(intPage-intPageCount>=0)
                                out.print("<font color='#000099'> ��һҳ βҳ</font>");
                            else{
                                out.print("<a href='z_sortItem.jsp?page="+(intPage+1)+"&&SubSort="+sort+"'><font color='#000099'>��һҳ</font></a>&nbsp;<a href='z_sortItem.jsp?page="+intPageCount+"&&SubSort="+sort+"'><font color='#000099'>βҳ</font></a>");
                            }
                            out.print("&nbsp;<font color='#000099'>ҳ��</font>��<strong><font color='#000099'>"+intPage+"/"+intPageCount+"</font></strong><font color='#000099'>ҳ</font>");
                            out.print("&nbsp;<font color='#000099'>��</font><b><font color='#000099'>"+totalRec+"</font></b><font color='#000099'>����Ŀ</font><b><font color='#000099'>"+pageLine+"</font></b><font color='#000099'>��/ҳ</font>");
                            out.print("<font color='#000099'>ת����</font><input type='text' name='page' size=2 maxlength=10  class=smallInput value="+intPage+">");
                            out.print("<font color='#000099'>ҳ</font><input class=buttonface type='submit' value='GO' name='cndok'></span></p></form>");
                            out.print("</td>");
                            out.print("</tr>");
                         %>
                      <tr align="center"> 
                        <td bgcolor="#d9d8dc" colspan="3"><input onClick=javascript:window.print(); type=image src="../images/print.gif" width="62" height="22">
<INPUT onclick=javascript:window.close(); type=image src="../images/close.gif" width="62" height="22"></td>
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
<map name="Map">
  <area shape="rect" coords="1,1,69,22" href="z_item.jsp?SubSort=0000">
</map>
</body>
</html>
