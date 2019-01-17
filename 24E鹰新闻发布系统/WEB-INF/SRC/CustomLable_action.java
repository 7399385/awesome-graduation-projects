package com.v246;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class CustomLable_action extends org.apache.struts.action.Action
{
	public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)
	{
		CustomLable_form custom=(CustomLable_form)form;
		CustomLable_bean bean=new CustomLable_bean();
		String re=null;
		String tmp=null;
		try
		{
			tmp=bean.addCustomLable(custom);//ִ�����ݿ�д�벢���շ�����Ϣ
			if(tmp.equals("error"))//�������error����ҳ���ҳ
			{
				re="customError";
			}
			else//���������ȷҳ��
			{
				re="custom";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		request.setAttribute("custom",custom);
		return mapping.findForward(re);
	}
}