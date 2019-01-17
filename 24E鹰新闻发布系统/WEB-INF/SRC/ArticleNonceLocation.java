package com.v246;
public class ArticleNonceLocation
{
	protected StringBuffer re=new StringBuffer(300);
	protected StringBuffer fullClassDir=new StringBuffer(30);
	protected String url=null;
	protected FullClassDir fullDir=new FullClassDir();//���ڵõ���ǰ��Ŀ��·��(������������ֻ����Ŀ�Ĳ��)
	protected StringBuffer okString=new StringBuffer(50);//���챣�����õ���λ��
	protected Connections connTmp=new Connections();
	protected AquGetRows getRows=new AquGetRows();//���Եõ���class����������ݲ�����һ����ά����
	protected String[][] rows=null;
	protected java.sql.Connection conn=null;
	protected java.sql.Statement stm=null;
	protected java.sql.ResultSet rs=null;
	ArticleNonceLocation()
	{
		try
		{
			getRows();	
			url=getUrl();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		re.append("����ǰ��λ�� &gt;&gt; <a href='"+url+"index.html'>��ҳ</a> &gt;&gt; ");
	}
	protected String getUrl()throws Exception
	{
		String url=null;
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			throw new Exception("Error in ArticleNonceLocation.class "+e.getMessage());
		}
		try
		{
			rs=stm.executeQuery("select * from config");
			rs.next();
			url=rs.getString("url");
		}
		catch(Exception e)
		{
			throw new Exception("Error in ArticleNonceLocation.class "+e.getMessage());
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		return url;
		
	}
	protected void getRows()
	{
		try
		{
			rows=getRows.getRows(connTmp.getConnection(),"class");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	protected void locationSort(String id)
	{
		for(int i=0;i<rows[0].length;i++)
		{
			if(rows[0][i].equals(id))
			{
				try
				{
					okString.append("<a href='"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]))+"\\index.html'>"+rows[2][i]+"</a> &gt;&gt; ##");//����Ӧ��Ŀ�ı���浽okString��
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				if(!rows[1][i].equals("0"))
				{
					locationSort(rows[1][i]);
				}
				else
				{
					break;
				}
			}
		}
		
	}
	public String getLocation(String id)
	{
		StringAnalysis ana=new StringAnalysis();
		locationSort(id);
		String tmp[]=ana.startAnalysis(okString.toString(),"##");
		for(int i=tmp.length-1;i>=0;i--)
		{
				re.append(tmp[i]);
			
		}
		re.append("��������");
		return re.toString();
	}
	public static void main(String []args)
	{
		ArticleNonceLocation location=new ArticleNonceLocation();
		String tmp=null;
		tmp=location.getLocation("9");
		System.out.println(tmp);
	}
}