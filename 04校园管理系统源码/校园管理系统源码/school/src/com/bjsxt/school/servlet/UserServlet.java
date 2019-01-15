package com.bjsxt.school.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjsxt.school.entity.User;
import com.bjsxt.school.service.UserService;
import com.bjsxt.school.service.impl.UserServiceImpl;

public class UserServlet extends BaseServlet {

	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ������ͼ��ı�����
		// ���POST������������
		request.setCharacterEncoding("utf-8");
		// //�����û���������
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		

		// //�����û�������֤��
		String verifyCode = request.getParameter("verifyCode");
		// //��ȡ��ȷ����֤��
		String randStr = (String) request.getSession().getAttribute("randStr");
		// //�ж���֤���Ƿ���ȷ
		if (randStr == null || "".equals(randStr)
				|| !randStr.equals(verifyCode)) {
			request.setAttribute("error", "��֤���������������");
			request.getRequestDispatcher("/login.jsp").forward(request,
					response);
			return;
		}
		// ����ҵ�����ɵ�¼�������õ����
		UserService userService = new UserServiceImpl();
		User user = userService.login(userId, password);

		// ���ݽ����ת����ͬ����ͼҳ��
		if (user != null) {
			//����cookie;
			String userId2=URLEncoder.encode(userId,"utf-8");
			Cookie cookie1=new Cookie("userId",userId2);
			Cookie cookie2=new Cookie("password",password);
			//�ƶ�cookieʱ��
			if("yes".equals(remember)){
				cookie1.setMaxAge(60*60*24*10);
				cookie2.setMaxAge(60*60*24*10);
			}else{
				cookie1.setMaxAge(0);
				cookie2.setMaxAge(0);
			}
			//�ƶ�cookie��Χ
			cookie1.setPath("/school/");
			cookie2.setPath("/school/");
			//��cookie���û�
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			
			request.getSession().setAttribute("user", user);
			// ��ת����ҳ��(�ض���)
			response.sendRedirect(request.getContextPath() + "/main.jsp");
		} else {
			request.setAttribute("error", "�û��������������");
			// ��ת�ص�¼ҳ�棨ת����
			request.getRequestDispatcher("/login.jsp").forward(request,
					response);
		}
	}
	public void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		response.sendRedirect("/school/login.jsp");

	}
	public void addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ����ҳ������
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		User user = new User(userId, userName, password);
		// ����ҵ������ע�����

		UserService userService = new UserServiceImpl();
		int n = userService.addUser(user);

		// ҳ����ת
		if (n > 0) {
			// request.getRequestDispatcher("/User/success.html").forward(request,
			// response);
//			request.getRequestDispatcher("/servlet/UserServlet?method=findAll")
//					.forward(request, response);
			response.sendRedirect("/school/servlet/UserServlet?method=findAll");

		} else {
			request.setAttribute("error", "ѧ�����ʧ��");
			request.getRequestDispatcher("/User/UserList.jsp").forward(request,
					response);
		}
	}

	public void deleteUser(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ����ҳ������
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		// ����ҵ������ע�����

		UserService userService = new UserServiceImpl();
		userService.deleteUser(userId);

		// ҳ����ת
		response.sendRedirect(request.getContextPath()
				+ "/servlet/UserServlet?method=findAll");
		// request.getRequestDispatcher("/files/success.html").forward(request,
		// response);
		// request.getRequestDispatcher("/servlet/StudentServlet?method=show").forward(request,
		// response);
		// response.sendRedirect(request.getContextPath()+"/servlet/UserServlet?method=update");

	}

	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ����ҳ������
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		User user = new User(userId, userName, password);
		// ����ҵ������ע�����

		UserService userService = new UserServiceImpl();
		userService.update(user);

		// ҳ����ת

		// request.getRequestDispatcher("/files/success.html").forward(request,
		// response);
		// request.getRequestDispatcher("/servlet/StudentServlet?method=show").forward(request,
		// response);
		response.sendRedirect(request.getContextPath()
				+ "/servlet/UserServlet?method=findAll");

	}

	public void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ����ҵ������ע�����
		String userId = request.getParameter("userId");
		if (userId == null) {
			userId = "";
		}
		String userName = request.getParameter("userName");
		if (userName == null) {
			userName = "";
		}
		UserService userService = new UserServiceImpl();
		List<User> userList = userService.findAll(userId, userName);

		// ҳ����ת
		request.setAttribute("userId1", userId);
		request.setAttribute("userName1", userName);
		request.setAttribute("userList", userList);
		request.getRequestDispatcher("/User/UserList.jsp").forward(request,
				response);
		// request.getRequestDispatcher("/servlet/StudentServlet?method=show").forward(request,
		// response);

	}

	public void findById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// ����ҵ������ע�����
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");

		UserService userService = new UserServiceImpl();
		User user = userService.findById(userId);

		// ҳ����ת

		// request.getRequestDispatcher("/files/success.html").forward(request,
		// response);
		// request.getRequestDispatcher("/servlet/StudentServlet?method=show").forward(request,
		// response);
		response.sendRedirect(request.getContextPath()
				+ "/servlet/UserServlet?method=findAll");

	}

	public void find(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ�û�����������
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		// ����ҵ������ע�����

		UserService userService = new UserServiceImpl();
		List<User> userList = userService.find(userId, userName);

		// ҳ����ת
		request.setAttribute("userList", userList);
		request.setAttribute("userId1", userId);
		request.setAttribute("userName1", userName);
		request.getRequestDispatcher("/User/UserList.jsp").forward(request,
				response);
		// request.getRequestDispatcher("/servlet/StudentServlet?method=show").forward(request,
		// response);

	}

}
