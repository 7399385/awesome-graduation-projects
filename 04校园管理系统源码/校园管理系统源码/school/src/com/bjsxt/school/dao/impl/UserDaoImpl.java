package com.bjsxt.school.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.bjsxt.school.dao.UserDao;
import com.bjsxt.school.entity.User;
import com.bjsxt.school.util.DBUtils;





public class UserDaoImpl implements UserDao {
	@Override
	public List<User> findAll(String userId1, String userName1) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<User> userList = new ArrayList<User>();
		try {			
			//�������ݿ⣩��������
			conn = DBUtils.getConnection();
			//�������ݿ⣩��������õ����
			StringBuffer sql = new StringBuffer("select * from system_users where 1 = 1");
			if (userId1 != null && !("".equals(userId1))) {
				sql.append(" and userId like '%" + userId1 + "%'");
			}
			
			if (userName1 != null && !("".equals(userName1))) {
				sql.append(" and userName like '%" + userName1 + "%'");
			}
			
			pstmt = conn.prepareStatement(sql.toString());
			
			rs = pstmt.executeQuery();
			//������
			while(rs.next()){
				//��ȡ���е�����
				String userId = rs.getString("userId");
				String password = rs.getString("password");
				String userName = rs.getString("userName");
				
				
				//�����е����ݷ�װ��user������
				User user = new User(userId, userName, password);	
				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//�ر���Դ
			DBUtils.closeAll(rs, pstmt, conn);
		}
		//��������
		return userList;
	}
	@Override
	public User findById(String userId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {			
			//�������ݿ⣩��������
			conn = DBUtils.getConnection();
			//�������ݿ⣩��������õ����
			String sql ="select * from system_users where userid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			//������
			if(rs.next()){
				//��ȡ���е�����
				String userName = rs.getString("userName");
				String password = rs.getString("password");
				
				
				//�����е����ݷ�װ��user������
				user = new User(userId, userName, password);							
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//�ر���Դ
			DBUtils.closeAll(rs, pstmt, conn);
		}
		//��������
		return user;
	}

	@Override
	public int save(User user) {
		String sql ="insert into system_users values(?,?,?)";
		Object [] params = {user.getUserId(),user.getUserName(),user.getPassword()};
		int n= DBUtils.doDML(sql, params);
		System.out.println(n);
		return n;
	}

	

	@Override
	public int update(User user) {
		String sql = "update system_users set userName=? , password =? where userId = ? ";
		Object params [] = {user.getUserName(),user.getPassword(),user.getUserId()};
		return DBUtils.doDML(sql, params);
	}

	@Override
	public void deleteUser(String userId)  {
		String sql = "delete from system_users where userId = ?";
		Object [] params  = {userId};
		DBUtils.doDML(sql, params);
		
	}
	@Override
	public User find(String userId, String password) {
		
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			User user = null;
			try {			
				//�������ݿ⣩��������
				conn = DBUtils.getConnection();
				//�������ݿ⣩��������õ����String sql = "select * from system_users where userId like '%"+userId1+"%'"
				//+ " and userName like '%"+userName1+"%'";
				
				
				String sql ="select * from system_users where userid = ? and password = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				pstmt.setString(2, password);
				rs = pstmt.executeQuery();
				//������
				if(rs.next()){
					//��ȡ���е�����
					String userId1 = rs.getString("userId");
					String userName1=rs.getString("userName");
					String password1 = rs.getString("password");
					
					
					//�����е����ݷ�װ��user������
					user = new User(userId1, userName1, password1);							
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				//�ر���Դ
				DBUtils.closeAll(rs, pstmt, conn);
			}
			//��������
			return user;
		}

	}


