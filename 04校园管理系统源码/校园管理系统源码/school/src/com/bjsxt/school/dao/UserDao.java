package com.bjsxt.school.dao;

import java.util.List;

import com.bjsxt.school.entity.User;




public interface UserDao {
	/**
	 * �����û�����ѯ�û��û�
	 * @param userId
	 * 
	 * @return
	 */
	public User findById(String userId);
	
	public List<User> findAll(String userId, String userName);

	/**
	 * ����û���Ϣ
	 * @param admin
	 * @return
	 */
	public int save(User user);
	/**
	 * �����û���Ϣ
	 * @param admin
	 * @return
	 */
	public int update(User user);
	/**
	 * ɾ���û���Ϣ
	 * @param admin
	 * @return
	 */
	
	public  void deleteUser(String userId);
	
	/**
	 * �����û����������ѯ�û���Ϣ
	 * @param userId
	 * @param password
	 * @return
	 */
	public User find(String userId,String password);

	
	
	

}
