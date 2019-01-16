/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package web.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import web.form.LoginForm;

/**
 * MyEclipse Struts Creation date: 04-16-2002
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/loginAction.do"
 * @struts.action-forward name="failure" path="/pages/login.jsp" redirect="true"
 */
public class AutoLoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		LoginForm loginform =(LoginForm)form;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if ("username".equals(c.getName())) {
					loginform.setUserName(c.getValue());
				}
				if ("passwd".equals(c.getName())) {
					loginform.setPasswd(c.getValue());
				}
			}
			if (loginform.getUserName() != null
					&& loginform.getPasswd() != null) {
				return mapping.findForward("success");
			}
		}
		return mapping.findForward("failure");
	}
}