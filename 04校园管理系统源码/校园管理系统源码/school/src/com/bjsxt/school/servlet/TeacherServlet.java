package com.bjsxt.school.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjsxt.school.entity.Course;
import com.bjsxt.school.entity.Major;
import com.bjsxt.school.entity.Teacher;
import com.bjsxt.school.entity.TeacherCourse;
import com.bjsxt.school.service.CourseService;
import com.bjsxt.school.service.MajorService;
import com.bjsxt.school.service.TeacherService;
import com.bjsxt.school.service.impl.CourseServiceImpl;
import com.bjsxt.school.service.impl.MajorServiceImpl;
import com.bjsxt.school.service.impl.TeacherServiceImpl;
import com.bjsxt.school.util.PageBean;
import com.google.gson.Gson;

public class TeacherServlet extends BaseServlet {

	/**
	 * ɾ����ʦ��Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void delete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String tno = request.getParameter("tno");
		TeacherService teacherService = new TeacherServiceImpl();
		boolean flag = teacherService.delete(tno);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if(flag){
			out.println("alert('ɾ���ɹ���');");
		}else{
			out.println("alert('ɾ��ʧ�ܣ�');");
		}
		
		out.println("location.href = 'TeacherServlet?method=show';");
		out.println("</script>");
	}
	
	/**
	 * ע���ʦǰ��ѯ��רҵ�����������
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void toRegister(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		MajorService majorService = new MajorServiceImpl();
		List<Major> majorList = majorService.show();

		request.setAttribute("majorList", majorList);
		request.getRequestDispatcher("/file/teacherInfo.jsp").forward(
				request, response);
	}
	
	/**
	 * ������ʦ
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void register(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String tname = request.getParameter("tname");
		String mno = request.getParameter("mno");
		String sex = request.getParameter("sex");
		String nation = request.getParameter("nation");
		String politics = request.getParameter("politics");
		String education = request.getParameter("education");
		String marital = request.getParameter("marital");
		String idCard = request.getParameter("idCard");
		String phone = request.getParameter("phone");
		String jobDesc = request.getParameter("jobDesc");
		int age = Integer.parseInt(request.getParameter("age"));
		Date birth = Date.valueOf(request.getParameter("birth"));
		Date workDate = Date.valueOf(request.getParameter("workDate"));

		Teacher teacher = new Teacher(tname, mno, sex, age, nation, politics,
				education, marital, birth, idCard, phone, workDate, jobDesc);

		TeacherService teacherService = new TeacherServiceImpl();
		boolean flag = teacherService.register(teacher);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if(flag){
			out.println("alert('��ӳɹ���');");
			out.println("location.href = 'TeacherServlet?method=show';");
		}else{
			out.println("alert('���ʧ�ܣ�');");
			out.println("location.href = 'TeacherServlet?method=toRegister';");
		}
		out.println("</script>");

	}

	/**
	 * ��ѯ��ʦ������������ѯ
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void show(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���ܷ�ҳ��Ҫ������
		String sindex = request.getParameter("index");
		int index = 1;
		if (sindex != null && !"".equals(sindex)) {
			index = Integer.parseInt(sindex);
		}
		String ssize = request.getParameter("size");
		int size = 5;
		if (ssize != null && !"".equals(ssize)) {
			size = Integer.parseInt(ssize);
		}

		// ��ȡ��ѯ����
		String tname = request.getParameter("tname"); 
		if (tname == null) {
			tname = "";
		}
		String mname = request.getParameter("mname");
		if (mname == null) {
			mname = "";
		}

		// ����ҳ�����ݷ�װ��PageBean�У���ѯ����������Ҳ��װ��PageBean��
		PageBean<Teacher> pageBean = new PageBean<Teacher>();
		pageBean.setIndex(index);
		pageBean.setSize(size);

		TeacherService teacherService = new TeacherServiceImpl();
		teacherService.show(pageBean, tname, mname);
		MajorService majorService = new MajorServiceImpl();
		List<Major> majorList = majorService.show();

		request.setAttribute("majorList", majorList);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("tname", tname);
		request.setAttribute("mname", mname);

		request.getRequestDispatcher("/file/teacherList.jsp").forward(request,
				response);
	}

	/**
	 * ���½�ʦǰ����id�Ĳ�ѯ��������ѯ��רҵ�����������
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void toUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String tno = request.getParameter("tno");
		TeacherService teacherService = new TeacherServiceImpl();
		Teacher teacher = teacherService.showById(tno);
		MajorService majorService = new MajorServiceImpl();
		List<Major> majorList = majorService.show();

		request.setAttribute("majorList", majorList);
		request.setAttribute("teacher", teacher);
		request.getRequestDispatcher("/file/teacherUpdate.jsp").forward(
				request, response);
	}

	/**
	 * ���²���
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tno = request.getParameter("tno");
		String tname = request.getParameter("tname");
		String mno = request.getParameter("mno");
		String sex = request.getParameter("sex");
		String nation = request.getParameter("nation");
		String politics = request.getParameter("politics");
		String education = request.getParameter("education");
		String marital = request.getParameter("marital");
		String idCard = request.getParameter("idCard");
		String phone = request.getParameter("phone");
		String jobDesc = request.getParameter("jobDesc");
		int age = Integer.parseInt(request.getParameter("age"));
		Date birth = Date.valueOf(request.getParameter("birth"));
		Date workDate = Date.valueOf(request.getParameter("workDate"));

		Teacher teacher = new Teacher(tno, tname, mno, sex, age, nation,
				politics, education, marital, birth, idCard, phone, workDate,
				jobDesc);
		TeacherService teacherService = new TeacherServiceImpl();
		boolean flag = teacherService.update(teacher);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if(flag){
			out.println("alert('���³ɹ���');");
			out.println("location.href = 'TeacherServlet?method=show';");
		}else{
			out.println("alert('����ʧ�ܣ�');");
			out.println("location.href = 'TeacherServlet?method=toUpdate&tno='"+tno+";");
		}
		out.println("</script>");
	}
	
	
	
	
	/**
	 * ��ְ������  ��ѯ��Ž�ʦ����Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void selectTeacher(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		String tno = request.getParameter("tno");
		
		TeacherService teacherService = new TeacherServiceImpl();
		Teacher teacher = teacherService.showById(tno);
		
		
		CourseService courseService=new CourseServiceImpl();
		List<Course>course =courseService.selectAll();
		request.setAttribute("course", course);
		
		
		request.setAttribute("teacher", teacher);
		request.getRequestDispatcher("/teacher/teacherArrangeCourse.jsp").forward(
				request, response);
	}
	
	
	
	/**
	 * ��ְ������  ����ʦ���ſγ�
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void arrangeCourse(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		String tno = request.getParameter("tno");
		String mno = request.getParameter("mno");
		Date workDate = Date.valueOf(request.getParameter("workDate"));
		TeacherService teacherService = new TeacherServiceImpl();
	
		 int i =teacherService.arrangeCourse(tno,mno,workDate);
		
		
		if(i>0){
			request.getRequestDispatcher("/servlet/CourseServlet?method=selectAllCourse").forward(
					request, response);
		}else{
			
			request.setAttribute("error", "��ӿγ�ʧ��");
			request.getRequestDispatcher("/servlet/CourseServlet?method=selectAllCourse").forward(
					request, response);
		}
 
		
	}
	
	
	
	/**
	 * ��ְ������  ��ѯ��ʦ���ο���Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void selectTeacherCourse(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
	
		int msg = Integer.parseInt(request.getParameter("msg"));
		TeacherService teacherService = new TeacherServiceImpl();
		String msg1=request.getParameter("msg1");
		Teacher teacher=null;
		
		
	   if(msg==1){
		 teacher=  teacherService.showByMno(msg1);
		 
	   }else if(msg==2){
	     	teacher=  teacherService.showByTname(msg1);
		   
	   }
		
		
		
		
		
		if(teacher==null){
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("/teacher/teacherSelectCourse.jsp").forward(
					request, response);
		}else{
			request.setAttribute("teacher", teacher);
		request.getRequestDispatcher("/teacher/teacherSelectCourse.jsp").forward(
				request, response);
	
		}
		}
	
	
	/**
	 * ��ְ������  ��ѯ��Ž�ʦ����Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void selectTeacher1(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		String tno = request.getParameter("tno");
		
		TeacherService teacherService = new TeacherServiceImpl();
		Teacher teacher = teacherService.showById(tno);
		request.setAttribute("teacher", teacher);
		request.getRequestDispatcher("/teacher/teacherInCharge.jsp").forward(
				request, response);
	}
	
	
	/**
	 * ��ְ������  ��ѯ��������Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void selectTeacherPosition(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
	
		int msg = Integer.parseInt(request.getParameter("msg"));
		TeacherService teacherService = new TeacherServiceImpl();
		String msg1=request.getParameter("msg1");
	    List <TeacherCourse> list=null;
		
		
	   if(msg==1){
		  // list=  teacherService.showByMno(msg1);
		   list=teacherService.selectPosition1(msg1);
	   }else if(msg==2){
		 //  list=  teacherService.showByTname1(msg1);
		   list=teacherService.selectPosition(msg1);
	   }
		
		
		
		
		
		if(list==null||list.size()==0){
			request.setAttribute("error", "û�в�ѯ�����");
			request.getRequestDispatcher("/teacher/teacherPosition.jsp").forward(
					request, response);
		}else{
			request.setAttribute("teacherlist", list);
		request.getRequestDispatcher("/teacher/teacherPosition.jsp").forward(
				request, response);
	
		}
		}
	
	
	
	/**
	 * ��ְ������  ��Ӱ�����
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void teacherInCharge(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		String tno = request.getParameter("tno");
		Date jobdate=Date.valueOf(request.getParameter("jobdate"));
		String  classname =request.getParameter("classname");
		String  classid =request.getParameter("classid");
 		TeacherService teacherService = new TeacherServiceImpl();
		 int i=teacherService.teacherInCharge(tno,jobdate,classname,classid); 
		 if(i>0){
		request.getRequestDispatcher("/teacher/teacherInCharge.jsp").forward(
		request, response);
		 }else{
			 request.setAttribute("error", "���ʧ��");
			 request.getRequestDispatcher("/teacher/teacherInCharge.jsp").forward(
						request, response);
		 }
	}
	
	
	/**
	 * ��ְ������  ajax��ѯ���а༶�ı�� ���רҵ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void selectAll(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		TeacherService teacherService = new TeacherServiceImpl();
		List< TeacherCourse> teacherCourse =teacherService.selectAll();
		response.setContentType("text/html;charset=utf-8");
		
		Gson gson = new Gson();
		String teacherCourselist = gson.toJson(teacherCourse);
	//	System.out.println(teacherCourselist.toString());	
		response.getWriter().println(teacherCourselist);
		
	}
	
}
