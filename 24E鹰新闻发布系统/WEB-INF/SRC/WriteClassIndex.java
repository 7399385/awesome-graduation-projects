package com.v246;
public class WriteClassIndex
{

	public static void writeAll()throws Exception
	{
		String url=null;//���ڴ������
		StringBuffer shortFilePath=new StringBuffer(50);	//���ڴ�����2005/07������Ŀ¼���
		StringBuffer fileName=new StringBuffer(50);//���ڴ�ŵõ����ļ���
		WriteHtml writeHtml=new WriteHtml();//�������ɾ�̬HTML
		ReplaceAll replaceAll=new ReplaceAll();//�����滻ģ���еı�ǩ���滻�����ݿ���ʵ������)
		String allTitle="{$allTitle$}";//����(����ǰ��Ŀ�����е�����)
		String templateContent=null;//������Ŀģ������
		AquGetRows getRows=new AquGetRows();//���ڶ�ȡ��Ŀ��(class)�е��������ݲ�����һ����ά����
		FullClassDir fullClassDir=new FullClassDir();//���ڵõ���ǰ��Ŀ��·��(������������ֻ����Ŀ�Ĳ��)
		String classPath=null;//��ǰ��Ŀ�ľ���·��(������������������\Article���������Ŀ¼Ҳ������վ�ĸ�Ŀ¼)
		String id=null;
		String[][] rows=null;//����rows���صĶ�ά����
		StringBuffer okString=new StringBuffer(5000);//���ڱ��浱ǰ��Ŀ�µ���������
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
			throw new Exception("Error in WriteClassIndex.class N0.1 "+e.getMessage());
		}
		try
		{
			rows=getRows.getRows(connTmp.getConnection(),"class");//��class���е��������ݴ浽һ����ά������
		}
		catch(java.sql.SQLException e1)
		{
			throw new java.sql.SQLException("Error in WriteClassIndex.class NO.2 "+e1.getMessage());
		}
		try
		{
			rs=stm.executeQuery("select * from template where isDefault=1 and WithType=20");//��ѯ��Ŀģ��ģ��
		}
		catch(java.sql.SQLException e3)
		{
			throw new java.sql.SQLException("Error in WriteClassIndex.class NO.3 "+e3.getMessage());
		}
		try
		{
				if(rs.next())
				{
					
					templateContent=rs.getString("Content");//��ô������Ŀ��������
				}
				
		}
		catch(java.sql.SQLException e4)
		{
			throw new java.sql.SQLException("Error in WriteClassIndex.class NO.4"+e4.getMessage());
		}
		try
		{
			url=Aqu.getUrl(connTmp.getConnection(),"config","Url");//��ô��վ����ַ
		}
		catch(java.sql.SQLException e6)
		{
			throw new java.sql.SQLException("Error in WriteClassIndex.class NO.6 "+e6.getMessage());
		}
		for(int i=0;i<rows[0].length;i++)
		{
			try
			{
				rs=stm.executeQuery("select * from article where ClassId="+rows[0][i]);//���˵�ǰ��Ŀ�µ���������
			}
			catch(java.sql.SQLException e2)
			{
				throw new java.sql.SQLException("Error in WriteClassIndex.class NO.7 "+e2.getMessage());
			}
		//	System.out.println("dddddddddddddddddddd");
			//System.out.println(rows[0][i]);
			classPath="\\Article"+fullClassDir.getClassDir(Integer.parseInt(rows[0][i]));//�õ���ǰ��Ŀ�ľ���·��
		//	System.out.println("dddd");
			try
			{
				
				while(rs.next())
				{
					fileName.append(FormatTimeToArticleName.format(rs.getString("UpdateTime")));//��ʽ��ʱ��
					shortFilePath.append(url+classPath+"\\"+fileName.subSequence(0,4)+"\\"+fileName.subSequence(4,6));//�γ�����2005/07������Ŀ¼���
					okString.append("<a href="+shortFilePath+"\\"+fileName+" arget=_blank>"+rs.getString("Title")+"</a><br>");//�������������������Ӵ����һ���ַ���������
					fileName.delete(0,fileName.length());//���StringBuffer���������
					shortFilePath.delete(0,shortFilePath.length());//���StringBuffer���������
					
				}
			}
			catch(java.sql.SQLException e5)
			{
				throw new java.sql.SQLException("Error in WriteClassIndex.class NO.8"+e5.getMessage());
			}
			String templateContentTmp=new String(templateContent);//��ģ�����ݸ�ֵ��(Ҫ��Ȼʹһ��ģ��ͱ��ĵ����߰������´�û��������)
			templateContentTmp=replaceAll.replaceAll(templateContentTmp,allTitle,okString.toString());//����ǩ���ݻ���ʵ�����ݿ��е�����
			writeHtml.save(templateContentTmp,classPath.toString(),"index.html");//������Ŀ��ҳhtml
			okString.delete(0,okString.length());//�������
		}
		try
		{
				if(rs!=null)rs.close();
				if(stm!=null)stm.close();
				if(conn!=null)conn.close();
		}
		catch(Exception e)
		{
			throw new Exception("Error in WriteClassIndex.java N0.9 "+e.getMessage());
		}
			finally
			{
				if(rs!=null)rs.close();
				if(stm!=null)stm.close();
				if(conn!=null)conn.close();
			}
	}
	public void writeOne(String id)
	{
		
	}
	public static void main(String[] args)
	{
		WriteClassIndex w=new WriteClassIndex();
		try
		{
			w.writeAll();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}