package com.bjsxt.school.entity;

/**
 * רҵ��ʵ����
 * @author Administrator
 *
 */
public class Major {

	private String mno;
	private String mname;
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public Major(String mno, String mname) {
		super();
		this.mno = mno;
		this.mname = mname;
	}
	public Major() {
		super();
	}
	
	
}
