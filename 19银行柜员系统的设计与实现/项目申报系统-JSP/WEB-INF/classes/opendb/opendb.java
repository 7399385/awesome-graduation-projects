/* opendb.java  3.30.2003
   Bean to connect database */

package opendb;
import java.sql.*;

public class opendb
{ 
    String strDBDriver="sun.jdbc.odbc.JdbcOdbcDriver";
    String strDBUrl="jdbc:odbc:wgl.dsn";
    private Connection conn=null;
    private Statement stmt=null;
    ResultSet rs=null;
    //<!--ע�����ݿ���������-->
    public opendb()
    {
    	try
    	{
    	    Class.forName(strDBDriver);
    	}
    	//�쳣����
    	catch(java.lang.ClassNotFoundException e) 
        {
            System.err.println("opendb():"+e.getMessage());
        }
    }
    //<!--�������ݿ����Ӽ��������ݲ�ѯ-->
    public ResultSet executeQuery(String sql)
    {
        rs=null;
        try
        {
    	    conn=DriverManager.getConnection(strDBUrl,"sa","");//�������ݿ����Ӷ��� 
            stmt=conn.createStatement();
            rs=stmt.executeQuery(sql);
        }
        catch(SQLException ex) 
        {
    	    System.err.println("aq.executeQuery:"+ex.getMessage());
        }
        return rs;
    }
    //<!--�������ݲ���-->
    public void executeUpdate(String sql)
    {
        stmt=null;
        rs=null;
        try
        {
    	    conn=DriverManager.getConnection(strDBUrl,"sa","");
    	    stmt=conn.createStatement();
    	    stmt.executeQuery(sql);
    	    stmt.close();
    	    conn.close();
        }
        catch(SQLException ex)
        {
            System.err.println("aq.executeQuery:"+ex.getMessage());
        }
    }
    //<!--�ر����ݿ�����-->
    public void closeStmt()
    {
        try
        {
        	stmt.close();
        }
        catch(SQLException e)
        {
    	    e.printStackTrace();
        }
    }
    public void closeConn()
    {
	    try
	    {
		    conn.close();
	    }
	    catch(SQLException e)
	    {
		    e.printStackTrace();
	    }
    }
}