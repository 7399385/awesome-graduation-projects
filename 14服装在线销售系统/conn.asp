<%Option Explicit%><!--#include file="include/function.asp"--><%
dim db,connstr,conn,rs,sql,rs2


'ǿ����������·��ʷ���������ҳ�棬�����Ǵӻ����ȡҳ��'
Response.Buffer = True 
Response.Expires = -1
Response.ExpiresAbsolute = Now() - 1 
Response.Expires = 0 
Response.CacheControl = "no-cache" 

db=dbs '���ݿ��ļ�λ��
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&server.MapPath(db)

'connstr="PROVIDER=SQLOLEDB;DATA SOURCE=.;UID=;PWD=;DATABASE=sb"

set conn=server.createobject("ADODB.CONNECTION")
Set rs=Server.CreateObject("Adodb.Recordset")
Set rs2=Server.CreateObject("Adodb.Recordset")
conn.open connstr
%>