<%@ include file="../config.jsp"%>
<%if(((String)session.getAttribute("loginname")).compareTo(banzu)==0){}else{%>

<script language=JavaScript>{window.alert('�Ƿ�����!');window.location.href='index.jsp'}</script>

<%}%>