<%@ Page language="c#" Codebehind="AdminTeacher.aspx.cs" AutoEventWireup="false" Inherits="GradeMis.AdminTeacher" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AdminTeacher</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="����">
				<asp:Button id="Button1" runat="server" Text="����ڿ���Ϣ"></asp:Button><br>
				<br>
				<asp:DataGrid id="DataGrid1" runat="server" AllowPaging="True" Width="400px" AutoGenerateColumns="False">
					<HeaderStyle BackColor="#CCCC66"></HeaderStyle>
					<Columns>
						<asp:BoundColumn DataField="��ʦ��" ReadOnly="True" HeaderText="��ʦ��"></asp:BoundColumn>
						<asp:BoundColumn DataField="�γ̺�" HeaderText="�γ̺�"></asp:BoundColumn>
						<asp:BoundColumn DataField="ѧʱ��" HeaderText="ѧʱ��"></asp:BoundColumn>
						<asp:BoundColumn DataField="�༶��" HeaderText="�༶��"></asp:BoundColumn>
						<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="����" CancelText="ȡ��" EditText="�༭"></asp:EditCommandColumn>
						<asp:ButtonColumn Text="ɾ��" CommandName="Delete"></asp:ButtonColumn>
					</Columns>
					<PagerStyle NextPageText="��һҳ" PrevPageText="��һҳ"></PagerStyle>
				</asp:DataGrid>
			</FONT>
		</form>
	</body>
</HTML>
