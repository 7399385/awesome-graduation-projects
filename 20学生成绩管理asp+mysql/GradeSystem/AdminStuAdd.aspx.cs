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
	/// AdminStuAdd ��ժҪ˵����
	/// </summary>
	public class AdminStuAdd : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.RadioButton rbman;
		protected System.Web.UI.WebControls.TextBox txtsid;
		protected System.Web.UI.WebControls.TextBox txtname;
		protected System.Web.UI.WebControls.TextBox txtage;
		protected System.Web.UI.WebControls.TextBox txts;
		protected System.Web.UI.WebControls.TextBox txtclassname;
		protected System.Web.UI.WebControls.TextBox txtyear;
		protected System.Web.UI.WebControls.RadioButton rbwoman;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator1;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.RangeValidator RangeValidator1;
		protected System.Web.UI.WebControls.Button Button2;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator3;
		private SqlConnection  conn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["GradeSys"]);

	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
		}

		#region
		private void Add()
		{
			string sql = string.Empty;
			string sid = this.txtsid.Text.ToString();
			string name = this.txtname.Text.ToString();
			string sex = string.Empty;
			if(this.rbman.Checked)
			{
				sex = "��";
			}
			else
			{
				sex = "Ů";
			}
			int age = Convert.ToInt32(this.txtage.Text.ToString());
			string s = this.txts.Text.ToString();
			string classname = this.txtclassname.Text.ToString();
			string years = this.txtyear.Text.ToString();
		
			sql = string.Format("insert into ѧ����Ϣ��(ѧ��,����,�Ա�,����,����Ժϵ,�༶��,��ѧ��� ) values('{0}','{1}','{2}',{3},'{4}','{5}','{6}')",sid,name,sex,age,s,classname,years);
			SqlCommand cmd = new SqlCommand(sql,conn);
			try
			{
				conn.Open();
				cmd.ExecuteNonQuery();
				Response.Write("<script>alert('ѧ����Ϣ��ӳɹ�!')</script>");
			}
			catch//(Exception ex)
			{
				//Response.Write(ex);
				Response.Write("<script>alert('��ѧ���Ѿ�����,���ʧ��!')</script>");
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
			this.Button2.Click += new System.EventHandler(this.Button2_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			Add();		
		}

		private void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("AdminStu.aspx");
		}
	}
}
