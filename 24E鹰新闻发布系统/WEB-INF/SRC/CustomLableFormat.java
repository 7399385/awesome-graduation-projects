package com.v246;
public class CustomLableFormat
{
	protected String url;//���ڴ洢��վ�İ�װ·��
	protected FullClassDir fullDir=new FullClassDir();//���ڵõ�ָ����ĿID��·��
	protected String[][] re=null;//���ڷ���
	protected java.sql.Connection conn=null;
	protected Connections connTmp=new Connections();
	protected java.sql.Statement stm=null;
	protected java.sql.Statement stm1=null;
	protected java.sql.ResultSet rs=null;
	protected java.sql.ResultSet rs1=null;
	protected ReplaceAll replaceAll=new ReplaceAll();
	CustomLableFormat()
	{
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
			stm1=conn.createStatement();
			url=Aqu.getUrl(connTmp.getConnection(),"config","url");//�õ���վ�İ�װ·��
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public String[][] lableFormat() throws Exception
	{
		
		
		int count;//�洢�鵽�����ݵĸ���
		try
		{
			rs=stm.executeQuery("select * from customlable");
			rs.last();//�ƶ�����������
			count=rs.getRow();//�õ����ݸ���
			re=new String[count][2];//��ʼ������
			System.out.println(count);
			rs.first();//�������ƶ�����һ����¼���Ա���в���
			
			for(int i=0;i<count;i++)//�����������ݲ��洢
			{
				
				re[i][0]=rs.getString("LableName");//�洢�Զ����ǩ������
				re[i][1]=formats(rs.getString("sql"),String.valueOf(rs.getInt("BarNumber")),String.valueOf(rs.getInt("LetterNumber")),rs.getBoolean("staticed"));//�õ��ñ�ǩ�ľ�������
				rs.next();//�ƶ�����һ����¼
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
				if(rs1!=null)rs1.close();
				if(rs!=null)rs.close();
				if(stm1!=null)stm1.close();
				if(stm!=null)stm.close();
				if(conn!=null)conn.close();
				
		}
		return re;
		
	}		
	public String formats(String sql,String bar,String letter,boolean SD)
	{
		StringBuffer re=new StringBuffer(500);
		if(SD)
		{
	
			String articleName;
			int j=0;
			try
			{
				rs1=stm1.executeQuery(sql);//���ҷ������������ݣ���SQL����Ծ��洢�����ݿ���
				
				while(rs1.next())
				{
					
					if(j>Integer.parseInt(bar))
					{
						
						break;
					}
					
					articleName=Aqu.formatDate(rs1.getString("UpdateTime"));
					
				//	System.out.println((rs1.getString("Title")).substring(0,Integer.parseInt(letter)));
					if(letter.equals("0")||(rs1.getString("Title")).length()<=Integer.parseInt(letter))
					{
						re.append("<img src='/images/article_title_pic.gif' alt='��ͨ����'>&nbsp;<a href='"+url+"/Article"+fullDir.getClassDir(rs1.getInt("ClassId"),"/")+"/"+articleName.substring(0,4)+"/"+articleName.substring(4,6)+"/"+articleName+"'>"+rs1.getString("Title")+"</a><br>");//�õ���ָ��������ָ���ַ��������������ݣ�������
					}
					else
					{
						re.append("<img src='/images/article_title_pic.gif' alt='��ͨ����'>&nbsp;<a class='listA' href='"+url+"/Article"+fullDir.getClassDir(rs1.getInt("ClassId"),"/")+"/"+articleName.substring(0,4)+"/"+articleName.substring(4,6)+"/"+articleName+"' title='"+rs1.getString("Title")+"'>"+(rs1.getString("Title")).subSequence(0,Integer.parseInt(letter))+"...</a><br>");//�õ���ָ��������ָ���ַ��������������ݣ�������
					}
					j++;
					
				//	re.append("oooooooooo");
					
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
		else
		{
			try
			{
				re.append("<script src='"+url+"/showDynamicCustomContent.jsp?id="+rs.getInt("Id")+"'></script>");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		return replaceAll.replaceAll(re.toString(),"\"","&quot;");
	}
	public static void main(String args[])
	{
		CustomLableFormat format=new CustomLableFormat();
		String tmp[][]=null;
		try
		{
			tmp=format.lableFormat();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		for(int i=0;i<tmp.length;i++)
		{
			System.out.print(tmp[i][0]+": ");
			System.out.println(tmp[i][1]);
		}
	}

}