/*
 * JSP generated by Resin-3.0.8 (built Tue, 08 Jun 2004 02:25:40 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class _top__jsp extends com.caucho.jsp.JavaPage{
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
    response.setContentType("text/html");
    try {
      
String webname="\u00c6\u00f3\u00b8\u00bb\u00cd\u00f8"                              ; 
String WebUrl="http://www.qifo.com"                  ;
String serverEmail="finaler@163.com"                 ;
String servetel="13543040545"                        ;
String webfax=" 0756-2000000"                        ;
String webCompany="\u00c6\u00f3\u00b8\u00bb\u00d3\u00d0\u00cf\u00de\u00b9\u00ab\u00cb\u00be"                     ;
String address="\u00b9\u00e3\u00b6\u00ab\u00ca\u00a1\u00d6\u00e9\u00ba\u00a3\u00ca\u00d0\u00bd\u00f0\u00b6\u00a6\u00b8\u00c9\u00b2\u00bf\u00c2\u00a53\u00b6\u00b0201"        ;
String webpost="519000"                              ;
String pat="1000\u00d4\u00aa\u00c8\u00cb\u00c3\u00f1\u00b1\u00d2"                            ;
String QQ="780666"                                   ;
String adminname="\u00c1\u00ba\u00cf\u00c8\u00c9\u00fa"                            ;
String ver="V1.0\u00b0\u00e6"                                  ;
String banzu="finaler"                               ;
String banzuid="2"                               ;

      out.write(_jsp_string0, 0, _jsp_string0.length);
      if ((String) session.getAttribute("Did")==null){
      out.write(_jsp_string1, 0, _jsp_string1.length);
      out.print((webname));
      out.write(_jsp_string2, 0, _jsp_string2.length);
      if (request.getParameter("baar")==null){}else{
      out.write(_jsp_string3, 0, _jsp_string3.length);
      }
      out.write(_jsp_string4, 0, _jsp_string4.length);
      if (request.getParameter("baar")==null){}else{
      out.write(_jsp_string5, 0, _jsp_string5.length);
      }
      out.write(_jsp_string6, 0, _jsp_string6.length);
      if (request.getParameter("baae")==null){}else{
      out.write(_jsp_string3, 0, _jsp_string3.length);
      }
      out.write(_jsp_string7, 0, _jsp_string7.length);
      if (request.getParameter("baae")==null){}else{
      out.write(_jsp_string5, 0, _jsp_string5.length);
      }
      out.write(_jsp_string8, 0, _jsp_string8.length);
      }else{
      out.write(_jsp_string9, 0, _jsp_string9.length);
      out.print((webname));
      out.write(_jsp_string10, 0, _jsp_string10.length);
      out.print(((String) session.getAttribute("dldq")));
      out.write(_jsp_string11, 0, _jsp_string11.length);
      out.print(((String) session.getAttribute("dldq")));
      out.write(_jsp_string12, 0, _jsp_string12.length);
      if (request.getParameter("baar")==null){}else{
      out.write(_jsp_string3, 0, _jsp_string3.length);
      }
      out.write(_jsp_string4, 0, _jsp_string4.length);
      if (request.getParameter("baar")==null){}else{
      out.write(_jsp_string5, 0, _jsp_string5.length);
      }
      out.write(_jsp_string6, 0, _jsp_string6.length);
      if (request.getParameter("baae")==null){}else{
      out.write(_jsp_string3, 0, _jsp_string3.length);
      }
      out.write(_jsp_string7, 0, _jsp_string7.length);
      if (request.getParameter("baae")==null){}else{
      out.write(_jsp_string5, 0, _jsp_string5.length);
      }
      out.write(_jsp_string13, 0, _jsp_string13.length);
      }
      out.write(_jsp_string0, 0, _jsp_string0.length);
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
    _caucho_line_map = new com.caucho.java.LineMap("_top__jsp.java", "foo");
    _caucho_line_map.add("/config.jsp", 1, 30);
    _caucho_line_map.add("/top.jsp", 2, 47);
    _caucho_line_map.add("/head.jsp", 5, 49);
    _caucho_line_map.add(35, 51);
    _caucho_line_map.add(35, 53);
    _caucho_line_map.add(36, 55);
    _caucho_line_map.add(36, 57);
    _caucho_line_map.add(37, 59);
    _caucho_line_map.add(37, 61);
    _caucho_line_map.add(38, 63);
    _caucho_line_map.add(38, 65);
    _caucho_line_map.add("/top.jsp", 3, 67);
    _caucho_line_map.add("/Dhead.jsp", 6, 69);
    _caucho_line_map.add(6, 71);
    _caucho_line_map.add(15, 73);
    _caucho_line_map.add(35, 75);
    _caucho_line_map.add(35, 77);
    _caucho_line_map.add(36, 79);
    _caucho_line_map.add(36, 81);
    _caucho_line_map.add(37, 83);
    _caucho_line_map.add(37, 85);
    _caucho_line_map.add(38, 87);
    _caucho_line_map.add(38, 89);
    _caucho_line_map.add("/top.jsp", 4, 91);
    com.caucho.vfs.Depend depend;
    depend = new com.caucho.vfs.Depend(appDir.lookup("top.jsp"), "b+bu5vteL0VKS3/0SZtRjA==", false);
    _caucho_depends.add(depend);
    depend = new com.caucho.vfs.Depend(appDir.lookup("config.jsp"), "TsAf5AqRSOTyrFXOi2yt6Q==", false);
    _caucho_depends.add(depend);
    depend = new com.caucho.vfs.Depend(appDir.lookup("head.jsp"), "rRKL44jx7cCG1PepQJp21A==", false);
    _caucho_depends.add(depend);
    depend = new com.caucho.vfs.Depend(appDir.lookup("Dhead.jsp"), "dd6CA3Geczh27w3hc2puEA==", false);
    _caucho_depends.add(depend);
  }

  private final static char []_jsp_string10;
  private final static char []_jsp_string5;
  private final static char []_jsp_string11;
  private final static char []_jsp_string13;
  private final static char []_jsp_string2;
  private final static char []_jsp_string6;
  private final static char []_jsp_string3;
  private final static char []_jsp_string12;
  private final static char []_jsp_string4;
  private final static char []_jsp_string1;
  private final static char []_jsp_string7;
  private final static char []_jsp_string0;
  private final static char []_jsp_string9;
  private final static char []_jsp_string8;
  static {
    _jsp_string10 = "----\u00c8\u00ab\u00b9\u00fa\u00b5\u00d8\u00c7\u00f8\u00c1\u00aa\u00c3\u00cb\u00d5\u00be\u00b5\u00e3".toCharArray();
    _jsp_string5 = " class=nav ".toCharArray();
    _jsp_string11 = "\u00d5\u00be</TITLE>\r\n<HEAD>\r\n<link href=\"../conn/laba.css\" rel=\"stylesheet\" type=\"text/css\">\r\n</HEAD>\r\n<BODY leftMargin=0 marginwidth=\"0\"  topMargin=0 background=../images/c_cnco_bj.gif align=center>\r\n\r\n<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 background=\"../images/v6_top_bg.gif\" align=center>\r\n  <TBODY>\r\n  <TR>\r\n    <TD width=270 rowSpan=2 background=../images/Dlogo.gif align=right height=65><br><br><br><font  class=nav color=browse><b>".toCharArray();
    _jsp_string13 = ">\u00ce\u00d2\u00d2\u00aa\u00cf\u00fa\u00ca\u00db</A></TD>\r\n         \r\n\r\n          <TD class=headborder width=20%><A href=\"../info/\" target=\"_parent\">\u00ce\u00d2\u00b5\u00c4\u00bb\u00e1\u00d4\u00b1\u00d6\u00fa\u00ca\u00d6</A> \r\n           </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>\r\n\r\n<TABLE height=45 cellSpacing=0 cellPadding=0 width=750 background=../images/top_bj001.jpg border=0 align=center>\r\n<TBODY>\r\n<TR>\r\n<TD align=center width=10><IMG height=45 src=\"../images/top_bj002.jpg\" width=3></TD>\r\n<form action=\"../sj/search.jsp\" method=\"post\" name=\"form\" id=\"form\" target=\"_blank\">\r\n<td ><img src=../images/s_1.jpg></td>\r\n<TD align=center><INPUT size=13 name=key id=key value=\"\u00b9\u00a9\u00c7\u00f3\u00d0\u00c5\u00cf\u00a2\u00b9\u00d8\u00bc\u00fc\u00d7\u00d6\" onfocus=\"if(value =='\u00b9\u00a9\u00c7\u00f3\u00d0\u00c5\u00cf\u00a2\u00b9\u00d8\u00bc\u00fc\u00d7\u00d6'){value =''}\" onblur=\"if (value ==''){value='\u00b9\u00a9\u00c7\u00f3\u00d0\u00c5\u00cf\u00a2\u00b9\u00d8\u00bc\u00fc\u00d7\u00d6'}\" ></td>\r\n<TD align=center width=5> </TD>\r\n<td ><select name=\"lei\" id=\"lei\">                           \r\n<option value=\"0\" selected>\u00cb\u00f9\u00d3\u00d0\u00d0\u00c5\u00cf\u00a2</option>        \r\n<option value=\"1\" >\u00b9\u00a9\u00d3\u00a6\u00d0\u00c5\u00cf\u00a2</option>\r\n<option value=\"2\">\u00c7\u00f3\u00b9\u00ba\u00d0\u00c5\u00cf\u00a2</option>\r\n<option value=\"3\">\u00b4\u00fa\u00c0\u00ed\u00d0\u00c5\u00cf\u00a2</option>\r\n<option value=\"4\">\u00ba\u00cf\u00d7\u00f7\u00d0\u00c5\u00cf\u00a2</option>\r\n</select></td>\r\n<TD vAlign=center align=middle><INPUT type=image src=\"../images/index_sous.gif\"  align=middle border=0></td>\r\n<td width=10></td>\r\n<td><font color=cccccc>\u00c8\u00c8\u00c3\u00c5\u00cb\u00d1\u00cb\u00f7:</font>\r\n <a href=../sj/search.jsp?key=\u00b2\u00a3\u00c1\u00a7&lei=0 target=\"_blank\"><font color=ffffff>\u00b2\u00a3\u00c1\u00a7</a>\r\n <a href=../sj/search.jsp?key=\u00b7\u00fe\u00d7\u00b0&lei=0 target=\"_blank\"><font color=ffffff>\u00b7\u00fe\u00d7\u00b0</a>\r\n <a href=../sj/search.jsp?key=\u00b8\u00d6\u00b2\u00c4&lei=0 target=\"_blank\"><font color=ffffff>\u00b8\u00d6\u00b2\u00c4</a>\r\n <a href=../sj/search.jsp?key=\u00b5\u00c6&lei=0 target=\"_blank\"><font color=ffffff>\u00b5\u00c6</a>\r\n <a href=../sj/search.jsp?key=\u00b5\u00e7\u00d7\u00d3&lei=0 target=\"_blank\"><font color=ffffff>\u00b5\u00e7\u00d7\u00d3</a>\r\n <a href=../sj/search.jsp?key=\u00b9\u00a4\u00d2\u00d5\u00c6\u00b7&lei=0 target=\"_blank\"><font color=ffffff>\u00b9\u00a4\u00d2\u00d5\u00c6\u00b7</a></td>\r\n<TD align=center width=80><a href=../../searchhelp.jsp target=\"_blank\"><img border=0  src=../images/help.gif width=15 height=15><font color=ffffff> \u00b2\u00e9\u00d5\u00d2\u00c7\u00cf\u00c3\u00c5</font></a></TD>\r\n<TD align=center width=10></td>\r\n</form></TR></TBODY></TABLE>\r\n\r\n\r\n\r\n\r\n\r\n   <TABLE cellSpacing=0 cellPadding=0 width=\"750\" align=center \r\n      bgColor=#ff7d00 border=0>\r\n        <TBODY>\r\n        <TR>\r\n          <TD bgColor=#cccccc height=6></TD></TR>\r\n        <TR>\r\n          <TD height=30>\r\n            <DIV align=center>\r\n            <TABLE height=30 cellSpacing=0 cellPadding=0 width=750 align=center \r\n            border=0>\r\n              <TBODY>\r\n              <TR>\r\n                <TD align=middle width=82 height=28><A class=nav \r\n                  href=\"../sj/\"  target=\"_parent\">\u00c9\u00cc\u00d2\u00b5\u00bb\u00fa\u00bb\u00e1</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../show/\"  target=\"_parent\">\u00b2\u00fa\u00c6\u00b7\u00d5\u00b9\u00bb\u00e1</A></TD>\r\n                <TD align=right width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../minglu/\" target=\"_parent\">\u00c6\u00f3\u00d2\u00b5\u00b4\u00f3\u00c8\u00ab</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD> \r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../zixun/\" target=\"_parent\">\u00d0\u00d0\u00d2\u00b5\u00d7\u00ca\u00d1\u00b6</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../book/\" target=\"_parent\">\u00c9\u00cc\u00c8\u00cb\u00bb\u00b0\u00cc\u00e2</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../job/\" target=\"_parent\">\u00d5\u00d0\u00b3\u00d2\u00d7\u00a8\u00c7\u00f8</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../union/\" target=\"_parent\">\u00cd\u00f8\u00d5\u00be\u00b5\u00c7\u00c2\u00bc</font></A></TD> \r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle bgColor=#666666><A class=nav \r\n                  href=\"../let/\" target=\"_parent\">\u00c4\u00ea\u00d0\u00bd\u00c8\u00fd\u00ca\u00ae\u00cd\u00f2\u00c7\u00e1\u00cb\u00c9\u00d7\u00ac</A></TD></TR></TBODY></TABLE></DIV></TD></TR>\r\n        <TR>\r\n          <TD background=../images/bg_navline.gif \r\n      height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>".toCharArray();
    _jsp_string2 = "----\u00c8\u00c3\u00cc\u00ec\u00cf\u00c2\u00b5\u00c4\u00c9\u00cc\u00c8\u00cb\u00b8\u00bb\u00c6\u00f0\u00c0\u00b4!</TITLE>\r\n<HEAD>\r\n<link href=\"../conn/laba.css\" rel=\"stylesheet\" type=\"text/css\">\r\n</HEAD>\r\n<BODY leftMargin=0 marginwidth=\"0\"  topMargin=0 background=../images/c_cnco_bj.gif align=center>\r\n\r\n<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 background=\"../images/v6_top_bg.gif\" align=center>\r\n  <TBODY>\r\n  <TR>\r\n    <TD width=270 rowSpan=2><A  href=\"../\"   target=\"_parent\"><IMG  \r\n      src=\"../images/logo.gif\" border=0></A></TD>\r\n    <TD class=s align=right width=480>\r\n<IMG height=10 src=\"../images/v6_header_spirits.gif\" ><br>\r\n\r\n<img src=../images/TriTanium17.jpg><a href=../  target=\"_parent\">\u00ca\u00d7  \u00d2\u00b3</a><SPAN \r\n      class=gray> | </SPAN>\r\n<IMG height=17 alt=\u00b3\u00cf\u00d0\u00c5\u00cd\u00a8\u00b7\u00fe\u00ce\u00f1 \r\n      src=\"../images/icon_trustpass_logo_min.gif\"  align=absMiddle \r\n      border=0><A href=\"../qifotong.jsp\"  target=\"_parent\">\u00c6\u00f3\u00b8\u00bb\u00cd\u00a8\u00b7\u00fe\u00ce\u00f1</A><SPAN \r\n      class=gray><SPAN class=gray> \r\n      | </SPAN><IMG height=16 alt=\u00b5\u00d8\u00c7\u00f8\u00bc\u00d3\u00c3\u00cb \r\n      src=\"../images/cs2.gif\" align=absMiddle \r\n      border=0><A  href=\"../let\"  target=\"_parent\">\u00b5\u00d8\u00c7\u00f8\u00bc\u00d3\u00c3\u00cb</A>\r\n</TD></TR>\r\n  <TR>\r\n    <TD vAlign=bottom>\r\n      <TABLE cellSpacing=0 cellPadding=0 width=\"100%\" border=0 >\r\n        <TBODY>\r\n        <TR><TD class=headborder width=20%><A href=\"../reg/register.jsp\"  target=\"_parent\">\u00d7\u00a2\u00b2\u00e1\u00bb\u00e1\u00d4\u00b1</a></TD>\r\n          \r\n          <TD ".toCharArray();
    _jsp_string6 = ">\u00ce\u00d2\u00d2\u00aa\u00b2\u00c9\u00b9\u00ba</A></TD>\r\n          <TD ".toCharArray();
    _jsp_string3 = " class=headonborder".toCharArray();
    _jsp_string12 = "</b>\u00d5\u00be</font>&nbsp;<br></TD>\r\n    <TD class=s align=right width=550>\r\n<IMG height=10 src=\"../images/v6_header_spirits.gif\" ><br>\r\n\r\n<img src=../images/TriTanium17.jpg><a href=../  target=\"_parent\">\u00ca\u00d7  \u00d2\u00b3</a><SPAN \r\n      class=gray> | </SPAN>\r\n<IMG height=17 alt=\u00b3\u00cf\u00d0\u00c5\u00cd\u00a8\u00b7\u00fe\u00ce\u00f1 \r\n      src=\"../images/icon_trustpass_logo_min.gif\"  align=absMiddle \r\n      border=0><A href=\"../qifotong.jsp\"  target=\"_parent\">\u00c6\u00f3\u00b8\u00bb\u00cd\u00a8\u00b7\u00fe\u00ce\u00f1</A><SPAN \r\n      class=gray><SPAN class=gray> \r\n      | </SPAN><IMG height=16 alt=\u00b5\u00d8\u00c7\u00f8\u00bc\u00d3\u00c3\u00cb \r\n      src=\"../images/cs2.gif\" align=absMiddle \r\n      border=0><A  href=\"../let\"  target=\"_parent\">\u00b5\u00d8\u00c7\u00f8\u00bc\u00d3\u00c3\u00cb</A>\r\n</TD></TR>\r\n  <TR>\r\n    <TD vAlign=bottom>\r\n      <TABLE cellSpacing=0 cellPadding=0 width=\"100%\" border=0 >\r\n        <TBODY>\r\n        <TR><TD class=headborder width=20%><A href=\"../reg/register.jsp\"  target=\"_parent\">\u00d7\u00a2\u00b2\u00e1\u00bb\u00e1\u00d4\u00b1</a></TD>\r\n          \r\n          <TD ".toCharArray();
    _jsp_string4 = " class=headborder width=20%>\r\n<A href=\"../sj/come1.jsp?baar=buy\" target=\"_parent\"".toCharArray();
    _jsp_string1 = "\r\n\r\n\r\n\r\n<HTML>\r\n<TITLE>".toCharArray();
    _jsp_string7 = " class=headborder width=20%>\r\n<A href=\"../sj/come2.jsp?baae=sale\" target=\"_parent\"".toCharArray();
    _jsp_string0 = "\r\n".toCharArray();
    _jsp_string9 = "\r\n\r\n\r\n\r\n\r\n<HTML>\r\n<TITLE>".toCharArray();
    _jsp_string8 = ">\u00ce\u00d2\u00d2\u00aa\u00cf\u00fa\u00ca\u00db</A></TD>\r\n         \r\n\r\n          <TD class=headborder width=20%><A href=\"../info/\" target=\"_parent\">\u00ce\u00d2\u00b5\u00c4\u00bb\u00e1\u00d4\u00b1\u00d6\u00fa\u00ca\u00d6</A> \r\n           </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>\r\n\r\n\r\n<TABLE height=45 cellSpacing=0 cellPadding=0 width=750 background=../images/top_bj001.jpg border=0 align=center>\r\n<TBODY>\r\n<TR>\r\n<TD align=center width=10><IMG height=45 src=\"../images/top_bj002.jpg\" width=3></TD>\r\n<form action=\"../sj/search.jsp\" method=\"post\" name=\"form\" id=\"form\" target=\"_blank\">\r\n<td ><img src=../images/s_1.jpg></td>\r\n<TD align=center><INPUT size=13 name=key id=key value=\"\u00b9\u00a9\u00c7\u00f3\u00d0\u00c5\u00cf\u00a2\u00b9\u00d8\u00bc\u00fc\u00d7\u00d6\" onfocus=\"if(value =='\u00b9\u00a9\u00c7\u00f3\u00d0\u00c5\u00cf\u00a2\u00b9\u00d8\u00bc\u00fc\u00d7\u00d6'){value =''}\" onblur=\"if (value ==''){value='\u00b9\u00a9\u00c7\u00f3\u00d0\u00c5\u00cf\u00a2\u00b9\u00d8\u00bc\u00fc\u00d7\u00d6'}\" ></td>\r\n<TD align=center width=5> </TD>\r\n<td ><select name=\"lei\" id=\"lei\">                           \r\n<option value=\"0\" selected>\u00cb\u00f9\u00d3\u00d0\u00d0\u00c5\u00cf\u00a2</option>        \r\n<option value=\"1\" >\u00b9\u00a9\u00d3\u00a6\u00d0\u00c5\u00cf\u00a2</option>\r\n<option value=\"2\">\u00c7\u00f3\u00b9\u00ba\u00d0\u00c5\u00cf\u00a2</option>\r\n<option value=\"3\">\u00b4\u00fa\u00c0\u00ed\u00d0\u00c5\u00cf\u00a2</option>\r\n<option value=\"4\">\u00ba\u00cf\u00d7\u00f7\u00d0\u00c5\u00cf\u00a2</option>\r\n</select></td>\r\n<TD vAlign=center align=middle><INPUT type=image src=\"../images/index_sous.gif\"  align=middle border=0></td>\r\n<td width=10></td>\r\n<td><font color=cccccc>\u00c8\u00c8\u00c3\u00c5\u00cb\u00d1\u00cb\u00f7:</font>\r\n <a href=../sj/search.jsp?key=\u00b2\u00a3\u00c1\u00a7&lei=0 target=\"_blank\"><font color=ffffff>\u00b2\u00a3\u00c1\u00a7</a>\r\n <a href=../sj/search.jsp?key=\u00b7\u00fe\u00d7\u00b0&lei=0 target=\"_blank\"><font color=ffffff>\u00b7\u00fe\u00d7\u00b0</a>\r\n <a href=../sj/search.jsp?key=\u00b8\u00d6\u00b2\u00c4&lei=0 target=\"_blank\"><font color=ffffff>\u00b8\u00d6\u00b2\u00c4</a>\r\n <a href=../sj/search.jsp?key=\u00b5\u00c6&lei=0 target=\"_blank\"><font color=ffffff>\u00b5\u00c6</a>\r\n <a href=../sj/search.jsp?key=\u00b5\u00e7\u00d7\u00d3&lei=0 target=\"_blank\"><font color=ffffff>\u00b5\u00e7\u00d7\u00d3</a>\r\n <a href=../sj/search.jsp?key=\u00b9\u00a4\u00d2\u00d5\u00c6\u00b7&lei=0 target=\"_blank\"><font color=ffffff>\u00b9\u00a4\u00d2\u00d5\u00c6\u00b7</a></td>\r\n<TD align=center width=80><a href=../../searchhelp.jsp target=\"_blank\"><img border=0  src=../images/help.gif width=15 height=15><font color=ffffff> \u00b2\u00e9\u00d5\u00d2\u00c7\u00cf\u00c3\u00c5</font></a></TD>\r\n<TD align=center width=10></td>\r\n</form></TR></TBODY></TABLE>\r\n\r\n\r\n\r\n\r\n   <TABLE cellSpacing=0 cellPadding=0 width=\"750\" align=center \r\n      bgColor=#ff7d00 border=0>\r\n        <TBODY>\r\n        <TR>\r\n          <TD bgColor=#cccccc height=6></TD></TR>\r\n        <TR>\r\n          <TD height=30>\r\n            <DIV align=center>\r\n            <TABLE height=30 cellSpacing=0 cellPadding=0 width=750 align=center \r\n            border=0>\r\n              <TBODY>\r\n              <TR>\r\n                <TD align=middle width=82 height=28><A class=nav \r\n                  href=\"../sj/\"  target=\"_parent\">\u00c9\u00cc\u00d2\u00b5\u00bb\u00fa\u00bb\u00e1</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../show/\"  target=\"_parent\">\u00b2\u00fa\u00c6\u00b7\u00d5\u00b9\u00bb\u00e1</A></TD>\r\n                <TD align=right width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../minglu/\" target=\"_parent\">\u00c6\u00f3\u00d2\u00b5\u00b4\u00f3\u00c8\u00ab</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD> \r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../zixun/\" target=\"_parent\">\u00d0\u00d0\u00d2\u00b5\u00d7\u00ca\u00d1\u00b6</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../book/\" target=\"_parent\">\u00c9\u00cc\u00c8\u00cb\u00bb\u00b0\u00cc\u00e2</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../job/\" target=\"_parent\">\u00d5\u00d0\u00b3\u00d2\u00d7\u00a8\u00c7\u00f8</A></TD>\r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle width=82><A class=nav \r\n                  href=\"../union/\" target=\"_parent\">\u00cd\u00f8\u00d5\u00be\u00b5\u00c7\u00c2\u00bc</font></A></TD> \r\n                <TD width=1 bgColor=#ffffff></TD>\r\n                <TD align=middle bgColor=#666666><A class=nav \r\n                  href=\"../let/\" target=\"_parent\">\u00c4\u00ea\u00d0\u00bd\u00c8\u00fd\u00ca\u00ae\u00cd\u00f2\u00c7\u00e1\u00cb\u00c9\u00d7\u00ac</A></TD></TR></TBODY></TABLE></DIV></TD></TR>\r\n        <TR>\r\n          <TD background=../images/bg_navline.gif \r\n      height=5></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>".toCharArray();
  }
}
