<%@ Page language="c#" Codebehind="AdminGradeAdd.aspx.cs" AutoEventWireup="false" Inherits="GradeMis.AdminGradeAdd" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AdminGradeAdd</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="����">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="616" border="1" style="WIDTH: 616px; HEIGHT: 183px">
					<TR>
						<TD style="WIDTH: 120px; HEIGHT: 4px">��ѡ��༶</TD>
						<td style="HEIGHT: 4px"><FONT face="����">ѧ��ѡ��</FONT></td>
					</TR>
					<TR>
						<TD style="WIDTH: 120px" vAlign="top">
							<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Width="136px" AllowPaging="True">
								<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
								<Columns>
									<asp:BoundColumn DataField="�༶��" HeaderText="�༶��"></asp:BoundColumn>
									<asp:HyperLinkColumn Text="�༶��" DataNavigateUrlField="�༶��" DataNavigateUrlFormatString="AdminGradeAdd.aspx?Action=Add&amp;�༶��={0}"
										HeaderText="��ѡ��" NavigateUrl="AdminGradeAdd.aspx"></asp:HyperLinkColumn>
								</Columns>
								<PagerStyle NextPageText="��һҳ" PrevPageText="��һҳ"></PagerStyle>
							</asp:DataGrid></TD>
						<td vAlign="top"><asp:DataGrid id="DataGrid2" runat="server" AutoGenerateColumns="False" Width="392px" AllowPaging="True">
								<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
								<Columns>
									<asp:BoundColumn DataField="ѧ��" HeaderText="ѧ��"></asp:BoundColumn>
									<asp:BoundColumn DataField="����" HeaderText="����"></asp:BoundColumn>
									<asp:BoundColumn DataField="�Ա�" HeaderText="�Ա�"></asp:BoundColumn>
									<asp:BoundColumn DataField="�༶��" HeaderText="�༶��"></asp:BoundColumn>
									<asp:BoundColumn DataField="����Ժϵ" HeaderText="����Ժϵ"></asp:BoundColumn>
									<asp:HyperLinkColumn Target="_blank" DataNavigateUrlField="ѧ��" DataNavigateUrlFormatString="AdminGradeAddNext.aspx?ѧ��={0}"
										DataTextField="ѧ��" HeaderText="¼��ɼ�" NavigateUrl="AdminGradeAddNext.aspx"></asp:HyperLinkColumn>
								</Columns>
								<PagerStyle NextPageText="��һҳ" PrevPageText="��һҳ"></PagerStyle>
							</asp:DataGrid></td>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
