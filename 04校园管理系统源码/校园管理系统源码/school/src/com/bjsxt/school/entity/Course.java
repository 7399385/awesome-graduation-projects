package com.bjsxt.school.entity;
/**
 * 
 * �γ̵�ʵ����
 * 
 * @author lx
 *
 */
public class Course {
     private  String courseno;//�γ̱��
     private  String coursename; //�γ���
     
     
     
	public Course() {
		super();
	}
	public Course(String courseno, String coursename) {
		super();
		this.courseno = courseno;
		this.coursename = coursename;
	}
	@Override
	public String toString() {
		return "Course [courseno=" + courseno + ", coursename=" + coursename
				+ "]";
	}
	public String getCourseno() {
		return courseno;
	}
	public void setCourseno(String courseno) {
		this.courseno = courseno;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

}
