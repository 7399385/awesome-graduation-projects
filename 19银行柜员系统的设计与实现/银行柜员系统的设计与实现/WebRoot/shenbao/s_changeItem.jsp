<%@ page language="java" import="java.sql.*" contentType="text/html;charset=GB2312"%>
<%
    String getLoginmessage=(String)session.getValue("loginSign");
    String unit_ID=(String)session.getValue("unitID");    
    if(getLoginmessage!="OK")
    {
        response.sendRedirect("index2.jsp");
    }    
%>
<jsp:useBean id="s_changeitem" scope="page" class="firm.firm"/>
<%
    String ssql="select * from I_itemSetup";
    ResultSet srs=s_changeitem.executeQuery(ssql);
    java.util.Date today=new java.util.Date();
    java.util.Date s_beginDate=new java.util.Date();
    java.util.Date s_finishDate=new java.util.Date();
    if(srs.next())
    {
	s_beginDate=srs.getDate("s_beginDate");
	s_finishDate=srs.getDate("s_finishDate");
    }
    if(today.before(s_beginDate) || today.after(s_finishDate))
    {
        response.sendRedirect("timeOut.jsp");
    }
%>

<%
    String itemID=request.getParameter("itemID");
    String sql="select * from I_s_item where itemID='"+itemID+"'";
    ResultSet rs=s_changeitem.executeQuery(sql);
	//�����������Ͳ���ʼ��
	String item_name1="";     //��Ŀ����
	String sort1="";          //��    ��
	String sort2="";
	String begin_date1="";    //��ֹ����
	String finish_date1="";   //��ֹ����
	String applicant1="";     //�� �� ��
	String grade1="";         //ְ    ��
	String education1="";          //ѧ    ��
	String unit_name1="";     //���ڵ�λ
	String fill_date1="";     //�����
    String purport1="";       //��������о�����
    String status1="";        //�������о���״����
    String future1="";        //Ԥ��Ӧ��ǰ��
    String point1="";         //��Ҫ˼�롢�۵�
    String analysis1="";      //��Ҫ���ݡ��ص���ѵ����
    String way1="";           //�о�����
    String moment1="";        //�׶μ�����Ԥ���о��ɹ�
    String result1="";        //Ԥ���о��ɹ�
    String reference1="";     //������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο�����
    String market1="";        //Ӧ���ƹ���г�����
    String commend_mind1="";  //�Ƽ���λ���
    String expert_mind1="";   //ר������ίԱ�����
    String leading_mind1="";  //�������
    String pass1="";          //�Ƿ�ͨ������
    String sum="";

    if(rs.next())
	{
	    item_name1=rs.getString("item_name");
		sort1=rs.getString("sort1");
		sort2=rs.getString("sort2");
		begin_date1=rs.getString("begin_date");
		finish_date1=rs.getString("finish_date");
		applicant1=rs.getString("applicant");
		grade1=rs.getString("grade");
		education1=rs.getString("education");
		unit_name1=rs.getString("unit_name");
		fill_date1=rs.getString("fill_date");
		purport1=rs.getString("purport");
		status1=rs.getString("status");
		future1=rs.getString("future");
		point1=rs.getString("point");
		analysis1=rs.getString("analysis");
		way1=rs.getString("way");
		moment1=rs.getString("moment");
		result1=rs.getString("result");
		reference1=rs.getString("reference");
		market1=rs.getString("market");
		commend_mind1=rs.getString("commend_mind");
		expert_mind1=rs.getString("expert_mind");
		leading_mind1=rs.getString("leading_mind");
		pass1=rs.getString("pass");
				
		rs.close();
        s_changeitem.closeStmt();
        s_changeitem.closeConn();		
	}
    
		String begin_year=begin_date1.substring(0,4);
	    String begin_month=begin_date1.substring(5,7);
	    String finish_year=finish_date1.substring(0,4);
	    String finish_month=finish_date1.substring(5,7);
	    String fill_year=fill_date1.substring(0,4);
	    String fill_month=fill_date1.substring(5,7);
	    String fill_day=fill_date1.substring(8,10);
		
		//����Ԥ��
        String[] outItem=new String[15];
        String[] money=new String[15];
		String msql1="select * from I_s_money where itemID='"+itemID+"'";
		ResultSet mrs1=s_changeitem.executeQuery(msql1);
		int i=0;
		while(mrs1.next())
		{
		    outItem[i]=mrs1.getString("outItem");
			money[i]=mrs1.getString("sMoney");
			i++;
		}
		for(i=0;i<14;i++)
		{
		    if(outItem[i]==null)
		    {
			outItem[i]="";
			money[i]="";
		    }			
		}

	String sql3="select sum(sMoney) as ssum from I_s_money where itemID='"+itemID+"'";
	ResultSet rs3=s_changeitem.executeQuery(sql3);
	if(rs3.next()){ sum=rs3.getString("ssum");}
