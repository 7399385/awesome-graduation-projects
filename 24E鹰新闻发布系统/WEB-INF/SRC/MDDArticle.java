package com.v246;
public class MDDArticle
{
	public static void deleteArticle(String id)throws Exception
	{
		FileManage fileManage=new FileManage();
		String filePath=null;
		FormatTimeToArticleName formatName=new FormatTimeToArticleName();
		String fileName=null;
		FullClassDir fullClass=new FullClassDir();
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
			throw new Exception("error in MDDArticle.java NO.1 "+e.getMessage());
		}
		try
		{
			rs=stm.executeQuery("select * from article where ArticleID="+id);
			if(rs.next())
			{
				Path path=new Path();
				String tmpPath=path.getPathFromClass(Path.class);//��ôPath.class�ľ���·��
				StringBuffer okPath=okPath=new StringBuffer(tmpPath);
				okPath.replace(tmpPath.indexOf("\\WEB-INF\\classes"),tmpPath.length(),"");//�õ�����ռ��ϵ���Ŀ���·��
				fileName=formatName.format(rs.getString("UpdateTime"));//��ʱ���ʽ�����ļ���
				filePath=fullClass.getClassDir(rs.getInt("ClassId"));//��ô����Ŀ�����·��
				okPath.append("\\Article");
				okPath.append(filePath);
				okPath.append("\\");
				okPath.append(fileName.substring(0,4));
				okPath.append("\\");
				okPath.append(fileName.substring(4,6));
				okPath.append("\\");
				okPath.append(fileName);
				fileManage.deleteFile(okPath.toString());//���յ�����·��
				System.out.println(okPath);
				stm.execute("delete from article where ArticleID="+id);
			}
		}
		catch(Exception e)
		{
			throw new Exception("Error in MDDArticle.java NO.2 "+e.getMessage());
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
	}
}