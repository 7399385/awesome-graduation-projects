/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import service.IUserService;

import common.exception.UserException;
import common.util.BeanFactory;
import dao.bean.User;

/** 
 * MyEclipse Struts
 * Creation date: 04-19-2002
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/pages/member/powermanage.jsp" redirect="true"
 */
public class ChangePowerAction extends Action {
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
		String nickname=request.getParameter("nickname");
		long power=Long.parseLong(request.getParameter("power"));
		IUserService service=(IUserService)BeanFactory.getBean("userService");
		HttpSession session=request.getSession();
		try {
			User user=service.findByNickName(nickname);
			user.setPower(power);
			service.modify(user);
		} catch (UserException e) {
			e.printStackTrace();
			session.setAttribute("message", "修改权限失败");
		}
		session.setAttribute("message", "操作成功");
		return mapping.findForward("success");
	}
}