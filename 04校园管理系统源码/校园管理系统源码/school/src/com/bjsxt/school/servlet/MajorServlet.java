package com.bjsxt.school.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjsxt.school.entity.Clazz;
import com.bjsxt.school.entity.Course;
import com.bjsxt.school.entity.Grade;
import com.bjsxt.school.entity.Major;
import com.bjsxt.school.service.ClazzService;
import com.bjsxt.school.service.CourseService;
import com.bjsxt.school.service.GradeService;
import com.bjsxt.school.service.MajorService;
import com.bjsxt.school.service.impl.ClazzServiceImpl;
import com.bjsxt.school.service.impl.CourseServiceImpl;
import com.bjsxt.school.service.impl.GradeServiceImpl;
import com.bjsxt.school.service.impl.MajorServiceImpl;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class MajorServlet extends BaseServlet {

	public void getMajor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1��ȡ����Ϣ
		String mNo = request.getParameter("mNo");
		String mName = request.getParameter("mName");
		// 2����ҵ���
		Major major = new Major(mNo, mName);
		MajorService majorService = new MajorServiceImpl();
		int n = majorService.addMajor(major);
		// ������Ӧ�Ľ���
		if (n > 0) {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showMajor").forward(request,
					response);
		} else {
			request.setAttribute("error", "���ʧ��");
			request.getRequestDispatcher("/jsp/major.jsp").forward(request,
					response);
		}
	}
	
	public void findMajor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������ �鿴����רҵ��Ϣ
		String mNo = request.getParameter("mNo");
		// 2����ҵ�����ɲ�ѯ���� ���õ����
		MajorService majorService = new MajorServiceImpl();
		Major major = majorService.findMajor(mNo);
		// 3��ת��Ӧ��ҳ��
		Gson gson = new Gson();
		String jsonStr = gson.toJson(major);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(jsonStr);
		out.flush();
		out.close();
	}

	public void showMajor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������ �鿴����רҵ��Ϣ
		// 2����ҵ�����ɲ�ѯ���� ���õ����
		MajorService majorService = new MajorServiceImpl();
		List<Major> majorList = majorService.findAll();
		// 3��ת��Ӧ��ҳ��
		request.setAttribute("majorList", majorList);
		request.getRequestDispatcher("/jsp/major.jsp").forward(request,
				response);
	}

	// ɾ��רҵ
	public void delectMajor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ����Ҫɾ����רҵ���
		String mno = request.getParameter("mNo");
		// ����ҵ������ɾ������
		MajorService majorService = new MajorServiceImpl();
		majorService.delete(mno);
		// ҳ����ת
		request.getRequestDispatcher("/servlet/MajorServlet?method=showMajor")
				.forward(request, response);
	}

	// �޸�רҵ��Ϣ
	public void updateMajor(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������
		String mNo = request.getParameter("mNo");
		String mName = request.getParameter("mName");
		Major major = new Major(mNo, mName);
		// 2����ҵ�����ɸ����޸Ĳ���
		MajorService majorService = new MajorServiceImpl();
		int n = majorService.updateMno(major);
		// 3���������鿴���е�ҳ����
		if (n > 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>window.close();"
					+ "window.opener.location.reload();</script>");
		} else {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showMajor").forward(request,
					response);
		}

	}

	// �鿴���пγ�ѧ��
			public void findGrade(HttpServletRequest request,
					HttpServletResponse response) throws ServletException, IOException {
				// 1����ҳ������ �鿴����רҵ��Ϣ
				String gradeNo = request.getParameter("gradeNo");
				// 2����ҵ�����ɲ�ѯ���� ���õ����
				GradeService gradeService = new GradeServiceImpl();
				Grade grade = gradeService.findGrade(gradeNo);
				// 3��ת��Ӧ��ҳ��
				Gson gson = new Gson();
				String jsonStr = gson.toJson(grade);
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				out.println(jsonStr);
				out.flush();
				out.close();
			}
	
	// ����꼶
	public void getGrade(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1��ȡ����Ϣ
		String gradeNo = request.getParameter("gradeNo");
		String gradeName = request.getParameter("gradeName");
		// 2����ҵ���
		Grade grade = new Grade(gradeNo, gradeName);
		GradeService gradeService = new GradeServiceImpl();
		int n = gradeService.addGrade(grade);
		// ������Ӧ�Ľ���
		if (n > 0) {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showGrade").forward(request,
					response);
		} else {
			request.setAttribute("error", "���ʧ��");
			request.getRequestDispatcher("/jsp/major.jsp").forward(request,
					response);
		}
	}

	// �鿴�����꼶��Ϣ
	public void showGrade(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������ �鿴����רҵ��Ϣ
		// 2����ҵ�����ɲ�ѯ���� ���õ����
		GradeService gradeService = new GradeServiceImpl();
		List<Grade> gradeList = gradeService.findAll();
		// 3��ת��Ӧ��ҳ��
		request.setAttribute("gradeList", gradeList);
		request.getRequestDispatcher("/jsp/grade.jsp").forward(request,
				response);
	}

	// ɾ���꼶
	public void delectGrade(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ����Ҫɾ����רҵ���
		String gradeNo = request.getParameter("gradeNo");
		// ����ҵ������ɾ������
		GradeService gradeService = new GradeServiceImpl();
		gradeService.delete(gradeNo);
		// ҳ����ת
		request.getRequestDispatcher("/servlet/MajorServlet?method=showGrade")
				.forward(request, response);
	}

	// �޸��꼶��Ϣ
	public void updateGrade(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������
		String gradeNo = request.getParameter("gradeNo");
		String gradeName = request.getParameter("gradeName");
		Grade grade = new Grade(gradeNo, gradeName);
		// 2����ҵ�����ɸ����޸Ĳ���
		GradeService gradeService = new GradeServiceImpl();
		int n = gradeService.updateMno(grade);
		// 3���������鿴���е�ҳ����
		if (n > 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>window.close();"
					+ "window.opener.location.reload();</script>");
		} else {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showGrade").forward(request,
					response);
		}

	}

	// ���ѧ�� �γ�
	public void getCouse(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1��ȡ����Ϣ
		String courseNo = request.getParameter("courseNo");
		String courseName = request.getParameter("courseName");
		// 2����ҵ���
		Course course = new Course(courseNo, courseName);
		CourseService courseService = new CourseServiceImpl();
		int n = courseService.addCourse(course);
		// ������Ӧ�Ľ���
		if (n > 0) {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showCourse").forward(request,
					response);
		} else {
			request.setAttribute("error", "���ʧ��");
			request.getRequestDispatcher("/jsp/major.jsp").forward(request,
					response);
		}
	}

	// �鿴���пγ�ѧ��
	public void showCourse(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������ �鿴����רҵ��Ϣ
		// 2����ҵ�����ɲ�ѯ���� ���õ����
		CourseService courseService = new CourseServiceImpl();
		List<Course> courseList = courseService.findAll();
		// 3��ת��Ӧ��ҳ��
		request.setAttribute("courseList", courseList);
		request.getRequestDispatcher("/jsp/course.jsp").forward(request,
				response);
	}
	
	// �鿴���пγ�ѧ��
		public void findCourse(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			// 1����ҳ������ �鿴����רҵ��Ϣ
			String courseNo = request.getParameter("courseNo");
			// 2����ҵ�����ɲ�ѯ���� ���õ����
			CourseService courseService = new CourseServiceImpl();
			Course course = courseService.findCourse(courseNo);
			// 3��ת��Ӧ��ҳ��
			Gson gson = new Gson();
			String jsonStr = gson.toJson(course);
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.println(jsonStr);
			out.flush();
			out.close();
		}

	// ɾ��ѧ�� �γ�
	public void delectCourse(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ����Ҫɾ����רҵ���
		String courseNo = request.getParameter("courseNo");
		// ����ҵ������ɾ������
		CourseService courseService = new CourseServiceImpl();
		courseService.delete(courseNo);
		// ҳ����ת
		request.getRequestDispatcher("/servlet/MajorServlet?method=showCourse")
				.forward(request, response);
	}

	// ����ָ��ѧ�Ʊ�ŵ���Ϣ
	public void updateCourse(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������
		String courseNo = request.getParameter("courseNo");
		String courseName = request.getParameter("courseName");
		Course course = new Course(courseNo, courseName);
		// 2����ҵ�����ɸ����޸Ĳ���
		CourseService courseService = new CourseServiceImpl();
		int n = courseService.update(course);
		// 3���������鿴���е�ҳ����
		if (n > 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>window.close();"
					+ "window.opener.location.reload();</script>");
//			request.getRequestDispatcher(
//					"/servlet/MajorServlet?method=showCourse").forward(request,
//					response);
		} else {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showGrade").forward(request,
					response);
		}

	}

	// ��Ӱ༶��Ϣ
	public void getclass(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1��ȡ����Ϣ
		String classId = request.getParameter("classId");
		String className = request.getParameter("className");
		String gradeNo = request.getParameter("gradeNo");
		String mno = request.getParameter("mNo");
		Clazz clazz = new Clazz(classId, gradeNo, mno, className);
		// 2����ҵ���
		ClazzService classService = new ClazzServiceImpl();
		int n = classService.addClass(clazz);
		// ������Ӧ�Ľ���
		if (n > 0) {
			request.getRequestDispatcher(
					"/servlet/MajorServlet?method=showClass").forward(request,
					response);
		} else {
			request.setAttribute("error", "���ʧ��");
			request.getRequestDispatcher("/jsp/major.jsp").forward(request,
					response);
		}
	}

	// չʾ�༶��Ϣ
	public void showClass(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1����ҳ������
		MajorService majorService = new MajorServiceImpl();
		List<Major> majorList = majorService.findAll();
		// 3��ת��Ӧ��ҳ��
		request.setAttribute("majorList", majorList);

		GradeService gradeService = new GradeServiceImpl();
		List<Grade> gradeList = gradeService.findAll();
		// 3��ת��Ӧ��ҳ��
		ClazzService classService = new ClazzServiceImpl();
		List<Clazz> classList = classService.showAll();
		request.setAttribute("classList", classList);

		request.setAttribute("gradeList", gradeList);

		// 3���������鿴���е�ҳ����
		request.getRequestDispatcher("/jsp/class.jsp").forward(request,
				response);

	}

	// ɾ���༶��Ϣ
	public void delectClass(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ����Ҫɾ����רҵ���
		String classId = request.getParameter("classId");
		// ����ҵ������ɾ������
		ClazzService classService = new ClazzServiceImpl();
		classService.delete(classId);
		// ҳ����ת
		request.getRequestDispatcher("/servlet/MajorServlet?method=showClass1")
				.forward(request, response);
	}

	// չʾ�༶��Ϣ
	public void showClass1(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ClazzService classService = new ClazzServiceImpl();
		List<Clazz> classList = classService.showAll();
		request.setAttribute("classList", classList);

		// 3���������鿴���е�ҳ����
		request.getRequestDispatcher("/jsp/class.jsp").forward(request,
				response);

	}

}
