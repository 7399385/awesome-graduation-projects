package com.v246;
import java.sql.*;
import javax.sql.*;
import java.io.*;
/**
 *ʵ�־����ҵ���߼�������Action�����
 *���Һ�HttpRequest���޹أ�����������������
 */
 public class UserBean
 {
 	private Connection conn;
 	private Connections tmpConn=new Connections();
 	public UserBean()throws Exception
 	{
 		this.conn=tmpConn.getConnection();
 	}
 	/**
 	 *�����ݿ�������һ���û�
 	 */
 	 public void addUser(User user)throws Exception
 	 {
 	 	Statement stm=conn.createStatement();
 	 	stm.execute("insert into users(UserName,Passwords) values('"+user.getUserName()+"','"+user.getPasswords()+"')");
 	 }
 }