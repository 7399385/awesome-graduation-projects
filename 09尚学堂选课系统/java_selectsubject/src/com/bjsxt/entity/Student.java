package com.bjsxt.entity;
/*
 * ��Ӧ��userXML.xml�еĿγ�����
 */
import java.util.List;

public class Student {
	//��Ӧ��ѧ����id
	private String ID;
	//��Ӧ��ѧ��������
	private String name;
	//��Ӧ��ѧ��������
	private String password;
	//��Ӧ��ѧ�������
	private String age;
	//��Ӧ��ѧ�����Ա�
	private String sex;
	//��Ӧ�ſ�ѡ�Ŀγ�
	private List courseUp;
	//��Ӧ����ѡ�εĿγ�
	private List courseDown;
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public List getCourseUp() {
		return courseUp;
	}
	public void setCourseUp(List courseUp) {
		this.courseUp = courseUp;
	}
	public List getCourseDown() {
		return courseDown;
	}
	public void setCourseDown(List courseDown) {
		this.courseDown = courseDown;
	}
	public Student(String ID, String name, String password, String age, String sex, List courseUp, List courseDown) {
		super();
		this.ID = ID;
		this.name = name;
		this.password = password;
		this.age = age;
		this.sex = sex;
		this.courseUp = courseUp;
		this.courseDown = courseDown;
	}
	public Student(String ID, String name, String password, String age, String sex) {
		super();
		this.ID = ID;
		this.name = name;
		this.password = password;
		this.age = age;
		this.sex = sex;
		
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
