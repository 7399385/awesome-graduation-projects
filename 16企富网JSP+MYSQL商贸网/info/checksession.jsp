<%
	if ((String) session.getAttribute("login")==null){

		String all_curPage = request.getRequestURI();//�õ���ǰҳ���·��������
		String all_curQueryString = request.getQueryString();//�õ���ǰҳ��Ĳ���

		String referer = all_curPage;
		if(all_curQueryString!=null){
			referer += "?" + all_curQueryString;
		}
	

		response.sendRedirect("../deng.jsp?referer="+java.net.URLEncoder.encode(referer));//һ��Ҫ����,���������ַ�������ȥ
	
	}
	
%>