<%@ include file="checkdl.jsp"%>
<%@ page contentType="text/html;charset=gb2312" %>
<%@ include file="../conn/conn.jsp"%>
<%@ include file="../conn/ubb.jsp"%>
<%checkData cData = new checkData("");%>
<%@ page import="com.lynews.news.*"%>
<%String fbtime=(String) session.getAttribute("time");%>
<%
stmt = con.createStatement() ;
String topic=request.getParameter("topic");
String  dlid=(String) session.getAttribute("dlid");
String  lei=request.getParameter("lei");
String  url=request.getParameter("url");
String content=request.getParameter("content");
cData.setS(content);
content = cData.formatHtml(true);

// ����.html
String templateContent="<link href=../../conn/laba.css rel=stylesheet type=text/css><TABLE cellSpacing=1 cellPadding=0 width=550 bgColor=#cccccc border=0 align=center><TBODY><TR bgColor=#ffffff><TD vAlign=center bgColor=#f1f1f1 colSpan=2 height=25><a href=../index.jsp>"+topic+"<bR><bR>"+content+"</a></td></tr></tbody></table>";
Calendar calendar = Calendar.getInstance();
String fileName = String.valueOf(calendar.getTimeInMillis()) +".html";
String pathName = application.getRealPath("../zixun/html")+"/";
WriteHtml.save(templateContent,pathName,fileName);
//�������



String sql="insert into dqzixun(topic,content,dlid,fileName,lei,url) values('"+topic+"','"+content+"','"+dlid+"','"+fileName+"','"+lei+"','"+url+"')";
stmt.executeUpdate(sql);

%>
<script language=JavaScript>{window.location.href='indexdl.jsp'}</script>
<%
stmt.close(); 
con.close();
%>