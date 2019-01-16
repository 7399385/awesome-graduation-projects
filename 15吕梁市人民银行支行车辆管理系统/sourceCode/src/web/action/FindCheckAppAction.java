/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import service.IMotorCarService;

import common.exception.MotorbikeCarException;
import common.util.BeanFactory;

import dao.bean.User;

/** 
 * MyEclipse Struts
 * Creation date: 05-10-2008
 * 
 * XDoclet definition:
 * @struts.action input="/pages/member/activity.jsp"
 * @struts.action-forward name="success" path="/pages/car/backrecord.jsp" redirect="true"
 */
public class FindCheckAppAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user.getPower()==0){
			session.setAttribute("message","对不起，您权限不够!");
			return mapping.findForward("failure");
		}
		IMotorCarService service = (IMotorCarService) BeanFactory
				.getBean("motorcarService");
		try {
			List list=service.findAppRecord(1);
			session.setAttribute("applist", list);
			return mapping.findForward("success");
		} catch (MotorbikeCarException e) {
			e.printStackTrace();
			session.setAttribute("message", e.getMessage());
			return mapping.findForward("failure");
		}
	}
}