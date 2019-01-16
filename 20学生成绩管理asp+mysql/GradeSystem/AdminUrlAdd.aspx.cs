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
	/// AdminUrlAdd ��ժҪ˵����
	/// </summary>
	public class AdminUrlAdd : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox txtname;
		protected System.Web.UI.WebControls.TextBox txturl;
		protected System.Web.UI.WebControls.TextBox TextBox3;
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		private SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["GradeSys"]);
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
		}

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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			string sql = string.Empty;
			sql = string.Format("insert into AdminUrl(urlname,url,comment) values('{0}','{1}','{2}')",this.txtname.Text,this.txturl.Text,this.TextBox3.Text);
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				cmd.ExecuteNonQuery();
				Response.Redirect("AdminUrl.aspx");
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
	}
}
