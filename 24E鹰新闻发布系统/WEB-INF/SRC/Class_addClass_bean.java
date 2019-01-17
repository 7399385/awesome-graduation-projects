package com.v246;
public class Class_addClass_bean
{
	protected String re=null;
	protected InvertedComma ic=new InvertedComma();
	protected String parentID; //������Ŀ
	protected String className; //��Ŀ����
	protected String classDir;  //��ĿĿ¼
	protected String maxPerPage;//ÿҳ��ʾ��������
	protected boolean flag;
	protected java.sql.Connection conn=null;
	protected Connections connTmp=new Connections();
	protected java.sql.Statement stm=null;
	protected java.sql.Statement stm1=null;
	protected java.sql.ResultSet rs=null;
	protected java.sql.ResultSet rs1=null;
	public Class_addClass_bean()throws Exception
	{
		this.conn=connTmp.getConnection();
	}
	public String addClass(Class_addClass classes)throws Exception
	{
		parentID=classes.getParentID();
		className=ic.getIC(classes.getClassName());
		classDir=ic.getIC(classes.getClassDir());
		maxPerPage=classes.getMaxPerPage();
		String updateChildNum="update class set ChildNum=ChildNum+1 where Id="+parentID;
		String updateFlag="update class set Flag=1 where Id="+parentID;
		String insert="insert into class(Title,ClassDir,MaxPerPage,ParentID) values("+className+","+classDir+","+maxPerPage+","+parentID+")";
		conn=connTmp.getConnection();
		stm=conn.createStatement();
		stm1=conn.createStatement();
		rs=stm.executeQuery("select * from class where Title="+className);
		rs1=stm1.executeQuery("select * from class where ClassDir="+classDir);
		if(rs.next())
		{
			re="alreadyHaveClassName";
		}
		else if(rs1.next())
		{
			
			re="alreadyHaveClassDir";
		}
		else
		{
	
			try
			{
				
				if(parentID.equals("0")) //���Ϊһ�����࣬��ʲôҲ����
				{
				}
				else
				{
					rs=stm.executeQuery("select * from class where Id="+parentID);//�������һ�����࣬��������ĸ���
					if(rs.next())
					{
						flag=rs.getBoolean("Flag");//�õ��丸���Ƿ����¼�Ŀ¼true or false
					}	
				}
			}
			catch(java.sql.SQLException e2)
			{
				throw new java.sql.SQLException("Error in Class_addClass_bean 30-33"+e2.getMessage());
			}
			try
			{
				stm.executeUpdate(insert);//д������
				stm.executeUpdate(updateChildNum);//�����丸��ĺ�����
				if(!flag)//����ñ�־Ϊ��Ҳ����˵ԭ���ڸ÷�������û���¼����࣬��
				{
					stm.executeUpdate(updateFlag);//�����ñ�־��ʹ��Ϊtrue
				}
				re="addClass";
			}
			catch(Exception e)
			{
				throw new Exception("insert data error in Class_addClass_bean 41-46"+e.getMessage());
			}
		}
		try
		{
			if(rs1!=null)rs.close();
			if(rs!=null)rs.close();
			if(stm1!=null)stm.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs1!=null)rs.close();
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(stm1!=null)stm.close();
			if(conn!=null)conn.close();
		}
		return re;
	}

}