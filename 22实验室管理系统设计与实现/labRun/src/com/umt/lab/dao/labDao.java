package com.umt.lab.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.umt.lab.dbaccess.Dbaccess;
import com.umt.lab.vo.labVo;

public class labDao {
	private Dbaccess db = null;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Statement stmt;
	
	// ��ѯ��Ŀ����
	private String SqlSearchAll = "select * from lab1_peng";
	//���û�������������ݿ��е����ݽ��к˶Բ�ѯ�Ƿ���ȷ
	private String SqlSearchname = "select count(*) as mycount  from lab5_peng  where username=? and userpwd =?";
	//���ʵ���¼
	 private String sqlInsert ="insert into lab1_peng(id,lore,labclass,labname,labDate,kts,team,teacher) " +
                               "values(into_id.nextval,?,?,?,?,?,?,?)";
	//�޸�ʵ������
	 private String sqlUpdate="update lab1_peng set lore=?, labclass=?, labname=?, labDate=?, kts=?, team=?, teacher=?  where id=?";
	 //ɾ��ʵ������
	private String sqldelete ="delete from lab1_peng where id=?";
	 // ��������ѯ
	private String SqlSearchByKey = "select * from lab1_peng  where id= ?";
	
	//��ѯ����ʵ�鷢��
	private  String SqlAlllab="select * from lab2_peng";
	//�������ʵ��
	private String SqlNewLab="insert into lab2_peng (id,labname,labtype,team,labDate,kts,labclass,teacher) " +
			                 "values(into_id.nextval,?,?,?,?,?,?,?)";
	
   //�޸�����ʵ���¼
	private String SqlNewUpdate="update lab2_peng set labname=?, labtype=?,team=?,labDate=?,kts=?,labclass=?,teacher=? where id=?";
	
	//ɾ������ʵ���¼
	private String SqlNewDelete="delete from lab2_peng where id=?";
	 // ��������ѯ
	private String SqlSearchByKey2 = "select * from lab2_peng  where id=? ";	
	
	
	//��ѯ������ʾʵ����Ϣ
	private String SqlAllDemo="select *  from lab3_peng ";
	//�����ʾʵ����Ϣ
	private String sqlInsertDemo="insert into lab3_peng(id ,teacher,lore,labclass,labname,labDate) " +
			                      " values (into_id.nextval,?,?,?,?,?) ";
	//�޸���ʾʵ����Ϣ
	private String sqlUpdateDemo="update lab3_peng set teacher=?,lore=?, labclass=?, labname=?, labDate=?  where id=?";
	//ɾ����ʾʵ����Ϣ
	private String sqlDeleteDemo="delete from lab3_peng where id=? ";
	//��������ѯ��ʾʵ����Ϣ
	private String sqlSeacherDemo ="select * from lab3_peng where id=? ";
	
	//��ѯ������Ʒ�軹��Ϣ
	private String sqlArticle=" select * " +
			                  " from lab4_peng l ,returna r   where l.returnno=r.returnno  ";
	//�����Ʒ�軹��Ϣ
	private String SqlInsertArticle="insert into  lab4_peng (id,borrowdate,borrowname,articlename,model,borrowlist,returndate, " +
			                        "returnlist,returnpeople,returnno )  " +
			                        " values (into_id.nextval ,?,?,?,?,?,?,?,?,?) ";
	//�޸���Ʒ�軹��Ϣ
	private String SqlUpdateArticle="update lab4_peng set borrowdate=?,borrowname=?,articlename=?,model=?,borrowlist=?,returndate=?, " +
			                        "  returnlist=?,returnpeople=?,returnno=?  where id=? ";
	//ɾ����Ʒ�軹��Ϣ
	private String SqlDeleteAritcle="delete from lab4_peng  where id=? ";
	//������Id��ѯ��Ʒ�軹��Ϣ
	private String sqlArticleId="select l.id, l.borrowdate, l.borrowname,l.articlename,l.model,l.borrowlist,l.returndate,  " +
			                        " l.returnlist,l.returnpeople,l.returnno,r.returns as returnstate from lab4_peng l ,returna r where l.returnno=r.returnno and id=? ";
	
