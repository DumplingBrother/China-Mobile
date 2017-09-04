/**
 * 
 */
package com.clps.mobile.demo.pojo;

import java.io.Serializable;

/**
 *@author Ellis.Liu
 *Package_name:com.clps.mobile.demo.pojo
 *Time:2017年9月4日下午1:06:09
 *Description:电话号码的pojo类
 */
public class Mobile implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3643630490553580614L;
	
	private String tel_numb;
	private String tel_add;
	private String tel_type;
	private int acc_init_amount;
	private int is_sale;
	
	/**
	 * 
	 */
	public Mobile() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the tel_numb
	 */
	public String getTel_numb() {
		return tel_numb;
	}
	/**
	 * @param tel_numb the tel_numb to set
	 */
	public void setTel_numb(String tel_numb) {
		this.tel_numb = tel_numb;
	}
	/**
	 * @return the tel_add
	 */
	public String getTel_add() {
		return tel_add;
	}
	/**
	 * @param tel_add the tel_add to set
	 */
	public void setTel_add(String tel_add) {
		this.tel_add = tel_add;
	}
	/**
	 * @return the tel_type
	 */
	public String getTel_type() {
		return tel_type;
	}
	/**
	 * @param tel_type the tel_type to set
	 */
	public void setTel_type(String tel_type) {
		this.tel_type = tel_type;
	}
	/**
	 * @return the acc_init_amount
	 */
	public int getAcc_init_amount() {
		return acc_init_amount;
	}
	/**
	 * @param acc_init_amount the acc_init_amount to set
	 */
	public void setAcc_init_amount(int acc_init_amount) {
		this.acc_init_amount = acc_init_amount;
	}
	/**
	 * @return the is_sale
	 */
	public int getIs_sale() {
		return is_sale;
	}
	/**
	 * @param is_sale the is_sale to set
	 */
	public void setIs_sale(int is_sale) {
		this.is_sale = is_sale;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Mobile [tel_numb=" + tel_numb + ", tel_add=" + tel_add + ", tel_type=" + tel_type + ", acc_init_amount="
				+ acc_init_amount + ", is_sale=" + is_sale + "]";
	}
	

}
