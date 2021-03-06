/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package web.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 05-10-2008
 * 
 * XDoclet definition:
 * @struts.form name="appRecordForm"
 */
public class AppRecordForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** phone property */
	private String phone;

	/** customer property */
	private String customer;

	/** cartype property */
	private long weight;

	/** des_address property */
	private String des_address;

	/** res_address property */
	private String res_address;

	/** scheduler property */
	private String scheduler;

	/** date property */
	private String date;

	/** predictday property */
	private Long predictday;

	/** id property */
	private Long id;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the phone.
	 * @return String
	 */
	public String getPhone() {
		return phone;
	}

	/** 
	 * Set the phone.
	 * @param phone The phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/** 
	 * Returns the user.
	 * @return String
	 */
	public String getCustomer() {
		return customer;
	}

	/** 
	 * Set the user.
	 * @param user The user to set
	 */
	public void setCustomer(String customer) {
		this.customer = customer;
	}

	/** 
	 * Returns the cartype.
	 * @return String
	 */
	public long getWeight() {
		return weight;
	}

	/** 
	 * Set the cartype.
	 * @param cartype The cartype to set
	 */
	public void setWeight(long weight) {
		this.weight = weight;
	}

	/** 
	 * Returns the des_address.
	 * @return String
	 */
	public String getDes_address() {
		return des_address;
	}

	/** 
	 * Set the des_address.
	 * @param des_address The des_address to set
	 */
	public void setDes_address(String des_address) {
		this.des_address = des_address;
	}

	/** 
	 * Returns the res_address.
	 * @return String
	 */
	public String getRes_address() {
		return res_address;
	}

	/** 
	 * Set the res_address.
	 * @param res_address The res_address to set
	 */
	public void setRes_address(String res_address) {
		this.res_address = res_address;
	}

	/** 
	 * Returns the scheduler.
	 * @return String
	 */
	public String getScheduler() {
		return scheduler;
	}

	/** 
	 * Set the scheduler.
	 * @param scheduler The scheduler to set
	 */
	public void setScheduler(String scheduler) {
		this.scheduler = scheduler;
	}

	/** 
	 * Returns the date.
	 * @return String
	 */
	public String getDate() {
		return date;
	}

	/** 
	 * Set the date.
	 * @param date The date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/** 
	 * Returns the predictday.
	 * @return String
	 */
	public Long getPredictday() {
		return predictday;
	}

	/** 
	 * Set the predictday.
	 * @param predictday The predictday to set
	 */
	public void setPredictday(Long predictday) {
		this.predictday = predictday;
	}

	/** 
	 * Returns the id.
	 * @return Long
	 */
	public Long getId() {
		return id;
	}

	/** 
	 * Set the id.
	 * @param id The id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
}