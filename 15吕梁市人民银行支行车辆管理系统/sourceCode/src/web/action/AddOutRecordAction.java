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

import common.exception.UserException;
import common.util.BeanFactory;
import dao.bean.ApplicationRecord;
import dao.bean.Driver;
import dao.bean.MotorCar;
import dao.bean.OutRecord;
import dao.bean.User;

import service.IMotorCarService;
import service.IUserService;
import web.form.AddOutRecordForm;

/**
 * MyEclipse Struts Creation date: 05-10-2008
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/addOutRecord" name="addOutRecordForm"
 *                input="/pages/car/outrecord.jsp" scope="request"
 */
public class AddOutRecordAction extends Action {
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
	public ActionForward execute(ActionMapping mapping, ActionForm f,
			HttpServletRequest request, HttpServletResponse response) {
		AddOutRecordForm form = (AddOutRecordForm) f;
		HttpSession session = request.getSession();
		try {
			long appid = form.getAppid();
			String drivername = form.getDrviername();
			IUserService userservice = (IUserService) BeanFactory
					.getBean("userService");
			Driver driver = userservice.findDriver(drivername);
			if (driver == null) {
				session.setAttribute("message", "您输入的驾驶员不存在");
				return mapping.findForward("failure");
			}
			String outdate = form.getOutdate();
			String carnumber = form.getCarnumber();
			IMotorCarService carservice = (IMotorCarService) BeanFactory
					.getBean("motorcarService");
			MotorCar car=carservice.findCarByNumber(carnumber);
			if(car==null){
				session.setAttribute("message", "您输入的车辆不存在");
				return mapping.findForward("failure");
			}
			System.out.println("status="+car.getStatus());
			if(car.getStatus().equals("出车")){
				session.setAttribute("message","您输入的车辆正在出车中!");
				return mapping.findForward("failure");
			}
			ApplicationRecord apprecord=carservice.findAppById(appid);
			apprecord.setStatus(3);
			carservice.updateAppRecord(apprecord);
			OutRecord outrecord=new OutRecord();
			outrecord.setApprecord(apprecord);
			outrecord.setMotorcar(car);
			outrecord.setOutdate(outdate);
			outrecord.setStatus(0);
			User user=(User)session.getAttribute("user");
			outrecord.setUser(user);
			carservice.addOutRecord(outrecord);
			return mapping.findForward("success");
		} catch (Exception e) {
			e.printStackTrace();
			return mapping.findForward("failure");
		}
	}
}