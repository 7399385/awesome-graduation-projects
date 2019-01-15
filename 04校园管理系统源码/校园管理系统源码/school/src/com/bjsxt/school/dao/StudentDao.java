package com.bjsxt.school.dao;

import java.util.List;

import com.bjsxt.school.entity.Student;

public interface StudentDao {
	/**
	 * ����id����ѧ��
	 * 
	 * @param sid
	 * @return
	 */
	Student findById(String sid);

	/**
	 * ���ѧ��
	 * 
	 * @param stu
	 * @return
	 */
	int save(Student stu);

	/**
	 * ��������ѯѧ������
	 * 
	 * @param sname
	 * @param sid
	 * @return
	 */
	int findCount(String sname, String sid);

	/**
	 * ��ҳ��ѯ������������ѧ����Ϣ
	 * 
	 * @param startRow
	 * @param endRow
	 * @param sname
	 * @param sid
	 * @return
	 */
	List<Student> findStudent(int startRow, int endRow, String sname, String sid);

	/**
	 * ����id����ѧ��
	 * 
	 * @param student
	 * @return
	 */
	int update(Student student);

	/**
	 * ����idɾ��ѧ��
	 * 
	 * @param sid
	 * @return
	 */
	int delete(String sid);

	/**
	 * ѧ����ѧ��Ϣ¼��
	 * 
	 * @param stu
	 * @return
	 */
	int saveCheckIn(Student stu);

	/**
	 * ��������ѯ�ѵǼǵ�ѧ������
	 * 
	 * @param sname
	 * @param operator
	 * @param enterScore
	 * @return
	 */
	int findCheckedCount(String sname, int oper, double enterScore);

	/**
	 * ��������ѯ�ѵǼǵ�ѧ��
	 * 
	 * @param startRow
	 * @param endRow
	 * @param sname
	 * @param operator
	 * @param enterScore
	 * @return
	 */
	List<Student> findCheckedStudent(int startRow, int endRow, String sname,
			int oper, double enterScore);

	/**
	 * ����ѧ��ID��ѯѧ���Ƿ��ѽ�����ѧ�Ǽ�
	 * @param sid
	 * @return
	 */
	Student findCheckedById(String sid);
	
	/**
	 * ����ѧ��IDɾ���ѽ�����ѧ�Ǽǵ�ѧ����Ϣ
	 * @param sid
	 * @return
	 */
	int deleteCheckedIn(String sid);

}
