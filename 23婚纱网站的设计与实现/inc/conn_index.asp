<%
set conn=Server.CreateObject("AdoDb.Connection")
dbPath=Server.MapPath("lin_date/date_lin.mdb")
conn.open "Provider=Microsoft.Jet.OleDb.4.0;Data Source="&dbPath

sub twclose(rs)
	rs.close
	set rs=nothing
end sub


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
Function LeftT(str,n)
If len(str)<=n/2 Then
LeftT=str
Else
Dim TStr
Dim l,t,c
Dim i
l=len(str)
t=l
TStr=""
t=0
for i=1 to l
c=asc(mid(str,i,1))
If c<0 then c=c+65536
If c>255 then
t=t+2
Else
t=t+1
End If
If t>n Then exit for
TStr=TStr&(mid(str,i,1))
next
LeftT = TStr+".."
End If
End Function
'��վ������Ϣ����----------------------------------------------------------------------
Sub SetTw(namea)
	Set RsC=conn.execute("select Content from Content Where title='"&namea&"'")
	IF Not RsC.Eof then
		Tw(RsC("Content"))
	End IF
	RsC.Close()
	Set RsC=Nothing
End Sub
Set rsContent=Conn.execute("select * from Infor")
Web_Name=rsContent("Web_Name")
Web_Add=rsContent("Web_Add")
Web_Phone=rsContent("Web_Phone")
Web_Fax=rsContent("Web_Fax")
Web_LeaguePhone=rsContent("Web_LeaguePhone")
Web_Serverphone=rsContent("Web_Serverphone")
Web_http=rsContent("Web_http")
Web_Mail=rsContent("Web_Mail")
Web_Mobilephone=rsContent("Web_Mobilephone")
Web_Zipcode=rsContent("Web_Zipcode")
rsContent.close()
Set rsContent=Nothing
%> 
 
 
 
 
 
 
 
 
 
 






