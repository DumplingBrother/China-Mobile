/**
 * 
 */
package com.clps.mobile.demo.pojo;

import java.io.Serializable;

/**
 * 
 *@author Ellis.Liu
 *Package_name:com.clps.mobile.demo.pojo
 *Time:2017年9月4日下午12:51:05
 *Description:账户的pojo类
 */
public class Account implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9049670740225711846L;
	private int account_id;//账户的编号
	private String tel_number;//电话号码
	private int account_balance;//账户余额
	
	/**
	 * 
	 */
	public Account() {
		super();
	}
	/**
	 * @return the account_id
	 */
	public int getAccount_id() {
		return account_id;
	}
	/**
	 * @param account_id the account_id to set
	 */
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	/**
	 * @return the tel_number
	 */
	public String getTel_number() {
		return tel_number;
	}
	/**
	 * @param tel_number the tel_number to set
	 */
	public void setTel_number(String tel_number) {
		this.tel_number = tel_number;
	}
	/**
	 * @return the account_balance
	 */
	public int getAccount_balance() {
		return account_balance;
	}
	/**
	 * @param account_balance the account_balance to set
	 */
	public void setAccount_balance(int account_balance) {
		this.account_balance = account_balance;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", tel_number=" + tel_number + ", account_balance="
				+ account_balance + "]";
	}
	

}
