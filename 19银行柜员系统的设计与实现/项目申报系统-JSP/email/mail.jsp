<jsp:useBean id="email" class="beanMailer.SMTPBean"/>

<%
String from,to,subject,message;
    try
    { 
    from = request.getParameterValues("from")[0];
    to = request.getParameterValues("to")[0];
    subject = request.getParameterValues("subject")[0];
    message = request.getParameterValues("message")[0];
    }
    catch (Exception e)
    {
    out.println("You have to use the Form to send email from here.");
    out.println ("Click <A href= \"index.jsp\">here</A> for the form.<BR>");
    out.flush();
    return;
    }
%>   

<jsp:setProperty name="email" property="smtpServer" value="mail.abs.com.cn" />
<%--
<jsp:setProperty name="email" property="port" value="25" />
--%>


<%--����1:  Ϊ���ִ����࣬ʹ��sendMail()����--%>

<% 
 try{
 email.sendMail(from,to,subject,message);
 }catch(beanMailer.SMTPException e){
  out.println(e.getMessage() + "<br>");
 }
%> 
<%--�򷽷�2:  ʹ�ø����ӵĽű��õ�����������Ӧ����׽������Ϣ���÷����Ƚ����ף���ϸ����ִ��--%>
<%
    try{
    // 1) ���ӵ�������
    email.connect();
    out.println("Connecting...");
    out.println(email.getServerReply());
    out.println("<br>");

    // 2) �õ���������Ӧ
    try{
          out.println("Hailing...");
          email.hail(from, to);
          out.println(email.getServerReply());
          out.println("<br>"); 

         // 3) ����ҵ����������򷢳���Ϣ
          try{
                out.println("Sending Message...");
                email.sendMessage(from, to, subject, message);
                out.println(email.getServerReply());
                out.println("<br>"); 

               }catch (SMTPException e){
                 out.println(e.getMessage() +"<br>");
           }

         // 4) �ر�����
        try{
               out.println("Logging off...");
               email.logout();
               out.println(email.getServerReply());
               out.println("<br>");
              }catch (SMTPException e) {
          out.println(e.getMessage() +"<br>");
          }
    }catch (SMTPException e){
   out.println(e.getMessage() +"<br>");
   }
 }catch (SMTPException e){
   out.println(e.getMessage() +"<br>");
   }  
%> 