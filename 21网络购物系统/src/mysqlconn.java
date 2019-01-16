package ckstudio.db;
import java.sql.*;
public class mysqlconn {
String sDBDriver = "org.gjt.mm.mysql.Driver";
//���޸��������--���ݵ�ַ��localhost ���ݿ�����jspshop �û���:root ���룺
String sConnStr = "jdbc:mysql://localhost/jspshop?user=root&password=&useUnicode=true&characterEncoding=GB2312";
Connection conn = null;
ResultSet rs = null;
public mysqlconn() {
try {
Class.forName(sDBDriver); 
}
catch(java.lang.ClassNotFoundException e) {
System.err.println("conn(): " + e.getMessage());
}
}
public void executeInsert(String sql)
	{
	try
		{
		conn=DriverManager.getConnection(sConnStr);
		Statement stmt=conn.createStatement();

		int n=stmt.executeUpdate(sql);
		}
		catch(SQLException ex)
		{
			System.err.println("conn.executeUpdate:"+ ex.getMessage());
		}
	}
public ResultSet executeQuery(String sql) {
rs = null;
try {
conn = DriverManager.getConnection(sConnStr); 
Statement stmt;
stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
rs = stmt.executeQuery(sql);
} 
catch(SQLException ex) { 
System.err.println("conn.executeQuery: " + ex.getMessage());
}
return rs;
}
public void executeDelete(String sql)
	{
	try
		{
		conn=DriverManager.getConnection(sConnStr);
		Statement stmt=conn.createStatement();
		stmt.executeUpdate(sql);
		}
		catch(SQLException ex)
		{
			System.err.println("conn.executeDelete: "+ ex.getMessage());
		}
	}
public int executeUpdate(String sql)
	{
	    int n=0;
	try
		{
		conn=DriverManager.getConnection(sConnStr);
		Statement stmt=conn.createStatement();
		
		n=stmt.executeUpdate(sql);
		}
		catch(SQLException ex)
		{
			System.err.println("conn.executeDelete: "+ ex.getMessage());
		}
		return n;
	}
public void Close()
   {
    try{
       if(rs!=null)
       {
          rs.close();
       }
       if(conn!=null)
       {
          conn.close();
        }
       } 
       catch(SQLException ex)
		{
			System.err.println("conn.executeDelete: "+ ex.getMessage());
		}

   }
}
