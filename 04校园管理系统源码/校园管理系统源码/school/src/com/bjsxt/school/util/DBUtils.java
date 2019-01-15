package com.bjsxt.school.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * ʹ��web.xml����proxool���ӳؽ�����������
 * 
 * @author Administrator
 * 
 */
public class DBUtils {

	/**
	 * ��ȡ����
	 * 
	 * @return
	 */
	public static Connection getConnection() {
		return ConnectPoolFactory.getInstance().getConnect();
	}

	/**
	 * �ر���Դ
	 * 
	 * @param rs
	 * @param stmt
	 * @param conn
	 */
	public static void closeAll(ResultSet rs, Statement stmt, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * ��DML����������ȡ
	 * 
	 * @param emp
	 * @return
	 */
	public static int doDML(String sql, Object[] params) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int n = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				pstmt.setObject(i + 1, params[i]);
			}
			n = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return n;
	}

	

}