%>

<html>
<head>
<title>��Ŀ�걨</title>
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
			if(val.substr(0,2)==mainVal && (IsAll || !IsAll && (val.substr(val.length-2) != "00")))
			{
					s2.options[s2.length]=new Option(name,val,false,false);
			}
		}
	}
}

function GetObjID(ObjName)
{
	var args=GetObjID.arguments;
	var f1=(args.length>1)?args[1]:document.theform;
	for ( var ObjID=0; ObjID < f1.elements.length; ObjID++ )
      if (f1.elements[ObjID].name == ObjName )
      {  return(ObjID);
         break;
      }
  return(-1);
}

function GetLocation(ObjID, Value)
{
	var args=GetLocation.arguments;
	var f1=(args.length>2)?args[2]:document.theform;
	total=f1.elements[ObjID].length;
  for (pp=0; pp<total; pp++)
      if (f1.elements[ObjID].options[pp].text == "---"+Value+"---")
      {  return (pp);
         break;
      }
  return (-1);
}

function AddItem(ObjName, DesName, CatName)
{
	var args=AddItem.arguments;
	var f1=(args.length>3)?args[3]:document.theform;

  //GET OBJECT ID AND DESTINATION OBJECT
  ObjID    = GetObjID(ObjName,f1);
  DesObjID = GetObjID(DesName,f1);
  CatObjID = GetObjID(CatName,f1);

  if ( ObjID != -1 && DesObjID != -1 && CatObjID != -1 )
  {   hasNum = overalert(DesObjID,f1);
      if (hasNum == 2)
	  {
		window.alert("���ѡ���");
	  }
      else
      {  //GET SELECTED ITEM NUMBER
         SelNum = 0;
         for (var j=0; j<f1.elements[ObjID].length; j++)
         {   if ( f1.elements[ObjID].options[j].selected)
             SelNum ++;
         }
         if ((SelNum + hasNum) > 2)
		 {
			window.alert("���ѡ���");
		 }
         else
         {  jj       = f1.elements[CatObjID].selectedIndex;
            CatValue = f1.elements[CatObjID].options[jj].text;
            CatCode  = f1.elements[CatObjID].options[jj].value;
            i        = f1.elements[ObjID].options.length;
            j        = f1.elements[DesObjID].options.length;
            for (h=0; h<i; h++)
            {   if (f1.elements[ObjID].options[h].selected )
                {  Code = f1.elements[ObjID].options[h].value;
                   Text = f1.elements[ObjID].options[h].text;
                   j    = f1.elements[DesObjID].options.length;

                   HasSelected = false;
                   for (k=0; k<j; k++ )
                   if (f1.elements[DesObjID].options[k].value == Code)
                   {  HasSelected = true;
                      break;
                   }
                   if (HasSelected == false)
                   {  Location = GetLocation(DesObjID, CatValue,f1);
                      if (Location == -1 )
                      {  //f1.elements[DesObjID].options[j] =  new Option("---"+CatValue+"---",CatCode);
                         //f1.elements[DesObjID].options[j+1] = new Option(Text, Code);
                         f1.elements[DesObjID].options[j] = new Option(Text, Code);
                      }
                      else
                      {  InsertItem(DesObjID, Location+1,f1);
                         f1.elements[DesObjID].options[Location+1] = new Option(Text, Code);
                      }
                   }
                   else
				   {
						window.alert("������ѡ��");
					}
                }
            }
         }//else
      }//else
      //CLEAR SELECTION
      for (i=0; i<f1.elements[ObjID].length; i++)
          f1.elements[ObjID].options[i].selected = false;
      for (i=0; i<f1.elements[DesObjID].length; i++)
          f1.elements[DesObjID].options[i].selected = true;

  }//if
}//end of function

