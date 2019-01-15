package com.bjsxt.crm.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBUtil {
	/**
	 * ��ȡ���ݿ�����
	 * @return
	 */
	public static Connection getConnection(){
//		Connection conn = null;
//		String driver ="oracle.jdbc.OracleDriver";
//		String url ="jdbc:oracle:thin:@127.0.0.1:1521:orcl";
//		String user="bjsxt";
//		String password ="bjsxt";		
//		try {
//			//��������
//			Class.forName(driver);
//			//�������ݿ⣩��������
//			conn = DriverManager.getConnection(url, user, password);
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
	Connection conn = ConnectPoolFactory.getInstance().getConnect();
		
		
//		Connection conn=null;
//		try {
//			Class.forName("org.logicalcobwebs.proxool.ProxoolDriver");
//			conn = DriverManager.getConnection("proxool.test");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return conn;
	}
	/**
	 * �ر����ݿ���Դ
	 * PrepraredStataement��Statement���ӽӿڣ�Ҳ���Դ���
	 * @param rs
	 * @param stmt
	 * @param conn
	 */
	public static void closeAll(ResultSet rs,Statement stmt,Connection conn){
		try {
			if(rs != null){
				rs.close();
			}				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			if(stmt != null){
				stmt.close();
			}				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			if(conn != null){
				conn.close();
			}				
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * ���DML������insert��update��delete
	 * @param sql
	 * @param params
	 * @return
	 */
	public static int executeUpdate(String sql,Object [] params) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;	
		int n=0;
		try {			
			//�������ݿ⣩��������
			conn = getConnection();
			//�������ݿ⣩��������õ����			
			pstmt = conn.prepareStatement(sql);
			for(int i=0;i<params.length;i++){
				pstmt.setObject(i+1, params[i]);
			}
			n = pstmt.executeUpdate();
			//������			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//�ر���Դ
			closeAll(rs, pstmt, conn);
		}
		//��������
		return n;
	}
	
	public static void main(String[] args) {
		Connection conn  = DBUtil.getConnection();
		System.out.println(conn);
	}

}
