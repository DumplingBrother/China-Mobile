/**
 * 
 */
package com.clps.mobile.demo.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 *@author Ellis.Liu
 *Package_name:com.clps.mobile.demo.pojo
 *Time:2017年9月4日下午12:58:32
 *Description:顾客的pojo类
 */
public class Customer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -174742311129298946L;
	private int customer_id; //客户编号
	private String customer_username; //客户的用户名
	private String customer_name; //客户的姓名
	private String id_card_numb; //客户的银行卡号
	private String tel_numb; //客户的电话号码
	private Date customer_birthday; //客户生日
	private String customer_email; //客户邮箱
	private String customer_pwd; //客户账户的登录密码
	
	/**
	 * 
	 */
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the customer_id
	 */
	public int getCustomer_id() {
		return customer_id;
	}
	/**
	 * @param customer_id the customer_id to set
	 */
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	/**
	 * @return the customer_username
	 */
	public String getCustomer_username() {
		return customer_username;
	}
	/**
	 * @param customer_username the customer_username to set
	 */
	public void setCustomer_username(String customer_username) {
		this.customer_username = customer_username;
	}
	/**
	 * @return the customer_name
	 */
	public String getCustomer_name() {
		return customer_name;
	}
	/**
	 * @param customer_name the customer_name to set
	 */
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	/**
	 * @return the id_card_numb
	 */
	public String getId_card_numb() {
		return id_card_numb;
	}
	/**
	 * @param id_card_numb the id_card_numb to set
	 */
	public void setId_card_numb(String id_card_numb) {
		this.id_card_numb = id_card_numb;
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
	 * @return the customer_birthday
	 */
	public Date getCustomer_birthday() {
		return customer_birthday;
	}
	/**
	 * @param customer_birthday the customer_birthday to set
	 */
	public void setCustomer_birthday(Date customer_birthday) {
		this.customer_birthday = customer_birthday;
	}
	/**
	 * @return the customer_email
	 */
	public String getCustomer_email() {
		return customer_email;
	}
	/**
	 * @param customer_email the customer_email to set
	 */
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	/**
	 * @return the customer_pwd
	 */
	public String getCustomer_pwd() {
		return customer_pwd;
	}
	/**
	 * @param customer_pwd the customer_pwd to set
	 */
	public void setCustomer_pwd(String customer_pwd) {
		this.customer_pwd = customer_pwd;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Customer [customer_id=" + customer_id + ", customer_username=" + customer_username + ", customer_name="
				+ customer_name + ", id_card_numb=" + id_card_numb + ", tel_numb=" + tel_numb + ", customer_birthday="
				+ customer_birthday + ", customer_email=" + customer_email + ", customer_pwd=" + customer_pwd + "]";
	}
	

}