function overalert(ID)
{
	var args=overalert.arguments;
	var f1=(args.length>1)?args[1]:document.theform;
	var over  = 0;
	thelength = f1.elements[ID].length;
	for (m=0; m<thelength; m++)
	{   thevalue = f1.elements[DesObjID].options[m].value
      thevalue = thevalue.substring(2)
      if (thevalue!="00")
         over=over+1;
	}
  return(over);
}
//end

//MODIFIED BY DAVID AND CLOUD
function DeleteItem(ObjName)
{
	var args=DeleteItem.arguments;
	var f1=(args.length>1)?args[1]:document.theform;
	ObjID = GetObjID(ObjName,f1);
  if ( ObjID != -1 )
  {  var  check_index = new Array();
     for (i=f1.elements[ObjID].length-1; i>=0; i--)
     {   if (f1.elements[ObjID].options[i].selected)
         {  check_index[i] = true;
            f1.elements[ObjID].options[i].selected = false;
         }
         else
            check_index[i] = false;
     }
     for (i=f1.elements[ObjID].length-1; i>=0; i--)
     {   if (check_index[i])
         {  info = f1.elements[ObjID].options[i].value;
            if (!(info.substring(2)=="00")) f1.elements[ObjID].options[i] = null
         }
     }
     var b=0
     var indexarr = new Array()
     for (i=0;i<f1.elements[ObjID].length;i++)
     {   value1 = f1.elements[ObjID].options[i].value
         if (value1.substring(2)=="00"){
           if (f1.elements[ObjID].length==i+1)
              f1.elements[ObjID].options[i]=null
           else
           {  value2 = f1.elements[ObjID].options[i+1].value
              if (value2.substring(2)=="00"){
              indexarr[b]=i
              b++
           }
     }
        }
    }
    for (var c=0;c<b;c++){
             f1.elements[ObjID].options[indexarr[c]-c]=null
         }
  }
}
function isValidDate( year, month, day )
{
   year  = parseInt(year,10);
   month = parseInt(month,10);
   day   = parseInt(day,10);

   if ( month==4 || month==6 || month==9 || month==11 )
   { if ( day < 1 || day > 30 )
     {// alert( "������1 - 30֮��" );
       return (false);
     }
   }
   else
   { if ( month!=2 )
     { if ( day < 1 || day > 31 )
       {//  alert( "������1 - 31֮��" );
          return (false);
       }
     }
     else
     { // month == 2
       if ( ( year % 100 ) != 0 && (year % 4 == 0) || ( year % 100 ) == 0 && ( year % 400) == 0 )
       { if ( day > 29 )
         {//  alert( "������1 - 29֮��" );
            return (false);
         }
       }
       else
       { if ( day > 28 )
         {// alert( "������1 - 28֮��" );
           return (false);
         }
       }
     }
   }
 return (true);
}
function Jtrim(str)
{

        var i = 0;
        var len = str.length;
        if ( str == "" ) return( str );
        j = len -1;
        flagbegin = true;
        flagend = true;
        while ( flagbegin == true && i< len)
        {
           if ( str.charAt(i) == " " )
                {
                  i=i+1;
                  flagbegin=true;
                }
                else
                {
                        flagbegin=false;
                }
        }

        while  (flagend== true && j>=0)
        {
            if (str.charAt(j)==" ")
                {
                        j=j-1;
                        flagend=true;
                }
                else
                {
                        flagend=false;
                }
        }

        if ( i > j ) return ("")

        trimstr = str.substring(i,j+1);
        return trimstr;
}
function checktheform()
{
       var f1=document.theform;
	
	if (Jtrim(f1.item_name.value) == "")
	{
		window.alert("����δ��д��Ŀ���ơ�");
		f1.item_name.focus();
		return false;
	}

	if ( ! isValidDate(f1.begin_year.value, f1.begin_month.value, "01" ))
	{
		window.alert("��ʼ���ڲ��Ϸ���");
		f1.begin_year.focus();
		return false;
	}

	if ( ! isValidDate(f1.finish_year.value, f1.finish_month.value, "01" ))
	{
		window.alert("��ֹ���ڲ��Ϸ���");
		f1.finish_year.focus();
		return false;
	}

	if (Jtrim(f1.applicant.value) == "")
	{
		window.alert("����δ��д�����ߡ�");
		f1.applicant.focus();
		return false;
	}

	if (Jtrim(f1.grade.value) == "")
	{
		window.alert("����δ��д������ְ�ơ�");
		f1.grade.focus();
		return false;
	}

	if (Jtrim(f1.education.value) == "")
	{
		window.alert("����δ��д������ѧ����");
		f1.education.focus();
		return false;
	}

	if (Jtrim(f1.unit_name.value) == "")
	{
		window.alert("����δ��д���������ڵ�λ��");
		f1.unit_name.focus();
		return false;
	}

	if ( ! isValidDate(f1.fill_year.value, f1.fill_month.value, f1.fill_day.value ))
	{
		window.alert("����ڲ��Ϸ���");
		f1.fill_year.focus();
		return false;
	}

	if (Jtrim(f1.purport.value) == "")
	{
		window.alert("����δ��д��������о����塣");
		f1.purport.focus();
		return false;
	}

	if (Jtrim(f1.status.value) == "")
	{
		window.alert("����δ��д�������о���״������");
		f1.status.focus();
		return false;
	}

	if (Jtrim(f1.future.value) == "")
	{
		window.alert("����δ��дԤ��Ӧ��ǰ����");
		f1.future.focus();
		return false;
	}

	if (Jtrim(f1.point.value) == "")
	{
		window.alert("����δ��д��Ҫ˼�롢�۵㡣");
		f1.point.focus();
		return false;
	}

	if (Jtrim(f1.analysis.value) == "")
	{
		window.alert("����δ��д��Ҫ���ݡ��ص���ѵ������");
		f1.analysis.focus();
		return false;
	}

	if (Jtrim(f1.way.value) == "")
	{
		window.alert("����δ��д�о�������");
		f1.way.focus();
		return false;
	}

	if (Jtrim(f1.moment.value) == "")
	{
		window.alert("����δ��д�׶μ�����Ԥ���о��ɹ���");
		f1.moment.focus();
		return false;
	}

	if (Jtrim(f1.result.value) == "")
	{
		window.alert("����δ��дԤ���о��ɹ���");
		f1.result.focus();
		return false;
	}

	if (Jtrim(f1.outItem1.value) == "")
	{
		window.alert("����δ��д����Ԥ�㡣");
		f1.outItem1.focus();
		return false;
	}

	if (Jtrim(f1.reference.value) == "")
	{
		window.alert("����δ��д������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο����ϡ�");
		f1.reference.focus();
		return false;
	}

	if (Jtrim(f1.market.value) == "")
	{
		window.alert("����δ��дӦ���ƹ���г�������");
		f1.market.focus();
		return false;
	}

	if (Jtrim(f1.commend_mind.value) == "")
	{
		window.alert("����δ��д�Ƽ���λ�����");
		f1.commend_mind.focus();
		return false;
	}
}

