package com.v246;
public class MDDClass
{
	protected static java.sql.Statement stm=null;
	public static void deleteClass(String id)throws Exception
	{
		java.sql.Connection conn=null;
		String rows[][]=null;
		AquGetRows getRows=new AquGetRows();
		Connections connTmp=new Connections();
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			throw new Exception("Error in MDDClass.java NO.1 "+e.getStackTrace());
		}
		try
		{
			rows=getRows.getRows(connTmp.getConnection(),"class");
			startDelete(rows,id);
		}
		catch(Exception e)
		{
			throw new Exception("Error in MDDClass.java NO.2 "+e.getMessage());
		}
		finally
		{
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
	}
	public static void startDelete(String rows[][],String id)throws Exception
	{
		StringBuffer okPath=null;
		Path path=new Path();
		FileManage fileManage=new FileManage();
		FullClassDir fullClass=new FullClassDir();
		try
		{
			String tmpPath=path.getPathFromClass(Path.class);//��ôPath.class�ľ���·��
			okPath=new StringBuffer(tmpPath);
			okPath.replace(tmpPath.indexOf("\\WEB-INF\\classes"),tmpPath.length(),"");//�õ�����ռ��ϵ���վ·��
			fileManage.deleteFile(okPath.toString()+"\\Article"+fullClass.getClassDir(Integer.parseInt(id)));
			stm.executeUpdate("delete from class where Id="+id);//ɾ����Ŀ
			stm.executeUpdate("delete from article where ClassId="+id);//ɾ������Ŀ�������������
		}
		catch(Exception e)
		{
			throw new Exception("Error in MDDClass.java NO.3 "+e.getMessage());
		}
		for(int i=0;i<rows[0].length;i++) //����������Ϊѭ������
		{
			if(rows[0][i].equals(id))//�����ID�봫������ID�Ⱥͣ���ô
			{
				if(rows[4][i].equals("true"))//�������Ŀ��������Ŀ�Ļ�
				{
					for(int j=0;j<rows[0].length;j++)//����������Ϊѭ������������Ŀ����������Ŀ
					{
						if(rows[1][j].equals(rows[0][i]))//�����ǰ��Ŀ�����Ǹ���Ŀ������Ŀ�Ļ�
						{
							startDelete(rows,rows[0][j]);//�����Լ����еݹ�
						}
					}
				}
			}
		}
	}
}