package com.bjsxt.crm.service;

import com.bjsxt.crm.entity.User;

public interface LoginService {
	/**
	 * �û���½
	 * @param user_num
	 * @param user_pw
	 * @return
	 */
	User login(String user_num, String user_pw);

}
