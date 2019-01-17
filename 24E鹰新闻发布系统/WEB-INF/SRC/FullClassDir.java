package com.v246;
/*
 *�������ڵõ���ָ��IDΪ�����ĸ���Ŀ��ȫ·��
 **/
public class FullClassDir
{
	protected StringAnalysis ana=new StringAnalysis();//���÷����ַ���
	protected Connections connTmp=new Connections();//���ڵõ����ݿ�����
	protected String[][] rows; //���ڴ洢ָ�����е������ֶε�ֵ���к��У�
	protected AquGetRows aquGetRows=new AquGetRows();//�������ڻ��ָ�����ݱ�������к��е�ֵ������һ����ά����
	protected int parentId;//����ID�Ƕ���
	protected String classDir="";//�洢δ��ʽ��֮ǰ����Ŀ·�����ǵ�����
	public void getRows() throws Exception //�õ�rowsֵ
	{
		try
		{
			rows=aquGetRows.getRows(connTmp.getConnection(),"class");
		}
		catch(Exception e)
		{
			throw new Exception("Error in FullClassDir.class 13"+e.getMessage());
		}
	}
	public void getParentId(int id)throws Exception //�õ�ָ��ID�ĸ���ID�Ƕ���
	{
		java.sql.Connection conn=null;
		java.sql.Statement stm=null;
		java.sql.ResultSet rs=null;
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			throw new Exception("Error in FullClassDir 27,28 "+e.getMessage());
		}
		try
		{
			rs=stm.executeQuery("select * from class where Id="+id);
			
			if(rs.next())
			{
				parentId=rs.getInt("Id");//�õ�����ID
				if(parentId==0)
				{
					classDir=rs.getString("ClassDir");//����ǰ��Ŀ��Ŀ¼��ַ�ȴ�����
				}
				else
				{
					classDir="";
				}
				
			}
		}
		catch(java.sql.SQLException e1)
		{
			throw new java.sql.SQLException("Error in FullClassDir.class 16-39 "+e1.getMessage());
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
	}
	public void getFullClassDir()//���ķ���
	{
		
		
			for(int i=0;i<rows[0].length;i++) //����������Ϊ��������
			{
				if(rows[0][i].equals(String.valueOf(parentId)))//�����ǰ��ĿID��ָ����Ŀ�ĸ���ID
				{
					classDir=classDir+"\\"+rows[3][i];//��ô�Դ洢����
					parentId=Integer.parseInt(rows[1][i]);//����ǰ���ҵ����Ǹ�����Ŀ����Ŀ�ĸ���ID�洢��������Ѱ�Ҹ���Ŀ�ĸ���ID
					break;
					
				}

			}
			if(parentId>0) //����ҵ�����Ŀ����һ�����࣬��ô
			{
				getFullClassDir();//���еݹ飬�������ң�
			}

		
	}
	public String getClassDir(int id)throws Exception
	{
		StringBuffer re=new StringBuffer(100);
		try
		{
	
			getRows();
			getParentId(id);
			if(parentId>0)
			{
				getFullClassDir();
			}
			
		}
		catch(Exception e)
		{
			throw new Exception("Error in FullClassDir.class 83-86 "+e.getMessage());
		}
		String[] tmp=ana.startAnalysis(classDir,"\\");
		for(int i=tmp.length-1;i>=0;i--)
		{
			re.append("\\"+tmp[i]);
		}
		return re.toString();
	}
	public String getClassDir(int id,String s)throws Exception //s��·������\abc\dir �� /abc/dir�ȵ�
	{
		StringBuffer re=new StringBuffer(100);
		try
		{
	
			getRows();
			getParentId(id);
			getFullClassDir();
		}
		catch(Exception e)
		{
			throw new Exception("Error in FullClassDir.class 83-86 "+e.getMessage());
		}
		String[] tmp=ana.startAnalysis(classDir,"\\");
		for(int i=tmp.length-1;i>=0;i--)
		{
			re.append(s+tmp[i]);
		}
		return re.toString();
	}
	public static void main(String []args)
	{
		String tmp=null;
		FullClassDir fullClassDir=new FullClassDir();
		try
		{
			tmp=fullClassDir.getClassDir(21);
		}
		catch(Exception e)
		{
		}
		System.out.println(tmp);
	}
}