
<%
'On error resume next
set conn=Server.CreateObject("AdoDb.Connection")
dbPath=Server.MapPath("../lin_date/date_lin.mdb")
conn.open "Provider=Microsoft.Jet.OleDb.4.0;Data Source="&dbPath

sub CloseConn()
	conn.close
	set conn=nothing
end sub

Sub twClose()
	rs.close
	set rs=nothing
End Sub

Sub QuanXian(namea)
	IF namea<>True and Request.cookies("admin")<>session("Netant_admin_name_@tw1986") Then
		TwScript("û��Ȩ��,������һҳ")
		Response.End()
	End IF
End Sub

sub tclose(rs)
	rs.close
	set rs=nothing
end sub

sub WriteErrMsg
	Response.Write(Errmsg)
	Response.End()
end sub

Function twScript(Content)
		Response.Write("<Script>alert('"&Content&"');history.back();</Script>")
		Response.End
		twScript=Content
End Function

Function Dtime(timea,ss)
	Dim timeb
	if ss=1 then
		timeb=year(timea)&"-"&month(timea)&"-"&day(timea)
	else
		timeb=month(timea)&"-"&day(timea)
	end if
	Dtime=timeb
End Function

Function GetSafeStr(str)
	GetSafeStr = Replace(Replace(Replace(Trim(str), "'", ""), Chr(34), ""), ";", "")
End Function

function lenzi(Tilte_name,size_name)
dim c
	if Len(Tilte_name)>size_name then
		c=left(Tilte_name,size_name)&"..."
		lenzi=c
	else
		lenzi=Tilte_name
	end if
end function

Function Tw(namea)
Dim nameb
	nameb=Response.Write(namea)
	Tw=nameb
End Function

'safeRequest����
'--- ������� --- 
'ParaName:��������-�ַ��� 
'ParaType:��������-������(1��ʾ�����ȡ������,0��ʾ�Գ����ȡ���ַ�,2��ʾ�û�������ַ�) 
'�뾡��ʹ����������ȡ��ʵ�ڲ��е�����£���ʹ���ַ���

Function SafeRequest(ParaName,ParaType) 
	Dim ParaValue 
	ParaValue=Request(ParaName) 
	If ParaType=1 then 
		If not isNumeric(ParaValue) then 
			Response.write "����" & ParaName & "����Ϊ�����ͣ�" 
			Response.end
		end if
	Elseif ParaType=0 then
		ParaValue=replace(ParaValue,"'","") 
		paraValue=Replace(ParaValue," ","")
		paraValue=Replace(ParaValue,"%20","")
		paraValue=Replace(ParaValue,"(","")
		paraValue=Replace(ParaValue,")","")
	Else
		'����û���������ݣ�����������ѯ�ȣ��������תΪȫ�ǡ�
		ParaValue=replace(ParaValue,"'","��") 
		ParaValue=Replace(ParaValue," ","��")
		ParaValue=Replace(ParaValue,"(","��")
		ParaValue=Replace(ParaValue,")","��")
	End if 
	SafeRequest=ParaValue 
End function 

'*********************************************************************************************
if Session("admin")="" or Request.cookies("admin")="" or Session("admin_Name")="" then
	Response.Write("<script>alert('��������,�����µ�½!!!');top.location='index.asp'</script>")
	Response.End()
end if
%><!--#include file="config.asp"--> 
 
 
 
 
 
 
 
 
 
 






