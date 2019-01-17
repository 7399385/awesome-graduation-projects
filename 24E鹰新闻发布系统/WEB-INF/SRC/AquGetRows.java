package com.v246;
/*
 *���ཫ�õ�������ָ��JDBC����,ָ�����ݱ�����еļ�¼��ֵ,�Զ�ά��������xxx[�ֶδ���][�ֶ�����ֵ]
 **/
public class AquGetRows
{

	private java.sql.Statement stm=null;
	private java.sql.ResultSet rs=null;
	private java.sql.ResultSetMetaData rsm=null;
	private int columnCount;
	private int rowCount;
	private String rows[][];
	public String[][] getRows(java.sql.Connection conn,String table)throws java.sql.SQLException
	{
		try
		{
			stm=conn.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_READ_ONLY);
			rs=stm.executeQuery("select * from "+table);
			rsm=rs.getMetaData();
		}
		catch(java.sql.SQLException e)
		{
			throw new java.sql.SQLException("Initialize Statement or ResultSet or ResultSetMeta error in AquGetRows.class"+e.getMessage());
		}
		try
		{
			rs.last();//����¼���
			rowCount=rs.getRow();//�õ���¼��(����)
			rs.first();//�ƶ�����¼��ͷǰ
			columnCount=rsm.getColumnCount();//�͵��ñ�������Ч�ֶε���Ŀ�ܺ�
			rows=new String[columnCount][rowCount];//��������������ʼ����ά����
		}
		catch(java.sql.SQLException e1)
		{
			throw new java.sql.SQLException("Initialize planar arrray error or rs.last or rs.first error in AquGetRows.class"+e1.getMessage());
		}
		try
		{

				for(int i=0;i<rowCount;i++)//����������
				{
					for(int j=0;j<columnCount;j++)//����������
					{
							if(rsm.getColumnClassName(j+1).equals("java.lang.Integer"))//��������ĵ�ǰ�ֶ�ΪInteger�Ļ�(INT��)
							{
								
								rows[j][i]=String.valueOf(rs.getInt(j+1));//�洢���ֶε�ǰ������ֵ
							}
							else if(rsm.getColumnClassName(j+1).equals("java.lang.String"))//��������ֶ�ΪString�͵Ļ�
							{

									rows[j][i]=rs.getString(j+1);

							}
							else if(rsm.getColumnClassName(j+1).equals("java.lang.Boolean"))
							{
								rows[j][i]=String.valueOf(rs.getBoolean(j+1));
							}
					}
					rs.next();//�ƶ�����һ����¼,Ȼ���ٷֱ�洢���ֶε�ֵ
			}
		}
		catch(java.sql.SQLException e2)
		{
				throw new java.sql.SQLException("Can't achieve planar Array initialize in AquGetRows.class"+e2.getMessage());
		}
		finally //�ر����ݿ��������
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		this.rows=rows;
		return rows;
	}
	public int getRowsCount()
	{
		return this.rowCount;//���ؼ�¼��(����)
	}
	
	public static void main(String args[])
	{
		
		AquGetRows r=new AquGetRows();
		String [][] rows=null;
		java.sql.Connection conn=null;
		Connections connTmp=new Connections();
		try
		{
			conn=connTmp.getConnection();
			rows=r.getRows(conn,"class");
		}
		catch(Exception e)
		{
			
		}
		for(int i=0;i<rows.length;i++)
		{
			for(int j=0;j<rows[0].length;j++)
			{
				System.out.println(rows[i][j]);
			}
		}

			
  	}
}