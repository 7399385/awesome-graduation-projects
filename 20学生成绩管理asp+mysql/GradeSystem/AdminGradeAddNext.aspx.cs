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
	/// AdminGradeAddNext ��ժҪ˵����
	/// </summary>
	public class AdminGradeAddNext : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox txtcid;
		protected System.Web.UI.WebControls.TextBox txtgrade;
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.RangeValidator RangeValidator1;

		private SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["GradeSys"]);
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
		}

		#region
		private void Add()
		{
			string sql = string.Empty;
			sql = string.Format("insert into �ɼ���(ѧ��,�γ̺�,�ɼ�) values('{0}','{1}',{2})",Request.QueryString["ѧ��"].ToString(),this.txtcid.Text.ToString(),this.txtgrade.Text.ToString());
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				cmd.ExecuteNonQuery();
				Response.Write("<script>alert('�ɼ���ӳɹ�!')</script>");
			}
			catch//(Exception ex)
			{
				//Response.Write(ex);
				Response.Write("<script>alert('�ɼ����ʧ��!')</script>");
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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			Add();		
		}
	}
}
