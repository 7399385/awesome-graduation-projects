package com.bjsxt.school.dao;

import java.sql.Date;
import java.util.List;

import com.bjsxt.school.entity.Teacher;
import com.bjsxt.school.entity.TeacherCourse;

public interface TeacherDao {

	/**
	 * ������ʦ
	 * @param teacher
	 * @return
	 */
	int save(Teacher teacher);

	/**
	 * ����������ѯ���������Ľ�ʦ����
	 * @param tname
	 * @param mno
	 * @return
	 */
	int findCount(String tname, String mname);

	/**
	 * ��ҳ
	 * @param startRow
	 * @param endRow
	 * @param tname
	 * @param mno
	 * @return
	 */
	List<Teacher> findTeacher(int startRow, int endRow, String tname, String mname);

	/**
	 * ����ID��ѯ��ʦ��Ϣ
	 * @param tno
	 * @return
	 */
	Teacher findById(String tno);

	/**
	 * ���½�ʦ��Ϣ
	 * @param teacher
	 * @return
	 */
	int update(Teacher teacher);

	/**
	 * ɾ����ʦ��Ϣ
	 * @param tno
	 * @return
	 */
	int delete(String tno);

	int arrangeCourse(String tno, String mno, Date workDate);

	Teacher findByMno(String msg1);

	Teacher findByTname(String msg1);

	List<TeacherCourse> selectPosition(String msg1);

	List<TeacherCourse> selectPosition1(String msg1);

	int teacherInCharge(String tno, Date jobdate, String classname,
			String classid);

	List<TeacherCourse> selectAll();

}
