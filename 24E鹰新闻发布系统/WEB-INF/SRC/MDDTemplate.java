package com.v246;
public class MDDTemplate
{
	/*
	 *����Ӧ����MDDTemplate.jsp
	 **/

	protected static Connections connTmp=new Connections();
	public static void deleteData(String column)throws Exception
	{
		/*
		 *����������ɾ��ģ�壬�Ǹ��Զ���EL���ʽ
		 *
		 **/
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;

		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
			stm.executeUpdate("delete from "+column);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
	}
	public static void setDefault(String id) throws Exception 
	{
		/*
		 *�����Ǹ��Զ���EL���ʽ�����ڰ�ָ��ID��ģ����ΪĬ��
		 **/
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;
		java.sql.Statement stm1=null;
		java.sql.ResultSet rs1=null;
		java.sql.Statement stm2=null;
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
			stm1=conn.createStatement();
			stm2=conn.createStatement();
			rs=stm.executeQuery("select * from template where TemplateId="+id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try
		{
			if(rs.next()) //�����ѯ���˼�¼��
			{
				rs1=stm1.executeQuery("select * from template where WithType="+rs.getInt("WithType")+" and IsDefault=1");
				while(rs1.next())
				{
					if(rs1.getBoolean("IsDefault"))//�����ǰģ����Ĭ��ģ����ȡ��Ĭ��
					{
						stm2.executeUpdate("update template set IsDefault=0 where TemplateId="+rs1.getInt("TemplateId"));
					}
				}
				
			}
			stm2.executeUpdate("update template set IsDefault=1 where TemplateId="+rs.getInt("TemplateId"));
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			rs1.close();
			stm1.close();
			rs.close();
			stm.close();
			conn.close();
		}
	}
	public static String[] modifyTemplate(String id)throws Exception
	{
		/*
		 *��������EL���Զ�����ʽ�������޸�ģ�壬����һ������
		 **/
		String[] re=new String[5];
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.Statement stm1=null;
		java.sql.ResultSet rs=null;
		java.sql.ResultSet rs1=null;
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
			stm1=conn.createStatement();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try
		{
			rs=stm.executeQuery("select * from template where TemplateId="+id);
			if(rs.next())
			{
				rs1=stm1.executeQuery("select * from templateType where Id="+rs.getInt("WithType"));
				if(rs1.next())
				{
					re[0]=rs1.getString("Type");
					re[1]=String.valueOf(rs1.getInt("id"));
				}
				else
				{
					re[0]="error";
					re[1]="0";
				}
				re[2]=rs.getString("TemplateName");
				re[3]=rs.getString("Content");
				re[4]=String.valueOf(rs.getBoolean("IsDefault"));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs1!=null)rs1.close();
			if(stm1!=null)stm1.close();
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
			
		}
		return re;
	}
	public static void main(String[] args)
	{
		String[] a=null;
		try
		{
			a=modifyTemplate("38");
			System.out.println(a[3]);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}