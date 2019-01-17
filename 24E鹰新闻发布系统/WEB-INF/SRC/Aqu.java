package com.v246;
public class Aqu
{
	public static String getUrl(java.sql.Connection conn,String table,String columns)throws java.sql.SQLException
	{
		/*
		 *����ָ�����ݿ����ӡ�ָ����ָ���ֶεĵ�һ����¼������ж�����¼�Ļ���ֻ���ص�һ����¼��
		 **/
		String re=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;
		try
		{
			stm=conn.createStatement();
			rs=stm.executeQuery("select * from "+table);
		}
		catch(java.sql.SQLException e)
		{
			throw new java.sql.SQLException("Error in Aqu.class 11--12 "+e.getMessage());
		}
		try
		{
			if(rs.next())
			{
				re=rs.getString(columns);
			}
			else
			{
				re="";
			}
			
		}
		catch(java.sql.SQLException e)
		{
			throw new java.sql.SQLException("Error in Aqu.class 20--21 "+e.getMessage());
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		return re;
	}

	public static String getCheckState(String checkBox)
	{
	/*
	 *����check��ѡ���ѡ��״̬�����ѡ���򷵻�1���򷵻�0
	 **/
		String tmp;
		if(checkBox!=null&&checkBox.equals("Yes"))
		{
			tmp="1";
		}
		else
		{
			tmp="0";
		}
			return tmp;
	}
	public static String getRadioState(String radio,String s)
	{
		/*
		 *����radio��ѡ���ѡ��״̬�����ѡ���򷵻�1���򷵻�0
		 **/
		String tmp;
		if(radio!=null&&radio.equals(s))
		{
			tmp="1";
		}
		else
		{
			tmp="0";
		}
		return tmp;
	}
	public static String getGB(String str)
	{
	/*
	 *���¶��ַ����б���
	 **/
		try
		{
			byte array[]=str.getBytes("ISO-8859-1");
			str=new String(array);
		}
		catch(Exception e)
		{
		}
		return str;
	}
	public static String[] stringAnalysis(String str,String s)
	{
	/*
	 *�ַ�����������ָ�����ַ���str��ָ�����ַ�s�ָȻ��洢��һ�������в�����
	 **/
		int i=0;
		java.util.StringTokenizer analysis=new java.util.StringTokenizer(str,s);
		String[] re=new String[analysis.countTokens()];
		while(analysis.hasMoreTokens())
		{
			re[i]=analysis.nextToken();
			i++;
		}
		return re;
	}
	public static String addIC(String str)//addIC��add Inverted Comma�ļ�д
	{
	/*
	 *��ָ�����ַ���ǰ����ϵ�����''
	 **/
	 	StringBuffer re=new StringBuffer(50);
	 	re.append("'");
		re.append(str);
		re.append("'");
		return re.toString();
	}
	public static String formatDate(String s) //��ʽ��ʱ�佫2005-07-15 23:22:09��ʽ����20050715232209������ʽ
	{
		StringBuffer re=new StringBuffer();
		java.util.StringTokenizer analysis=new java.util.StringTokenizer(s,"- :");
		while(analysis.hasMoreTokens()) //ѭ�������ʽ��󷵻ص����������
		{
			re.append(analysis.nextToken());
		}
		re.append(".html");//����ʽ���������ַ��������ļ���
		return re.toString();//���ظ�ʽ����ɺ���ַ���
	}
	public static void main(String []args)
	{
		String url=null;
		Connections connTmp=new Connections();
		try
		{
			url=Aqu.getUrl(connTmp.getConnection(),"config","url");
		}
		catch(Exception e)
		{
			
		}
	}
}