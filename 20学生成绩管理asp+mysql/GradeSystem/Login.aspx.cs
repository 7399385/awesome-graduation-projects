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
	/// Login ��ժҪ˵����
	/// </summary>
	public class Login : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.TextBox txtPassword;
		protected System.Web.UI.WebControls.TextBox txtUsername;
		private SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["GradeSys"]);
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
		 
		}

		#region
		private void userLogin()
		{
			string sql = string.Empty;
			string user = this.txtUsername.Text;
			string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(this.txtPassword.Text,"MD5");
			sql = string.Format("select username,password,[group] from admin where username='{0}' and password='{1}'",user,pwd);
			SqlDataReader dr;
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				dr = cmd.ExecuteReader();
				if(dr.Read())
				{
					Session["username"] = dr["username"].ToString();
					Session["group"] = dr["group"].ToString();
					Response.Redirect("Main.aspx");
				}
				else
				{
					Response.Write("<script>alert('�û��������������,����������!')</script>");
				}
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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			userLogin();		
		}
	}
}
