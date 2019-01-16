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

import common.exception.MotorbikeCarException;
import common.util.BeanFactory;

import service.IMotorCarService;

import dao.InsertMotorCarDao;
import dao.bean.ApplicationRecord;
import dao.bean.User;
import web.form.AppRecordForm;

/**
 * MyEclipse Struts Creation date: 05-10-2008
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/addAppRecord" name="appRecordForm"
 *                input="/pages/car/application.jsp" scope="request"
 * @struts.action-forward name="success" path="/pages/car/application.jsp"
 *                        redirect="true"
 */
public class AddAppRecordAction extends Action {
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
		AppRecordForm appform = (AppRecordForm) form;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user.getPower() == 0) {
			session.setAttribute("message", "对不起，您权限不够");
			return mapping.findForward("success");
		}
		String appdate = appform.getDate();
		String des_address = appform.getDes_address();
		String res_address = appform.getRes_address();
		long weight = appform.getWeight();
		String customer = appform.getCustomer();
		String phone = appform.getPhone();
		long predictday = appform.getPredictday();
		ApplicationRecord record = new ApplicationRecord();
		record.setAppdate(appdate);
		record.setDesAddress(des_address);
		record.setResAddress(res_address);
		record.setCapacity(weight);
		record.setCustomer(customer);
		record.setPhone(phone);
		record.setPredictday(predictday);
		record.setUser(user);

		IMotorCarService service = (IMotorCarService) BeanFactory
				.getBean("motorcarService");
		try {
			service.addAppRecord(record);
			session.setAttribute("message", "操作成功");
		} catch (MotorbikeCarException e) {
			e.printStackTrace();
			session.setAttribute("message", e.getMessage());
		}
		return mapping.findForward("success");
	}
}