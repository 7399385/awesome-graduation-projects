package com.bjsxt.school.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

import com.bjsxt.school.entity.Teacher;
import com.bjsxt.school.service.TeacherService;
import com.bjsxt.school.service.impl.TeacherServiceImpl;
import com.bjsxt.school.util.PageBean;

public class TestTeacherService {

	TeacherService teacherService = new TeacherServiceImpl();

	@Test
	public void testRegister() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date birth = null;
		Date workDate = null;
		try {
			birth = sdf.parse("1979-1-1");
			workDate = sdf.parse("1999-1-1");
		} catch (ParseException e) {
			e.printStackTrace();
		}

		Teacher teacher = new Teacher("����", "3", "��", 32, "��", "��Ա", "˶ʿ",
				"δ��", birth, "421081197901013545", "18566270137", workDate,
				"������");

		boolean flag = teacherService.register(teacher);
		System.out.println(flag);
	}

	@Test
	public void testFind() {
		PageBean<Teacher> pageBean = new PageBean<Teacher>();
		pageBean.setIndex(2);
		pageBean.setSize(1);
		teacherService.show(pageBean, "��", "����");
		for (Teacher teacher : pageBean.getList()) {
			System.out.println(teacher);
		}
	}
	
	@Test 
	public void testFindById(){
		Teacher teacher = teacherService.showById("26");
		System.out.println(teacher);
	}
	
	@Test
	public void update() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date birth = null;
		Date workDate = null;
		try {
			birth = sdf.parse("1979-1-1");
			workDate = sdf.parse("1999-1-1");
		} catch (ParseException e) {
			e.printStackTrace();
		}

		Teacher teacher = new Teacher("3","������", "0", "��", 32, "��", "��Ա", "˶ʿ",
				"δ��", birth, "421081197901013545", "18566270137", workDate,
				"������");

		boolean flag = teacherService.update(teacher);
		System.out.println(flag);
	}
}
