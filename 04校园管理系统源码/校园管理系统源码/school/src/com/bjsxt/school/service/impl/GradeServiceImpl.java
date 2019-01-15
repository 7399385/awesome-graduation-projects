package com.bjsxt.school.service.impl;

import java.util.List;

import com.bjsxt.school.dao.GradeDao;
import com.bjsxt.school.dao.impl.GradeDaoImpl;
import com.bjsxt.school.entity.Grade;
import com.bjsxt.school.service.GradeService;

public class GradeServiceImpl implements GradeService {
	private GradeDao gradeDao  = new GradeDaoImpl();

	//����꼶
	@Override
	public int addGrade(Grade grade) {
		return  this.gradeDao.save(grade);
	}
	//�鿴�꼶��Ϣ
	@Override
	public List<Grade> findAll() {
		return this.gradeDao.findAll();
	}
	//ɾ��ָ���꼶��Ϣ
	@Override
	public void delete(String gradeNo) {
		this.gradeDao.delete(gradeNo);
		
	}
	//�޸ĸ����꼶��Ϣ
	@Override
	public int updateMno(Grade grade) {
		return this.gradeDao.update(grade);
	}
	@Override
	public Grade findGrade(String gradeNo) {
		return this.gradeDao.findGrade(gradeNo);
	}

}
