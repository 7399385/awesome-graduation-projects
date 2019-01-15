package com.bjsxt.dao;

import java.util.ArrayList;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.bjsxt.entity.Student;
import com.bjsxt.entity.Teacher;
import com.bjsxt.utils.Utils;

public class ManagerDao {
	
   //��������Ա
	public  List getManList(){
		List<String> adm=new ArrayList();
		adm=Utils.getUser("3");
		return adm;
	}
	//��������ѧ��id
	public List getStudentId(){
		List<String> id=new ArrayList();
		List<Student> student=new ArrayList();
		student=Utils.getUser("1");
		for(Student stu:student){
			id.add(stu.getID());
		}
		return id;
	}
	//�������н�ʦid
	public List getTeaId(){
		
		List<String> id=new ArrayList();
		List<Teacher> teacher=new ArrayList();
		teacher=Utils.getUser("2");
		for(Teacher tea:teacher){
			id.add(tea.getId());
		}
		return id;
		
	}
	//����Ա�ж�ѧ���Ƿ����Ч��
	public String stuId(String ID){
		boolean temp=false;
		List<String> id=new ArrayList();
		id=this.getStudentId();
		for(String a:id){
			if(ID.equals(a)){
				temp=true;
				return "false";
			}
		}
		if(!temp){
			return "true";
		}
		return ID;	
	}



//����Ա�жϽ�ʦ�Ƿ����Ч��
	public String teaId(String ID){
		boolean temp=false;
		List<String> id=new ArrayList();
		id=this.getTeaId();
		for(String a:id){
			if(ID.equals(a)){
				temp=true;
				return "false";
			}
		}
		if(!temp){
			return "true";
		}
		return ID;	
	}

}