	//��ѯ�����û���Ϣ
	private String SqlAllPeople="select * from lab5_peng ";
	//����û���Ϣ
	private String SqlInsertPeople="insert into lab5_peng (studentno,studentname,sax,borndate,age,classname,username,userpwd,labname,fraction)  " +
			                       " values(studentno.nextval,?,?,?,?,?,?,?,?,?) ";
	
	//�޸��û���Ϣ
	private String SqlUpdatePeople="update lab5_peng set studentname=?,sax=?,borndate=?,age=?,classname=?,username=?,userpwd=?,labname=?,fraction=? " +
			                       "  where studentno =?";
	//ɾ���û���Ϣ
	private String SqlDeletePeople="delete  from lab5_peng where studentno=? ";
	//������studentno��ѯ�û���Ϣ
	private String SqlSeachPeople="select * from lab5_peng where studentno=?  ";
	
	
	/**
	 * ���û����������ѯ�Ƿ��е�ǰ�û�
	 * 
	 * @param empno
	 * 
	 */
	public boolean Searchname(String username, String userpwd) {

		
			 db  = new Dbaccess();
			 db.connect();
			 conn = db.getConn();
			 boolean b = false;
			 try {
				pstmt = conn.prepareStatement(SqlSearchname);
				pstmt.setString(1, username);
				pstmt.setString(2, userpwd);			
				rs = pstmt.executeQuery();			
				if (rs.next())
				{
					if (rs.getInt("mycount")==1)
					{
						b = true;
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally
			{
				db.closeConn(conn);
				pstmt = null;
				rs = null;		
			}
			return b;		
		}
		 
	
	
	
	
	
	
	/**��ѯ����ʵ���¼
	 * 
	 * @return
	 */
	 
	public List SearchAll() {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();
		List list = null;
		labVo vo = null;
		try {
			list=new ArrayList();
			pstmt = conn.prepareStatement(SqlSearchAll);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new labVo(rs.getInt("id"),
					           rs.getString("lore"),
	            		       rs.getString("labclass"),
	            		       rs.getString("labname"),
	            		       rs.getDate("labDate"),
	            		       rs.getInt("kts"),
	            		       rs.getInt("team"),
	            		       rs.getString("teacher"));

				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return list;
	}

	
	
	
	
	
	/**
	 * ����µ�ʵ���¼��Ϣ
	 * @param vo
	 * @return
	 */
	public boolean labInsert(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(sqlInsert);
			pstmt.setString(1, vo.getLore());
			pstmt.setString(2, vo.getLabclass());		
			pstmt.setString(3, vo.getLabname());	
			//ת�����ڸ�ʽ
			pstmt.setDate(4,vo.getLabDate());	
			
			pstmt.setInt(5, vo.getKts());	
			pstmt.setInt(6, vo.getTeam());	
			pstmt.setString(7, vo.getTeacher());	
		
			
			int i=pstmt.executeUpdate();	
          //�ж��Ƿ����2�����ϵ��û���Ϣ
			if (i>0)
			{
           	b=true;
           	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	/**
	 * �޸�ʵ���¼��Ϣ���ڽ������
	 * @param vo
	 * @return
	 */
	
	public boolean labUpdate(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(sqlUpdate);
			
			
			pstmt.setString(1, vo.getLore());
			pstmt.setString(2, vo.getLabclass());		
			pstmt.setString(3, vo.getLabname());	
			//ת�����ڸ�ʽ
			pstmt.setDate(4,vo.getLabDate());	
			
			pstmt.setInt(5, vo.getKts());	
			pstmt.setInt(6, vo.getTeam());	
			pstmt.setString(7, vo.getTeacher());	
			pstmt.setInt(8, vo.getId()); 

			 
			int i=pstmt.executeUpdate();	
          //�ж��Ƿ����2�����ϵ��û���Ϣ
			if (i>0)
			{
           	b=true;
           	
			}
		} 
		 catch (SQLException e)
		    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	/**
	 * ��������ѯ����ʵ���¼
	 */
	public labVo SearchByKey2(int id) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();

		labVo vo = null;
		try {
			pstmt = conn.prepareStatement(SqlSearchByKey);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

            if (rs.next()) {
				vo = new labVo( rs.getInt("id"),
						       rs.getString("lore"), 
						       rs.getString("labclass"),
						       rs.getString("labname"), 
						       rs.getDate("labdate"),
						       rs.getInt("kts"), 
						       rs.getInt("team"),
						       rs.getString("teacher"));
     	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return vo;
	}
	
	/**
	 * ɾ��ʵ���¼
	 * @return
	 */
	public boolean labDelete(int id){
		 db=new Dbaccess();
		 db.connect();
		 conn=db.getConn();
		 boolean b=false;
		 try {
			pstmt=conn.prepareStatement(sqldelete);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return b;
		}
	
	
	/*
	 * ��������ʵ���¼��Ϣ
	 * ģ����ѯ
	 * 
	 * 
	 */
	
	public List SearchempInfo(String sql) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();
		List list = null;
		labVo vo = null;
		try {
		     stmt = conn.createStatement();
		     
		     
		   sql = "select * from ("+sql+") ";
		     

			 rs = stmt.executeQuery(sql);
			
				
			list = new ArrayList();
			while (rs.next()) {
				vo = new labVo(rs.getInt("id"),
					            rs.getString("lore"),
					            rs.getString("labclass"),
					            rs.getString("labname"),
					            rs.getDate("labDate"),
					            rs.getInt("kts"),
					            rs.getInt("team"),
					            rs.getString("teacher")
					            );	
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		
		return list;
		
	}
	
	

	/**
	 * ��ѯ���е�����ʵ�鷢�����
	 * @return
	 */
	public List labIssUe(){
		db=new Dbaccess();
		db.connect();
		conn=db.getConn();
		List list =null;
		labVo vo=null;
		try {
			list=new ArrayList();
			pstmt=conn.prepareStatement(SqlAlllab);
			rs=pstmt.executeQuery();
			while (rs.next()){
				vo=new labVo( rs.getInt("id"),
						      rs.getString("labname"),
						      rs.getString("labtype"),
						      rs.getInt("team"),
						      rs.getDate("labDate"),
						      rs.getInt("kts"),
						      rs.getString("labclass"),
						      rs.getString("teacher"));
				list.add(vo);
				}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.closeConn(conn);
			pstmt=null;
			rs=null;
	    }
		 return list;
		 }
	
	
	/**
	 * ������µ�ʵ���¼
	 * @param vo
	 * @return
	 */
	public boolean labNewInsert(labVo vo){
		db=new Dbaccess();
		db.connect();
		conn=db.getConn();
		
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(SqlNewLab);
			
			pstmt.setString(1,vo.getLabname());
			pstmt.setString(2, vo.getLabtype());
			pstmt.setInt(3, vo.getTeam());
			pstmt.setDate(4, vo.getLabDate());
			pstmt.setInt(5, vo.getKts());
			pstmt.setString(6, vo.getLabclass());
			pstmt.setString(7, vo.getTeacher());
			
			int i=pstmt.executeUpdate();	
          //�ж��Ƿ����2�����ϵ��û���Ϣ
			if (i>0)
			{
           	b=true;
           	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	
	/**
	 * ������id�õ�����ʵ������
	 * @param id
	 * @return
	 */
	public labVo SearchByKey3(int id) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();

		labVo vo = null;
		try {
			pstmt = conn.prepareStatement(SqlSearchByKey2);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
		
            if (rs.next()) {
				vo = new labVo( rs.getInt("id"),
						       rs.getString("labname"),
						       rs.getString("labtype"), 
						       rs.getInt("team"),
						       rs.getDate("labDate"),
						       rs.getInt("kts"), 
						       rs.getString("labclass"),
						       rs.getString("teacher"));
     	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return vo;
	}
	
	
	/**
	 * �޸�����ʵ����Ϣ���ڽ������
	 * @param vo
	 * @return
	 */
	
	public boolean labNewUpdate(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(SqlNewUpdate);
			
			
			pstmt.setString(1,vo.getLabname());
			pstmt.setString(2, vo.getLabtype());  
			pstmt.setInt(3, vo.getTeam());
			pstmt.setDate(4,vo.getLabDate());
			pstmt.setInt(5, vo.getKts());
			pstmt.setString(6, vo.getLabclass());
			pstmt.setString(7, vo.getTeacher());
			pstmt.setInt(8, vo.getId());
			 
			pstmt.executeUpdate();	
         
		} 
		 catch (SQLException e)
		    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	
	
	/**
	 * ɾ������ʵ���¼
	 * @return
	 */
	public boolean labNewDelete(int id){
		 db=new Dbaccess();
		 db.connect();
		 conn=db.getConn();
		 boolean b=false;
		 try {
			pstmt=conn.prepareStatement(SqlNewDelete);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return b;
		}
	
	
	

	/**
	 * ����������ѯ����ʵ����Ϣ
	 * ģ����ѯ
	 * @param sql
	 * @return
	 */
	public List SearchempInfo2(String sql) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();
		List list = null;
		labVo vo = null;
		try {
		     stmt = conn.createStatement();
		     
		     
		   sql = "select * from ("+sql+") ";
		     

			 rs = stmt.executeQuery(sql);
			
			
			list = new ArrayList();
			while (rs.next()) {
				vo = new labVo( rs.getInt("id"),
						        rs.getString("labname"),
					            rs.getString("labtype"),
					            rs.getInt("team"),
					            rs.getDate("labDate"),
					            rs.getInt("kts"),
					            rs.getString("labclass"),
					            rs.getString("teacher")
					            
					            );	
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		
		return list;
		
	}
	
	
	/**
	 * ��ѯ���е���ʾʵ����Ϣ
	 * @return
	 */
	public List labAllDemo(){
		db=new Dbaccess();
		db.connect();
		conn=db.getConn();
		List list =null;
		labVo vo=null;
		try {
			list=new ArrayList();
			pstmt=conn.prepareStatement(SqlAllDemo);
			rs=pstmt.executeQuery();
			while (rs.next()){
				vo=new labVo(rs.getInt("id"),
						     rs.getString("teacher"),
				             rs.getString("lore"),
         		             rs.getString("labclass"),
         		             rs.getString("labname"),
         		             rs.getDate("labDate"));
				list.add(vo);
				}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.closeConn(conn);
			pstmt=null;
			rs=null;
	    }
		 return list;
		 }
	
	/**
	 *�����ʾʵ����Ϣ
	 * @return
	 */
	public boolean  labInsertDemo(labVo vo){
		db=new Dbaccess();
		db.connect();
	    conn=db.getConn();
	    boolean b=false;
	    try {
			pstmt=conn.prepareStatement(sqlInsertDemo);
			
			pstmt.setString(1,vo.getTeacher());
			pstmt.setString(2, vo.getLore());
			pstmt.setString(3, vo.getLabclass());
			pstmt.setString(4, vo.getLabname());
			pstmt.setDate(5,vo.getLabDate());
		
			pstmt.executeUpdate();	
	          //�ж��Ƿ����2�����ϵ��û���Ϣ
				
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.closeConn(conn);
			pstmt=null;
			rs=null;
			
		}return b;
		}
	

	/**
	 * ������id�õ���ʾʵ����Ϣ
	 * @param id
	 * @return
	 */
	public labVo SearchByKey4(int id) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();

		labVo vo = null;
		try {
			pstmt = conn.prepareStatement(sqlSeacherDemo);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			 if (rs.next()) {
				vo = new labVo( rs.getInt("id"),
					        	rs.getString("teacher"),
					            rs.getString("lore"),
					        	rs.getString("labclass"),
						        rs.getString("labname"),
						        rs.getDate("labDate"));
     	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return vo;
	}
	
	
	/**
	 * �޸���ʾʵ����Ϣ���ڽ������
	 * @param vo
	 * @return
	 */
	
	public boolean labDemoUpdate(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(sqlUpdateDemo);
			
			pstmt.setString(1, vo.getTeacher());
			pstmt.setString(2, vo.getLore());
			pstmt.setString(3, vo.getLabclass());
			pstmt.setString(4,vo.getLabname());
			pstmt.setDate(5, vo.getLabDate());
			pstmt.setInt(6, vo.getId());
	        pstmt.executeUpdate();
		 }
		 catch (SQLException e)
		    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	/**
	 * ɾ����ʾʵ���¼
	 * @return
	 */
	public boolean labDemoDelete(int id){
		 db=new Dbaccess();
		 db.connect();
		 conn=db.getConn();
		 boolean b=false;
		 try {
			pstmt=conn.prepareStatement(sqlDeleteDemo);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return b;
		}
	
	
	

	/**
	 * ����������ѯ����ʵ����Ϣ
	 * ģ����ѯ
	 * @param sql
	 * @return
	 */
	public List SearchempInfo3(String sql) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();
		List list = null;
		labVo vo = null;
		try {
		     stmt = conn.createStatement();
		     sql = "select * from ("+sql+") ";
		     rs = stmt.executeQuery(sql);
			list = new ArrayList();
			while (rs.next()) {
				vo = new labVo( rs.getInt("id"),
						        rs.getString("teacher"),
						        rs.getString("lore"),
						        rs.getString("labclass"),
						        rs.getString("labname"),
					            rs.getDate("labDate") );	
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		
		return list;
		
	}
	
	/**
	 * ��ѯ���е���Ʒ�軹��Ϣ
	 * @return
	 */
	public List labAllArticle(){
		db=new Dbaccess();
		db.connect();
		conn=db.getConn();
		List list =null;
		labVo vo=null;
		try {
			list=new ArrayList();
			pstmt=conn.prepareStatement(sqlArticle);
			rs=pstmt.executeQuery();
			while (rs.next()){
				
				
				vo=new labVo(rs.getInt("id"),
						     rs.getDate("borrowdate"),
						     rs.getString("borrowname"),
						     rs.getString("articlename"),
						     rs.getString("model"),
						     rs.getInt("borrowlist"),
						     rs.getDate("returndate"),
						     rs.getInt("returnlist"),
						     rs.getString("returnpeople"),
						     rs.getString("returns"));
				list.add(vo);
				}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.closeConn(conn);
			pstmt=null;
			rs=null;
	    }
		 return list;
		 }
	
	/**
	 * �����Ʒ�軹��Ϣ
	 * @param vo
	 * @return
	 */
	public boolean labInsertArticle(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(SqlInsertArticle);
			
			pstmt.setDate(1,vo.getBorrowdate());
			pstmt.setString(2, vo.getBorrowname());
			pstmt.setString(3, vo.getArticlename());
			pstmt.setString(4, vo.getModel());
			pstmt.setInt(5, vo.getBorrowlist());
			pstmt.setDate(6, vo.getReturndate());
			pstmt.setInt(7, vo.getReturnlist());
			pstmt.setString(8, vo.getReturnpeople());
			pstmt.setInt(9, vo.getReturnno());
			pstmt.executeUpdate();	
          
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	/**
	 * �޸���Ʒ�軹��Ϣ���ڽ������
	 * @param vo
	 * @return
	 */
	
	public boolean labUpdateArticle(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(SqlUpdateArticle);
			
			
			pstmt.setDate(1, vo.getBorrowdate());
			pstmt.setString(2, vo.getBorrowname());
			pstmt.setString(3, vo.getArticlename());
			pstmt.setString(4, vo.getModel());
			pstmt.setInt(5, vo.getBorrowlist());
			pstmt.setDate(6, vo.getReturndate());
			pstmt.setInt(7, vo.getReturnlist());
			pstmt.setString(8, vo.getReturnpeople());
			pstmt.setInt(9, vo.getReturnno());
			pstmt.setInt(10, vo.getId());
			pstmt.executeUpdate();	
		} 
		 catch (SQLException e)
		    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	/**
	 * ��������ѯ��Ʒ�軹����
	 * @param id
	 * @return
	 */
	public labVo SearchByKey5(int id) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();

		labVo vo = null;
		try {
			pstmt = conn.prepareStatement(sqlArticleId);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			
            if (rs.next()) {
				vo = new labVo( rs.getInt("id"),
						        rs.getDate("borrowdate"),
						        rs.getString("borrowname"),
						        rs.getString("articlename"),
						        rs.getString("model"),
						        rs.getInt("borrowlist"),
						        rs.getDate("returndate"),
						        rs.getInt("returnlist"),
						        rs.getString("returnpeople"),
						        rs.getInt("returnno"),
						        rs.getString("returnstate"));
     	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return vo;
	}
	
	/**
	 * ɾ����Ʒ�軹��¼
	 * @return
	 */
	public boolean labDeleteArticle(int id){
		 db=new Dbaccess();
		 db.connect();
		 conn=db.getConn();
		 boolean b=false;
		 try {
			pstmt=conn.prepareStatement(SqlDeleteAritcle);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return b;
		}
	
	
	/**
	 * ����������Ʒ�軹��¼��Ϣ
	 * ģ����ѯ
	 * 
	 * 
	 */
	
	public List SearchempInfo4(String sql) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();
		List list = null;
		labVo vo = null;
		try {
		     stmt = conn.createStatement();
		     
		     
		   sql = "select * from ("+sql+") ";
		     

			 rs = stmt.executeQuery(sql);
			
				
			list = new ArrayList();
			while (rs.next()) {
				vo = new labVo(rs.getInt("id"),
				               rs.getDate("borrowdate"),
				               rs.getString("borrowname"),
				               rs.getString("articlename"),
				               rs.getString("model"),
				               rs.getInt("borrowlist"),
				               rs.getDate("returndate"),
				               rs.getInt("returnlist"),
				               rs.getString("returnpeople"),
				               rs.getString("returnno"));
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		
		return list;
		
	}
	
	
	/**
	 * ��ѯ���е��û���Ϣ
	 * @return
	 */
	public List SeachAllPeople(){
		db=new Dbaccess();
		db.connect();
		conn=db.getConn();
		List list =null;
		labVo vo=null;
		try {
			list=new ArrayList();
			pstmt=conn.prepareStatement(SqlAllPeople);
			rs=pstmt.executeQuery();
			while (rs.next()){
				
				vo=new labVo(rs.getInt("studentno"),
						     rs.getString("studentname"),
						     rs.getString("sax"),
						     rs.getDate("borndate"),
						     rs.getInt("age"),
						     rs.getString("classname"),
						     rs.getString("username"),
						     rs.getString("userpwd"),
						     rs.getString("labname"),
						     rs.getInt("fraction"));
				list.add(vo);
				}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			db.closeConn(conn);
			pstmt=null;
			rs=null;
	    }
		 return list;
		 }
	
	
	/**
	 * ����û���Ϣ
	 * @param vo
	 * @return
	 */
	public boolean InsertPeople(labVo vo){
		db=new Dbaccess();
		db.connect();
		conn=db.getConn();
		
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(SqlInsertPeople);
			
			
			
			 pstmt.setString(1, vo.getStudentname());
			 pstmt.setString(2, vo.getSax());
			 pstmt.setDate(3, vo.getBorndate());
			 pstmt.setInt(4, vo.getAge());
			 pstmt.setString(5, vo.getClassname());
			 pstmt.setString(6, vo.getUsername());
			 pstmt.setString(7, vo.getUserpwd());
			 pstmt.setString(8, vo.getLabname());
			 pstmt.setInt(9, vo.getFraction());
			 int i=pstmt.executeUpdate();	
          //�ж��Ƿ����2�����ϵ��û���Ϣ
			if (i>0)
			{
           	b=true;
           	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	
	/**
	 * ������id�õ��û���Ϣ
	 * @param id
	 * @return
	 */
	public labVo SearchByKey6(int studentno) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();

		labVo vo = null;
		try {
			pstmt = conn.prepareStatement(SqlSeachPeople);
			pstmt.setInt(1, studentno);
			rs = pstmt.executeQuery();
			
		
            if (rs.next()) {
				vo = new labVo( rs.getInt("studentno"),
					            rs.getString("studentname"),
					            rs.getString("sax"),
					            rs.getDate("borndate"),
					            rs.getInt("age"),
					            rs.getString("classname"),
					            rs.getString("username"),
					            rs.getString("userpwd"),
					            rs.getString("labname"),
					            rs.getInt("fraction"));
     	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return vo;
	}
	
	
	/**
	 * �޸��û���Ϣ���ڽ������
	 * @param vo
	 * @return
	 */
	
	public boolean UpdatePeople(labVo vo) {

		
		 db  = new Dbaccess();
		 db.connect();
		 conn = db.getConn();
		 boolean b = false;
		 try {
			pstmt = conn.prepareStatement(SqlUpdatePeople);
			
			
			
			 pstmt.setString(1, vo.getStudentname());
			 pstmt.setString(2, vo.getSax());
			 pstmt.setDate(3, vo.getBorndate());
			 pstmt.setInt(4, vo.getAge());
			 pstmt.setString(5, vo.getClassname());
			 pstmt.setString(6, vo.getUsername());
			 pstmt.setString(7, vo.getUserpwd());
			 pstmt.setString(8, vo.getLabname());
			 pstmt.setInt(9, vo.getFraction());
			 pstmt.setInt(10, vo.getStudentno());
			 
			pstmt.executeUpdate();	
         
		} 
		 catch (SQLException e)
		    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
		finally
		{
			db.closeConn(conn);
			pstmt = null;
			rs = null;		
		}
		return b;		
	}
	
	
	
	
	/**
	 * ɾ���û���Ϣ
	 * @return
	 */
	public boolean DeletePeople(int studentno){
		 db=new Dbaccess();
		 db.connect();
		 conn=db.getConn();
		 boolean b=false;
		 try {
			pstmt=conn.prepareStatement(SqlDeletePeople);
			pstmt.setInt(1, studentno);
			pstmt.executeUpdate();
			b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		return b;
		}
	
	
	

	/**
	 * ����������ѯ�û���Ϣ
	 * ģ����ѯ
	 * @param sql
	 * @return
	 */
	public List SearchempInfo5(String sql) {
		db = new Dbaccess();
		db.connect();
		conn = db.getConn();
		List list = null;
		labVo vo = null;
		try {
		     stmt = conn.createStatement();
		     
		     
		   sql = "select * from ("+sql+") ";
		     

			 rs = stmt.executeQuery(sql);
			
			
			list = new ArrayList();
			while (rs.next()) {
				vo = new labVo( rs.getInt("studentno"),
			                    rs.getString("studentname"),
			                    rs.getString("sax"),
			                    rs.getDate("borndate"),
			                    rs.getInt("age"),
			                    rs.getString("classname"),
			                    rs.getString("username"),
			                    rs.getString("userpwd"),
			                    rs.getString("labname"),
			                    rs.getInt("fraction"));
					            
					           	
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeConn(conn);
			pstmt = null;
			rs = null;
		}
		
		return list;
		
	}
	
	
	
	
	
	
	
	
	
}
