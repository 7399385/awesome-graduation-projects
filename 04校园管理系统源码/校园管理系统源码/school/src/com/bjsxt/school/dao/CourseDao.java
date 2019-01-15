package com.bjsxt.school.dao;

import java.util.List;

import com.bjsxt.school.entity.Course;
import com.bjsxt.school.entity.Score;
import com.bjsxt.school.entity.TeacherCourse;

public interface CourseDao {

	List<Course> selectAll();

	int arrangeCourse(TeacherCourse teacherCourse);

	/***
	 * �ɼ�¼��
	 * @param score
	 * @return
	 */
	int save(Score score);

	/***
	 * �ɼ���ѯ
	 * @param select
	 * @param text
	 * @return
	 */
	List<Score> findScore(String select, String text);

	int add(Course course);

	void delete(String courseNo);

	int update(Course course);

	List<Course> findAll();

	Course findCourse(String courseNo);
}
