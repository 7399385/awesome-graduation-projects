/*
 * JSP generated by Resin-3.0.8 (built Tue, 08 Jun 2004 02:25:40 PDT)
 */

package _jsp._info;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class _regvip__jsp extends com.caucho.jsp.JavaPage{
  private boolean _caucho_isDead;
  
  public void
  _jspService(javax.servlet.http.HttpServletRequest request,
              javax.servlet.http.HttpServletResponse response)
    throws java.io.IOException, javax.servlet.ServletException
  {
    javax.servlet.http.HttpSession session = request.getSession(true);
    com.caucho.server.webapp.Application _jsp_application = _caucho_getApplication();
    javax.servlet.ServletContext application = _jsp_application;
    com.caucho.jsp.PageContextImpl pageContext = com.caucho.jsp.QJspFactory.allocatePageContext(this, _jsp_application, request, response, null, session, 8192, true);
    javax.servlet.jsp.JspWriter out = pageContext.getOut();
    javax.servlet.ServletConfig config = getServletConfig();
    javax.servlet.Servlet page = this;
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("GB2312");
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      
	if ((String) session.getAttribute("login")==null){

		String all_curPage = request.getRequestURI();//\u5f97\u5230\u5f53\u524d\u9875\u9762\u7684\u8def\u5f84\u548c\u540d\u79f0
		String all_curQueryString = request.getQueryString();//\u5f97\u5230\u5f53\u524d\u9875\u9762\u7684\u53c2\u6570

		String referer = all_curPage;
		if(all_curQueryString!=null){
			referer += "?" + all_curQueryString;
		}
	

		response.sendRedirect("../deng.jsp?referer="+java.net.URLEncoder.encode(referer));//\u4e00\u5b9a\u8981\u7f16\u7801,\u5426\u5219\u7279\u6b8a\u5b57\u7b26\u4f20\u4e0d\u8fc7\u53bb
	
	}
	

      out.write(_jsp_string1, 0, _jsp_string1.length);
      Connection con;
Statement stmt;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
String dbUrl="jdbc:mysql://localhost:3306/laba?useUnicode=true&characterEncoding=GB2312";
String dbUser="root";
String dbPwd="1982o7o9";
con=java.sql.DriverManager.getConnection(dbUrl,dbUser,dbPwd);
stmt=con.createStatement();

      out.write(_jsp_string0, 0, _jsp_string0.length);
      
String loginname=(String) session.getAttribute("loginname");
String sql2="update qyml set comeon=1 where username='"+loginname+"'";
stmt.executeUpdate(sql2);


      out.write(_jsp_string2, 0, _jsp_string2.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      com.caucho.jsp.QJspFactory.freePageContext(pageContext);
    }
  }

  private com.caucho.java.LineMap _caucho_line_map;
  private java.util.ArrayList _caucho_depends = new java.util.ArrayList();

  public java.util.ArrayList _caucho_getDependList()
  {
    return _caucho_depends;
  }

  public void _caucho_addDepend(com.caucho.make.PersistentDependency depend)
  {
    super._caucho_addDepend(depend);
    _caucho_depends.add(depend);
  }

  public boolean _caucho_isModified()
  {
    if (_caucho_isDead)
      return true;
    if (com.caucho.util.CauchoSystem.getVersionId() != 1174304630)
      return true;
    for (int i = _caucho_depends.size() - 1; i >= 0; i--) {
      com.caucho.make.Dependency depend;
      depend = (com.caucho.make.Dependency) _caucho_depends.get(i);
      if (depend.isModified())
        return true;
    }
    return false;
  }

  public long _caucho_lastModified()
  {
    return 0;
  }

  public com.caucho.java.LineMap _caucho_getLineMap()
  {
    return _caucho_line_map;
  }

  public void destroy()
  {
      _caucho_isDead = true;
      super.destroy();
  }

  public void init(com.caucho.java.LineMap lineMap,
                   com.caucho.vfs.Path appDir)
    throws javax.servlet.ServletException
  {
    com.caucho.vfs.Path resinHome = com.caucho.util.CauchoSystem.getResinHome();
    com.caucho.vfs.MergePath mergePath = new com.caucho.vfs.MergePath();
    mergePath.addMergePath(appDir);
    mergePath.addMergePath(resinHome);
    com.caucho.loader.DynamicClassLoader loader;
    loader = (com.caucho.loader.DynamicClassLoader) getClass().getClassLoader();
    String resourcePath = loader.getResourcePathSpecificFirst();
    mergePath.addClassPath(resourcePath);
    _caucho_line_map = new com.caucho.java.LineMap("_regvip__jsp.java", "foo");
    _caucho_line_map.add("/info/../info/checksession.jsp", 1, 32);
    _caucho_line_map.add("/info/../conn/conn.jsp", 6, 50);
    _caucho_line_map.add("/info/regvip.jsp", 6, 62);
    com.caucho.vfs.Depend depend;
    depend = new com.caucho.vfs.Depend(appDir.lookup("info/regvip.jsp"), "6C65L3TdHd5MiCbParQk/g==", false);
    _caucho_depends.add(depend);
    depend = new com.caucho.vfs.Depend(appDir.lookup("info/checksession.jsp"), "bjMdX2FM/Nyg5W8bXNL90A==", false);
    _caucho_depends.add(depend);
    depend = new com.caucho.vfs.Depend(appDir.lookup("conn/conn.jsp"), "Y8eOeqaPTEc4uE5RVs4RUg==", false);
    _caucho_depends.add(depend);
  }

  private final static char []_jsp_string1;
  private final static char []_jsp_string2;
  private final static char []_jsp_string0;
  static {
    _jsp_string1 = "\r\n\r\n<link rel=\"stylesheet\" href=\"../conn/laba.css\" type=\"text/css\">\r\n\r\n\r\n\r\n".toCharArray();
    _jsp_string2 = "\r\n<script language=JavaScript>{window.alert('\u5df2\u63d0\u4ea4\u7533\u8bf7!\u8bf7\u7b49\u5f85\u6211\u4eec\u4e0e\u60a8\u7684\u8054\u7cfb!');window.location.href='index.jsp'}</script>\r\n".toCharArray();
    _jsp_string0 = "\r\n\r\n".toCharArray();
  }
}
