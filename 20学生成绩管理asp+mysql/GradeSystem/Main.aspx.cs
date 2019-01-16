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
	/// Main ��ժҪ˵����
	/// </summary>
	public class Main : System.Web.UI.Page
	{
		private SqlConnection  conn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["GradeSys"]);
		public string promiseUrl;
		private string promise;
		private string username;
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			try
			{
				username = Session["username"].ToString();
			}
			catch
			{
				Response.Redirect("Login.aspx");
			}
			
			if(!Page.IsPostBack)
			{
				GetPromise();
				GetUrlByPromise();
			}
		}

		#region ȡ��Ȩ��ID
		private void GetPromise()
		{
			string sql = string.Empty;
			sql = string.Format ("select promise from Admin inner join AdminGroup on Admin.[Group] = AdminGroup.[Group] where username = '{0}'",username);
			//Response.Write(sql);
			SqlDataReader dr;
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				dr = cmd.ExecuteReader();
				if(dr.Read())
				{
					//promiseUrl = dr["promise"].ToString();
					//sb.Append(dr["url"].ToString());
					this.promise = dr["promise"].ToString();
				}
				//promiseUrl = sb.ToString();
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


		#region ȡ��Ȩ��ID
		private void GetUrlByPromise()
		{
			string sql = string.Empty;
			System.Text.StringBuilder sb = new System.Text.StringBuilder();
			try
			{
				sql = string.Format ("select url,urlname from AdminUrl where id in ({0})",promise.Substring(0,promise.Length-1));
			}
			catch
			{
				//Response.Write("��������û����������κ���,�������Ա��ϵ!");
			}
			//Response.Write(sql);
			SqlDataReader dr;
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				try
				{
					dr = cmd.ExecuteReader();
					if(dr.Read())
					{
						sb.Append("<table width=\"207\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");  
						do
						{
							sb.Append("<tr><td width=\"207\" height=\"33\" background=\"images/Sys_menu.jpg\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target=\"main\" href=\""+dr["url"].ToString()+"\">"+dr["urlname"].ToString()+"</a></td></tr>\n");
						}while(dr.Read());
						sb.Append("</table>");												
					}
				}
				catch
				{
					Response.Write("��������û�����δ����,���߷�����Ϣ��ʧ,�������Ա��ϵ!");
				}
				promiseUrl = sb.ToString();
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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