//-->
</SCRIPT>
</head>

<body bgcolor="#FFFFFF" text="#000000">
<div align="center"> 
  <table border="0" cellspacing="0" cellpadding="0" width="650">
    <tr> 
      <td bgcolor="#000099"> 
        <table width="600" border="0" cellspacing="0" cellpadding="0">
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
              <div align="center"><img src="../images/s_item1.gif" width="112" height="22"></div>
            </td>
            <td width="33%">&nbsp;</td>
          </tr>
        </table>
        <table width="650" border="0" cellspacing="1" cellpadding="0" height="120">
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
                    <form name=theform method=post action="s_checkItem.jsp?itemID=<%=itemID%>" onSubmit="return checktheform(this)">
                      <table width="95%" border="0" cellspacing="1" cellpadding="1" align="center">
                        <tr bgcolor="#d9d8dc"> 
                          <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr> 
                          <td width="25%" bgcolor="#d9d8dc" align="center"><font color="#000099">��Ŀ����</font></td>
                          <td colspan="3"> 
                            <input name=item_name size=60 maxlength="60" value="<%=item_name1%>">
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center" rowspan="2"><font color="#000099">��&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
                          <td colspan="3"> 
                            <select name=Sort 
                  onChange=JavaScript:showSubOpt(OptSort,this,theform.SubSort) 
                  style="WIDTH: 150px">
                              <option selected 
                    value="">----��ѡ��----</option>
                              <script language=javascript>showMainOpt(OptSort);</script>
                            </select>
                            <font size="2" color="#000099">���ɶ�ѡ�������� </font> 
                          </td>
                        </tr>
                        <tr> 
                          <td width="25%">
                            <select multiple name=SubSort 
                  size=2 style="WIDTH: 150px">
                            </select>
                          </td>
                          <td width="25%" align="center"> 
                            <input name=Input onClick="JavaScript:AddItem('SubSort', 'SelectedIndustry[]', 'Sort')" type=button value="���>>">
                            <br>
                            <input name=Input2 onClick="JavaScript:DeleteItem('SelectedIndustry[]')" type=button value="<<ɾ��">
                          </td>
                          <td>
                            <select multiple 
                  name=SelectedIndustry[] size=2 style="WIDTH: 150px">
                            </select>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">��ֹ����</font></td>
                          <td colspan="3"> 
                            <input maxlength=4 name=begin_year size=4 value="<%=begin_year%>">
                            <font color="#000099">��</font> 
                            <select name=begin_month>
                              <option value=<%=begin_month%> selected><%=begin_month%></option>
                              <option value=01>01</option>
                              <option 
                    value=02>02</option>
                              <option value=03>03</option>
                              <option 
                    value=04>04</option>
                              <option value=05>05</option>
                              <option 
                    value=06>06</option>
                              <option value=07>07</option>
                              <option 
                    value=08>08</option>
                              <option value=09>09</option>
                              <option 
                    value=10>10</option>
                              <option value=11>11</option>
                              <option 
                    value=12>12</option>
                            </select>
                            <font color="#0000CC">��</font> <font color="#000099">����</font> 
                            <input maxlength=4 name=finish_year size=4 value="<%=finish_year%>">
                            <font color="#000099">��</font> 
                            <select name=finish_month>
                              <option value=<%=finish_month%> selected><%=finish_month%></option>
                              <option value=01>01</option>
                              <option 
                    value=02>02</option>
                              <option value=03>03</option>
                              <option 
                    value=04>04</option>
                              <option value=05>05</option>
                              <option 
                    value=06>06</option>
                              <option value=07>07</option>
                              <option 
                    value=08>08</option>
                              <option value=09>09</option>
                              <option 
                    value=10>10</option>
                              <option value=11>11</option>
                              <option 
                    value=12>12</option>
                            </select>
                            <font color="#000099">��</font> </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">�� 
                            �� ��</font></td>
                          <td colspan="3"> 
                            <input name=applicant size="20" maxlength="20" value="<%=applicant1%>">
                            <font color="#000099">��ְ�ƣ�</font> <font color="#000099">
                            <input name=grade size="15" maxlength="20" value="<%=grade1%>">
                            ��ѧ���� 
                            <input name=education size="15" maxlength="20" value="<%=education1%>">
                            </font> </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">���ڵ�λ</font></td>
                          <td colspan="3"> 
                            <input name=unit_name size=60 maxlength="60" value="<%=unit_name1%>">
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"><font color="#000099">�����</font></td>
                          <td colspan="3"> 
                            <input maxlength=4 name=fill_year size=4 value="<%=fill_year%>">
                            <font color="#000099">��</font> 
                            <select name=fill_month>
                              <option value=<%=fill_month%> selected><%=fill_month%></option>
                              <option value=01>01</option>
                              <option 
                    value=02>02</option>
                              <option value=03>03</option>
                              <option 
                    value=04>04</option>
                              <option value=05>05</option>
                              <option 
                    value=06>06</option>
                              <option value=07>07</option>
                              <option 
                    value=08>08</option>
                              <option value=09>09</option>
                              <option 
                    value=10>10</option>
                              <option value=11>11</option>
                              <option 
                    value=12>12</option>
                            </select>
                            <font color="#000099">��</font> 
                            <select name=fill_day>
                              <option 
                    value=<%=fill_day%> selected><%=fill_day%></option>
                              <option 
                    value=01>01</option>
                              <option value=02>02</option>
                              <option 
                    value=03>03</option>
                              <option value=04>04</option>
                              <option 
                    value=05>05</option>
                              <option value=06>06</option>
                              <option 
                    value=07>07</option>
                              <option value=08>08</option>
                              <option 
                    value=09>09</option>
                              <option value=10>10</option>
                              <option 
                    value=11>11</option>
                              <option value=12>12</option>
                              <option 
                    value=13>13</option>
                              <option value=14>14</option>
                              <option 
                    value=15>15</option>
                              <option value=16>16</option>
                              <option 
                    value=17>17</option>
                              <option value=18>18</option>
                              <option 
                    value=19>19</option>
                              <option value=20>20</option>
                              <option 
                    value=21>21</option>
                              <option value=22>22</option>
                              <option 
                    value=23>23</option>
                              <option value=24>24</option>
                              <option 
                    value=25>25</option>
                              <option value=26>26</option>
                              <option 
                    value=27>27</option>
                              <option value=28>28</option>
                              <option 
                    value=29>29</option>
                              <option value=30>30</option>
                              <option 
                    value=31>31</option>
                            </select>
                            <font color="#000099">��</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" colspan="4">&nbsp;</td>
                        </tr>
                        <tr> 
                          <td colspan="4">&nbsp;</td>
                        </tr>
                      </table>
                      <table width="95%" border="0" cellspacing="1" cellpadding="1" align="center">
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">һ��������Ƽ���������֤</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"> 
                            <p><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;1����������о����塢�������о���״������������Ӧ��ǰ����<br>
                              &nbsp;&nbsp;&nbsp;&nbsp;2���������о�����Ҫ˼�롢��Ҫ�۵㡢��Ҫ���ݡ��ص���ѵ������<br>
                              &nbsp;&nbsp;&nbsp;&nbsp;3����������о��������׶μ�����Ԥ���о��ɹ���<br>
                              &nbsp;&nbsp;&nbsp;&nbsp;4������Ԥ�㣨������������Դ��������˵������<br>
                              &nbsp;&nbsp;&nbsp;&nbsp;5��������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο����ϡ�</font></p>
                          </td>
                        </tr>
                        <tr> 
                          <td>&nbsp;</td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;1����������о����塢�������о���״������������Ӧ��ǰ����</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;��������о�����</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="purport" cols="65" rows="5"><%=purport1%></textarea>
                          </td>
                        </tr>
                        <tr bgcolor="#d9d8dc"> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;�������о���״����</font> 
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="status" cols="65" rows="5"><%=status1%></textarea>
                          </td>
                        </tr>
                        <tr bgcolor="#d9d8dc"> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;Ԥ��Ӧ��ǰ��</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="future" cols="65" rows="5"><%=future1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;2���������о�����Ҫ˼�롢��Ҫ�۵㡢��Ҫ���ݡ��ص���ѵ������</font> 
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;��Ҫ˼�롢�۵�</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="point" cols="65" rows="5"><%=point1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;��Ҫ���ݡ��ص���ѵ����</font> 
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="analysis" cols="65" rows="5"><%=analysis1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;3����������о��������׶μ�����Ԥ���о��ɹ���</font> 
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;�о�����</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="way" cols="65" rows="5"><%=way1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;�׶μ�����Ԥ���о��ɹ�</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="moment" cols="65" rows="4"><%=moment1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;Ԥ���о��ɹ�</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="result" cols="65" rows="4"><%=result1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;4������Ԥ��</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc">
                            <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
                              <tr> 
                                <td align="center" width="60%"><font size="2" color="#000099">֧����Ŀ</font></td>
                                <td align="center"><font size="2" color="#000099">֧������Ԫ��</font></td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem1 size=40 maxlength="60" value="<%=outItem[0]%>">
                                </td>
                                <td> 
                                  <input name=money1 size="15" maxlength="20" value="<%=money[0]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem2 size=40 maxlength="60" value="<%=outItem[1]%>">
                                </td>
                                <td> 
                                  <input name=money2 size="15" maxlength="20" value="<%=money[1]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem3 size=40 maxlength="60" value="<%=outItem[2]%>">
                                </td>
                                <td> 
                                  <input name=money3 size="15" maxlength="20" value="<%=money[2]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem4 size=40 maxlength="60" value="<%=outItem[3]%>">
                                </td>
                                <td> 
                                  <input name=money4 size="15" maxlength="20" value="<%=money[3]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem5 size=40 maxlength="60" value="<%=outItem[4]%>">
                                </td>
                                <td> 
                                  <input name=money5 size="15" maxlength="20" value="<%=money[4]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem6 size=40 maxlength="60" value="<%=outItem[5]%>">
                                </td>
                                <td> 
                                  <input name=money6 size="15" maxlength="20" value="<%=money[5]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem7 size=40 maxlength="60" value="<%=outItem[6]%>">
                                </td>
                                <td> 
                                  <input name=money7 size="15" maxlength="20" value="<%=money[6]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem8 size=40 maxlength="60" value="<%=outItem[7]%>">
                                </td>
                                <td> 
                                  <input name=money8 size="15" maxlength="20" value="<%=money[7]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem9 size=40 maxlength="60" value="<%=outItem[8]%>">
                                </td>
                                <td> 
                                  <input name=money9 size="15" maxlength="20"  value="<%=money[8]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem10 size=40 maxlength="60" value="<%=outItem[9]%>">
                                </td>
                                <td> 
                                  <input name=money10 size="15" maxlength="20" value="<%=money[9]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem11 size=40 maxlength="60" value="<%=outItem[10]%>">
                                </td>
                                <td> 
                                  <input name=money11 size="15" maxlength="20" value="<%=money[10]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem12 size=40 maxlength="60" value="<%=outItem[11]%>">
                                </td>
                                <td> 
                                  <input name=money12 size="15" maxlength="20" value="<%=money[11]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem13 size=40 maxlength="60" value="<%=outItem[12]%>">
                                </td>
                                <td> 
                                  <input name=money13 size="15" maxlength="20" value="<%=money[12]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"> 
                                  <input name=outItem14 size=40 maxlength="60" value="<%=outItem[13]%>">
                                </td>
                                <td> 
                                  <input name=money14 size="15" maxlength="20" value="<%=money[13]%>">
                                </td>
                              </tr>
                              <tr> 
                                <td align="center"><font size="2" color="#000099">�ϼ�</font></td>
                                <td> 
                                  <input name=money15 size="15" maxlength="20" value="<%=sum%>">
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">&nbsp;&nbsp;&nbsp;&nbsp;5��������ǰ���о��ɹ�����Ҫ�����Ĳο����׺Ͳο����ϡ�</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="reference" cols="65" rows="5"><%=reference1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td>&nbsp;</td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">����Ӧ���ƹ���г�����</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="market" cols="65" rows="5"><%=market1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td>&nbsp;</td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">������Ŀ���Ա</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc">&nbsp; </td>
                        </tr>
                        <tr> 
                          <td>&nbsp;</td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">�ġ��Ƽ���λ���</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <textarea name="commend_mind" cols="65" rows="5"><%=commend_mind1%></textarea>
                          </td>
                        </tr>
                        <tr> 
                          <td>&nbsp;</td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">�塢ר������ίԱ�����</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc"><font color="#000099">�����������</font></td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc">&nbsp;</td>
                        </tr>
                        <tr> 
                          <td bgcolor="#d9d8dc" align="center"> 
                            <input type=image src="../images/refer.gif" width="62" height="22" name="refer">
                          </td>
                        </tr>
                      </table>
                    </form>
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
