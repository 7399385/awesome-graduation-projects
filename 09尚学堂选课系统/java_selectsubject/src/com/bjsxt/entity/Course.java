package com.bjsxt.entity;
/*
 * ��Ӧ��courseXML.xml�е�����
 */
public class Course {
	//��Ӧ�ſγ̵�id
	private String id;
	//��Ӧ�ſγ̵�����
	private String name;
	//��Ӧ����ʦ������
	private String teacher;
	//��Ӧ����ʦ��id
	private String teaId;
	//��Ӧ�ſγ̿�ѡ�����
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getTeaId() {
		return teaId;
	}
	public void setTeaId(String teaId) {
		this.teaId = teaId;
	}
	public Course(String id, String name, String teacher, String teaId) {
		super();
		this.id = id;
		this.name = name;
		this.teacher = teacher;
		this.teaId = teaId;
	}
	public Course(){
		super();
	}
	@Override
	public String toString() {
		return "Course [id=" + id + ", name=" + name + ", teacher=" + teacher + ", teaId=" + teaId;
	}
	
	
}
