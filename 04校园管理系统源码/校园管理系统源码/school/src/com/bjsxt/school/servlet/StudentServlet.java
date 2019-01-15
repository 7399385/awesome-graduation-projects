package com.bjsxt.school.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjsxt.school.entity.Clazz;
import com.bjsxt.school.entity.Student;
import com.bjsxt.school.service.ClazzService;
import com.bjsxt.school.service.StudentService;
import com.bjsxt.school.service.impl.ClazzServiceImpl;
import com.bjsxt.school.service.impl.StudentServiceImpl;
import com.bjsxt.school.util.PageBean;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class StudentServlet extends BaseServlet {
	/**
	 * ����ѧ��IDɾ���ѽ�����ѧ�Ǽǵ���Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void deleteCheckedIn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("sid");
		StudentService stuService = new StudentServiceImpl();
		boolean flag = stuService.deleteCheckedIn(sid);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if (flag) {
			out.println("alert('ɾ���ɹ���');");
		} else {
			out.println("alert('ɾ��ʧ�ܣ�');");
		}
		out.println("location.href = 'StudentServlet?method=showCheckedIn';");
		out.println("</script>");
	}
	/**
	 * ����ѧ��ID��ѯѧ���Ƿ��ѽ�����ѧ�Ǽ�
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void findCheckedById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		StudentService stuService = new StudentServiceImpl();
		Student student = stuService.findCheckedById(sid);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		String jsonStr = gson.toJson(student);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(jsonStr);
		out.flush();
		out.close();
	}
	/**
	 * ��ѯѧ����ѧ��Ϣ������������ѯ
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void showCheckedIn(HttpServletRequest request, HttpServletResponse response)
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
		//��������
		String sname = request.getParameter("sname");
		if (sname == null) {
			sname = "";
		}
		
		//���������
		String soper = request.getParameter("oper");
		int oper = 0;
		if (soper != null && !"".equals(soper)) {
			oper = Integer.parseInt(soper);
		}
		//���ܷ��� 
		String senterScore = request.getParameter("enterScore");
		double enterScore = 0;
		if(senterScore != null && !"".equals(senterScore)){
			enterScore = Double.parseDouble(senterScore);
		}
		
		// ����ҳ�����ݷ�װ��PageBean�У���ѯ����������Ҳ��װ��PageBean��
		PageBean<Student> pageBean = new PageBean<Student>();
		pageBean.setIndex(index);
		pageBean.setSize(size);

		StudentService stuService = new StudentServiceImpl();
		stuService.showCheckedIn(pageBean, sname, oper, enterScore);

		ClazzService clazzService = new ClazzServiceImpl();
		List<Clazz> claList = clazzService.findAll();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("sname", sname);
		request.setAttribute("oper", oper);
		request.setAttribute("enterScore", senterScore);
		request.setAttribute("claList", claList);

		request.getRequestDispatcher("/file/checkedStudentList.jsp").forward(request,
				response);
	}
	/**
	 * ���ѧ��
	 * 
	 * @param stu
	 * @return
	 */
	public void checkIn(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String sname = request.getParameter("sname");
		String classId = request.getParameter("classId");
		String majorName = request.getParameter("majorName");
		Double enterScore = Double.parseDouble(request
				.getParameter("enterScore"));
		String operator = request.getParameter("operator");
		Date checkDate = Date.valueOf(request.getParameter("checkDate"));

		Student student = new Student(sid, sname, classId, checkDate,
				enterScore, majorName, operator);
		StudentService stuService = new StudentServiceImpl();
		boolean flag = stuService.saveCheckIn(student);

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if (flag) {
			out.println("alert('��ӳɹ���');");
			out.println("location.href = 'StudentServlet?method=showCheckedIn';");
		} else {
			out.println("alert('���ʧ�ܣ�');");
			out.println("location.href = school/file/studentRegister.jsp';");
		}
		out.println("</script>");
	}

	/**
	 * ����id�Ĳ�ѯѧ��
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void findById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		StudentService stuService = new StudentServiceImpl();
		Student student = stuService.findById(sid);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		String jsonStr = gson.toJson(student);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(jsonStr);
		out.flush();
		out.close();
	}

	/**
	 * ����ѧ��ǰ����id�Ĳ�ѯ����
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void toUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		StudentService stuService = new StudentServiceImpl();
		Student student = stuService.findById(sid);

		request.setAttribute("student", student);
		request.getRequestDispatcher("/file/studentUpdate.jsp").forward(
				request, response);
	}

	/**
	 * ���²���
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String sname = request.getParameter("sname");
		String sex = request.getParameter("sex");
		String idCard = request.getParameter("idCard");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String politics = request.getParameter("politics");
		String health = request.getParameter("health");
		int age = Integer.parseInt(request.getParameter("age"));
		Date birth = Date.valueOf(request.getParameter("birth"));

		Student student = new Student(sid, sname, sex, age, idCard, birth,
				address, phone, politics, health);
		StudentService stuService = new StudentServiceImpl();
		boolean flag = stuService.update(student);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if (flag) {
			out.println("alert('���³ɹ���');");
			out.println("location.href = 'StudentServlet?method=show';");
		} else {
			out.println("alert('����ʧ�ܣ�');");
			out.println("location.href = 'StudentServlet?method=toUpdate&sid='"
					+ sid + ";");
		}
		out.println("</script>");
	}

	/**
	 * ����idɾ��ѧ����Ϣ
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("sid");
		StudentService stuService = new StudentServiceImpl();
		boolean flag = stuService.delete(sid);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if (flag) {
			out.println("alert('ɾ���ɹ���');");
		} else {
			out.println("alert('ɾ��ʧ��,����ɾ����������ѧ�Ǽ���Ϣ��');");
		}
		out.println("location.href = 'StudentServlet?method=show';");
		out.println("</script>");
	}

	/**
	 * ��ѯѧ��������Ϣ������������ѯ
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
		String sname = request.getParameter("sname");
		if (sname == null) {
			sname = "";
		}
		String sid = request.getParameter("sid");
		if (sid == null) {
			sid = "";
		}

		// ����ҳ�����ݷ�װ��PageBean�У���ѯ����������Ҳ��װ��PageBean��
		PageBean<Student> pageBean = new PageBean<Student>();
		pageBean.setIndex(index);
		pageBean.setSize(size);

		StudentService stuService = new StudentServiceImpl();
		stuService.show(pageBean, sname, sid);

		request.setAttribute("pageBean", pageBean);
		request.setAttribute("sname", sname);
		request.setAttribute("sid", sid);

		request.getRequestDispatcher("/file/studentList.jsp").forward(request,
				response);
	}

	/**
	 * ���ѧ��
	 * 
	 * @param stu
	 * @return
	 */
	public void register(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String sname = request.getParameter("sname");
		String sex = request.getParameter("sex");
		String idCard = request.getParameter("idCard");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String politics = request.getParameter("politics");
		String health = request.getParameter("health");
		int age = Integer.parseInt(request.getParameter("age"));
		Date birth = Date.valueOf(request.getParameter("birth"));

		StudentService stuService = new StudentServiceImpl();
		Student stu = stuService.findById(sid);
		if (stu != null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("alert('���и�id��ѧ�����ڣ�');");
			out.println("location.href = '/file/studentInfo.jsp';");
			return;
		}

		Student student = new Student(sid, sname, sex, age, idCard, birth,
				address, phone, politics, health);

		boolean flag = stuService.save(student);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		if (flag) {
			out.println("alert('��ӳɹ���');");
			out.println("location.href = 'StudentServlet?method=show';");
		} else {
			out.println("alert('���ʧ�ܣ�');");
			out.println("location.href = '/school/file/studentInfo.jsp';");
		}
		out.println("</script>");
	}

}
