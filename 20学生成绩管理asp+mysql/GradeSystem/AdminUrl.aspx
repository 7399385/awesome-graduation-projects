<%@ Page language="c#" Codebehind="AdminUrl.aspx.cs" AutoEventWireup="false" Inherits="GradeMis.AdminUrl" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AdminUrl</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="����"><a href="AdminUrlAdd.aspx">����ģ�����</a>
				<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" AllowPaging="True">
					<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
					<Columns>
						<asp:BoundColumn DataField="Id" HeaderText="���">
							<ItemStyle Width="30px"></ItemStyle>
						</asp:BoundColumn>
						<asp:BoundColumn DataField="url" HeaderText="ģ��URL">
							<ItemStyle Width="150px"></ItemStyle>
						</asp:BoundColumn>
						<asp:BoundColumn DataField="UrlName" HeaderText="ģ������">
							<ItemStyle Width="150px"></ItemStyle>
						</asp:BoundColumn>
						<asp:BoundColumn DataField="Comment" HeaderText="˵��">
							<ItemStyle Width="250px"></ItemStyle>
						</asp:BoundColumn>
						<asp:HyperLinkColumn Text="ɾ��" DataNavigateUrlField="id" ItemStyle-Width="30" DataNavigateUrlFormatString="AdminUrlDel.aspx?id={0}"
							HeaderText="ɾ��" NavigateUrl="AdminUrlDel.aspx"></asp:HyperLinkColumn>
					</Columns>
					<PagerStyle NextPageText="��һҳ" PrevPageText="��һҳ"></PagerStyle>
				</asp:DataGrid></FONT>
		</form>
	</body>
</HTML>
