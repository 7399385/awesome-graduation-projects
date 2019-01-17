package com.v246;
import org.apache.struts.action.*;
import javax.servlet.http.*;
//Action ��
public class UserAction extends Action
{
	public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)
	{
		UserForm f=(UserForm)form;
		try
		{
			UserBean bean=new UserBean();//UserBean�������ݿ�ִ�о����ҵ���߼�
			bean.addUser(f.getUser());
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		request.setAttribute("User",f.getUser());
		return (mapping.findForward("userCreated"));
	}
}