using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace GradeMis
{
	/// <summary>
	/// AdminTeacher ��ժҪ˵����
	/// </summary>
	public class AdminTeacher : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DataGrid DataGrid1;
		protected System.Web.UI.WebControls.Button Button1;
		private SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["GradeSys"]);
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			if(!Page.IsPostBack)
			{
				GetData();
			}
		}

		#region ȡ������
		private void GetData()
		{
			string sql = string.Empty;
			sql = string.Format("select * from �ڿα�");
			SqlDataAdapter da = new SqlDataAdapter(sql,conn);
			DataSet ds = new DataSet();
			try
			{
				da.Fill(ds,"t");
				this.DataGrid1.DataSource = ds.Tables["t"];
				this.DataGrid1.DataBind();
			}
			catch
			{}
		}
		#endregion


		#region ExeSql
		private void ExeSql(string sql)
		{
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				cmd.ExecuteNonQuery();
			}
			catch(Exception ex)
			{
				Response.Write(ex);
			}
			finally
			{
				conn.Close();
			}
		}
		#endregion


		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    
			this.Button1.Click += new System.EventHandler(this.Button1_Click);
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
			this.DataGrid1.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_CancelCommand);
			this.DataGrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_EditCommand);
			this.DataGrid1.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_UpdateCommand);
			this.DataGrid1.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_DeleteCommand);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("AdminTeacherAdd.aspx");
		}

		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			this.DataGrid1.EditItemIndex=-1;
			GetData();
		
		}

		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			string sid = e.Item.Cells[0].Text;
			string sql = string.Format("delete �ڿα� where ��ʦ�� = '{0}'",sid);
			ExeSql(sql);
			this.DataGrid1.EditItemIndex=-1;
			GetData();
		
		}

		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
		   this.DataGrid1.EditItemIndex=e.Item.ItemIndex;
			GetData();
		
		}

		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			string sid = e.Item.Cells[0].Text;

			TextBox txtName = new TextBox();
			txtName = (TextBox)e.Item.Cells[1].Controls[0];
			string name = txtName.Text.ToString();

			TextBox txtAge = new TextBox();
			txtAge = (TextBox)e.Item.Cells[2].Controls[0];
			string age = txtAge.Text.ToString();			

			TextBox txtS = new TextBox();
			txtS = (TextBox)e.Item.Cells[3].Controls[0];
			string s = txtS.Text.ToString();

 
			string sql = string.Empty;
			sql= string.Format("update �ڿα� set �γ̺�='{0}',ѧʱ��='{1}',�༶��='{2}' where ��ʦ��='{3}' ",name,age,s,sid);
			ExeSql(sql);
			this.DataGrid1.EditItemIndex=-1;
			GetData();
		
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			this.DataGrid1.CurrentPageIndex = e.NewPageIndex;
			GetData();
		}
	}
}
