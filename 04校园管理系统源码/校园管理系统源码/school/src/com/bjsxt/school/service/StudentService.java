package com.bjsxt.school.service;

import com.bjsxt.school.entity.Student;
import com.bjsxt.school.util.PageBean;

public interface StudentService {

	/**
	 * ����id����ѧ��
	 * @param sid
	 * @return
	 */
	Student findById(String sid);

	/**
	 * ���ѧ��
	 * @param stu
	 * @return
	 */
	boolean save(Student stu);

	/**
	 * ��ҳ��ѯ����ѧ��
	 * @param pageBean
	 * @param sname
	 * @param sid
	 */
	void show(PageBean<Student> pageBean, String sname, String sid);

	/**
	 * ����id����ѧ����Ϣ
	 * @param student
	 * @return
	 */
	boolean update(Student student);

	/**
	 * ����idɾ��ѧ����Ϣ
	 * @param sid
	 * @return
	 */
	boolean delete(String sid);

	/**
	 * ѧ����ѧ��Ϣ¼��
	 * @param student
	 * @return
	 */
	boolean saveCheckIn(Student student);

	/**
	 * ��������ѯ�ѵǼǵ�ѧ����Ϣ
	 * @param pageBean
	 * @param sname
	 * @param operator
	 * @param enterScore
	 */
	void showCheckedIn(PageBean<Student> pageBean, String sname, int oper,
			double enterScore);

	/**
	 * ����ѧ��ID��ѯѧ���Ƿ��ѽ�����ѧ�Ǽ�
	 * @param sid
	 * @return
	 */
	Student findCheckedById(String sid);
	
	/**
	 * ����ѧ��IDɾ���ѽ�����ѧ�Ǽǵ�ѧ��
	 * @param sid
	 * @return
	 */
	boolean deleteCheckedIn(String sid);

	
}
