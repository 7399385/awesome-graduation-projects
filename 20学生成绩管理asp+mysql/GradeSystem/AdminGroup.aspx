<%@ Page language="c#" Codebehind="AdminGroup.aspx.cs" AutoEventWireup="false" Inherits="GradeMis.AdminGroup" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AdminGroup</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="����">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="500" border="1">
					<TR>
						<TD>��ѡ����:
							<asp:DropDownList id="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Label id="Label1" runat="server"></asp:Label>&nbsp;
							<asp:Button id="Button2" runat="server" Text="ɾ����ѡ��"></asp:Button>&nbsp;
							<asp:Button id="Button1" runat="server" Text="�������"></asp:Button></TD>
					</TR>
					<TR>
						<TD>
							<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Width="440px" AllowPaging="True">
								<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
								<Columns>
									<asp:TemplateColumn HeaderText="ѡ��">
										<ItemTemplate>
											<asp:CheckBox ID="chkExPort" Checked Runat="server"></asp:CheckBox>
										</ItemTemplate>
										<EditItemTemplate>
											<asp:CheckBox ID="chkExPortON" Runat="server"></asp:CheckBox>
										</EditItemTemplate>
									</asp:TemplateColumn>
									<asp:BoundColumn DataField="id" HeaderText="���"></asp:BoundColumn>
									<asp:BoundColumn DataField="UrlName" HeaderText="����ģ��"></asp:BoundColumn>
									<asp:BoundColumn DataField="Url" HeaderText="Url��ַ"></asp:BoundColumn>
								</Columns>
								<PagerStyle NextPageText="��һҳ" PrevPageText="��һҳ"></PagerStyle>
							</asp:DataGrid></TD>
					</TR>
					<TR>
						<TD>
							<asp:Button id="cmdSelectAll" runat="server" Text="ȫѡ"></asp:Button>
							<asp:Button id="cmdSP" runat="server" Text="����Ȩ��"></asp:Button><FONT face="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								(ע:���������鲻��ɾ��!)</FONT></TD>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
