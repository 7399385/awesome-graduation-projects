package com.v246;
public class TemplateManage
{
	/*
	 *�������Զ���EL������templateManage.jsp
	 **/
	public static String getManage(String id)throws Exception
	{
		String withTypeName=null;
		String url=null;
		StringBuffer re=new StringBuffer(3000);
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;
		
		Connections connTmp=new Connections();
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try
		{
			url=Aqu.getUrl(connTmp.getConnection(),"config","url");
			if(id.equals("0"))//���id����0��ô�ʹ���Ҫ���������Ŀ
			{
				rs=stm.executeQuery("select * from template");
				while(rs.next())
				{
					if(rs.getBoolean("IsDefault"))
					{
						re.append("<TR class=tdbg onmouseover=\"this.style.backgroundColor='#BFDFFF'\"onmouseout=&#034;this.style.backgroundColor=''\"> <TD align=middle width=30>"+rs.getInt("TemplateId")+"</TD><TD align=middle width=150>"+getWithTypeName(rs.getInt("WithType"))+"</TD><TD align=middle><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid=0'>"+rs.getString("TemplateName")+"</A></TD><TD align=middle width=100><B>��</B></TD><TD align=middle width=200><FONT color=#39867b>��ΪĬ��&nbsp;</FONT><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid=0'>�޸�ģ��</A>&nbsp;<FONT color=#39867b>ɾ��ģ��</FONT> </TD></TR>");				
					}
					else
					{
						re.append("<TR class=tdbg onmouseover=\"this.style.backgroundColor='#BFDFFF'\" onmouseout=&#034;this.style.backgroundColor=''\"> <TD align=middle width=30>"+rs.getInt("TemplateId")+"</TD> <TD align=middle width=150>"+getWithTypeName(rs.getInt("WithType"))+"</TD> <TD align=middle><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid=0'>"+rs.getString("TemplateName")+"</A></TD> <TD align=middle width=100><B>��</B></TD><TD align=middle width=200><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=set&amp;pid=0'>��ΪĬ��</A>&nbsp;<A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid=0'>�޸�ģ��</A>&nbsp;<A onclick=\"return confirm('ȷ��Ҫɾ���˰������ģ����ɾ���˰������ģ���ԭʹ�ô˰������ģ������½���Ϊʹ��ϵͳĬ�ϰ������ģ�塣');\" href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=del&amp;pid=0'>ɾ��ģ��</A> </TD> </TR>");
					}
				}
			}
			else
			{
				rs=stm.executeQuery("select * from template where WithType="+id);
				while(rs.next())
				{
					if(rs.getBoolean("IsDefault"))
					{
						re.append("<TR class=tdbg onmouseover=\"this.style.backgroundColor='#BFDFFF'\"onmouseout=&#034;this.style.backgroundColor=''\"> <TD align=middle width=30>"+rs.getInt("TemplateId")+"</TD><TD align=middle width=150>"+getWithTypeName(rs.getInt("WithType"))+"</TD><TD align=middle><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify'>"+rs.getString("TemplateName")+"</A></TD><TD align=middle width=100><B>��</B></TD><TD align=middle width=200><FONT color=#39867b>��ΪĬ��&nbsp;</FONT><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid="+rs.getInt("WithType")+"'>�޸�ģ��</A>&nbsp;<FONT color=#39867b>ɾ��ģ��</FONT> </TD></TR>");				
					}
					else
					{
						re.append("<TR class=tdbg onmouseover=\"this.style.backgroundColor='#BFDFFF'\" onmouseout=&#034;this.style.backgroundColor=''\"> <TD align=middle width=30>"+rs.getInt("TemplateId")+"</TD> <TD align=middle width=150>"+getWithTypeName(rs.getInt("WithType"))+"</TD> <TD align=middle><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid="+rs.getInt("WithType")+"'>"+rs.getString("TemplateName")+"</A></TD> <TD align=middle width=100><B>��</B></TD><TD align=middle width=200><A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=set&amp;pid="+rs.getInt("WithType")+"'>��ΪĬ��</A>&nbsp;<A href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=modify&amp;pid="+rs.getInt("WithType")+"'>�޸�ģ��</A>&nbsp;<A onclick=\"return confirm('ȷ��Ҫɾ���˰������ģ����ɾ���˰������ģ���ԭʹ�ô˰������ģ������½���Ϊʹ��ϵͳĬ�ϰ������ģ�塣');\" href='"+url+"/admin/MMDTemplate.jsp?id="+rs.getInt("TemplateId")+"&amp;action=del&amp;pid="+rs.getInt("WithType")+"'>ɾ��ģ��</A> </TD> </TR>");
					}
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs!=null) rs.close();
			if(stm!=null) stm.close();
			if(conn!=null) conn.close();
		}
		return re.toString();
	}
	private static String getWithTypeName(int id)throws Exception
	{
		String re=null;
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;
		Connections connTmp=new Connections();
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try
		{
			rs=stm.executeQuery("select * from templateType where id="+id);
			if(rs.next())
			{
				re=rs.getString("Type");
			}
			else
			{
				re="���ݴ���";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		return re;
	}
	public static String getAllTemplateType() throws Exception
	{
		String url=null;
		StringBuffer re=new StringBuffer(500);
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;
		Connections connTmp=new Connections();
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try
		{
			url=Aqu.getUrl(connTmp.getConnection(),"config","url");
			rs=stm.executeQuery("select * from templatetype");
			re.append(" | ");
			while(rs.next())
			{
				re.append("<a href='"+url+"/admin/templateManage.jsp?id="+rs.getInt("Id")+"'>"+rs.getString("Type")+"</A> | ");
			}
			re.append("<a href='"+url+"/admin/templateManage.jsp?id=0'>����ģ��</A> | ");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs!=null) rs.close();
			if(stm!=null) stm.close();
			if(conn!=null) conn.close();
			
		}
		return re.toString();
	}
	public static void main(String[] args)
	{
		try
		{
			System.out.println(getManage("0"));
		}
		catch(Exception e)
		{
		}
		
	}
}