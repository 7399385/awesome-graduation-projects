package com.v246;
import java.sql.*;

public class PageableResultSet
{ 
protected java.sql.ResultSet rs=null; 
protected int rowsCount;
protected int pageSize;
protected int curPage;
protected String command = "";

/*
�������Կ�������PageableResultSet2�У�������һ��ResultSet��ʵ�������ʵ��ֻ��ʵ����ResultSet�ӿڣ���ʵ�������ɸ������ݿ⳧�̷ֱ�ʵ�ֵģ������Ұ�������ResultSet�̳����ķ�����ֱ��ת������ʵ�������� 
����PageableResultSet2�м̳���ResultSet����Ҫ������ 
**/ 
public boolean next() throws SQLException 
{ 
	return rs.next(); 
} 

public String getString(String columnName) throws SQLException 
{ 
	try
	{ 
		return rs.getString(columnName); 
	} 
	catch (SQLException e) 
	{//������Ϊ������һЩ������Ϣ�����ݱ��ڵ��� 
		throw new SQLException (e.toString()+" columnName="+columnName+" SQL="); 
	} 
}
public String getInt(String columnName) throws SQLException 
{ 
	try
	{ 
		return String.valueOf(rs.getInt(columnName)); 
	} 
	catch (SQLException e) 
	{//������Ϊ������һЩ������Ϣ�����ݱ��ڵ��� 
		throw new SQLException (e.toString()+" columnName="+columnName+" SQL="); 
	} 
}
public String getBoolean(String columnName) throws SQLException 
{ 
	try
	{ 
		return String.valueOf(rs.getBoolean(columnName)); 
	} 
	catch (SQLException e) 
	{//������Ϊ������һЩ������Ϣ�����ݱ��ڵ��� 
		throw new SQLException (e.toString()+" columnName="+columnName+" SQL="); 
	} 
}
 
//ֻ����Pageable�ӿ��������ķ�������Ҫ�Լ���д�������� 
/**����ע�Ϳɲο�Pageable.java 
*/ 
	public int getCurPage() //���ص�ǰҳ�� 
	{
		return curPage;
	}
	public int getPageCount() //������ҳ��
	{
		if(rowsCount==0)
			return 0;
		if(pageSize==0)
			return 1;
		//calculate PageCount
		double tmpD=(double)rowsCount/pageSize;
		int tmpI=(int)tmpD;
		if(tmpD>tmpI) tmpI++;
		return tmpI;
	}
	public int getPageRowsCount()//���ص�ǰҳ�ļ�¼���� 
	{
		if(pageSize==0)
			return rowsCount;
		if(getRowsCount()==0)
			return 0;
		if(curPage!=getPageCount()) return pageSize;
			return rowsCount-(getPageCount()-1)*pageSize;
	}
	public int getPageSize() //���ط�ҳ��С
	{
		return pageSize;
	}
	public int getRowsCount() //�����ܼ�¼���� 
	{
		return rowsCount;
	}
	public void gotoPage(int page) //ת��ָ��ҳ
	{
		if (rs == null)
			return;
		if (page < 1)
			page = 1;
		if (page > getPageCount())
			page = getPageCount();
		int row = (page - 1) * pageSize + 1;
		try
		{
			rs.absolute(row);
			curPage = page;
		}
		catch (java.sql.SQLException e)
		{}
	}
	public void pageFirst() throws java.sql.SQLException //ת����ǰҳ�ĵ�һ����¼
	{
		int row=(curPage-1)*pageSize+1;
		rs.absolute(row);
	}
	public void pageLast() throws java.sql.SQLException //ת����ǰҳ�����һ����¼ 
	{
		int row=(curPage-1)*pageSize+getPageRowsCount();
		rs.absolute(row);
	}
	public void setPageSize(int pageSize) //���÷�ҳ��С 
	{
		if(pageSize>=0)
		{
			this.pageSize=pageSize;
			curPage=1;
		}
	}
	//����PageableResultSet2�Ĺ��췽��
	public void pageableResultSet(java.sql.ResultSet rs) throws java.sql.SQLException
	{
		if(rs==null) throw new SQLException("given ResultSet is NULL","user");
		
			rs.last();
			rowsCount=rs.getRow();
			rs.beforeFirst();
		
			this.rs=rs;
	}
}