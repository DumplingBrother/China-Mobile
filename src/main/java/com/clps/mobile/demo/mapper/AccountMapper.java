/**
 * 
 */
package com.clps.mobile.demo.mapper;

import java.util.List;

import com.clps.mobile.demo.pojo.Account;

/**
 *@author Ellis.Liu
 *Package_name:com.clps.mobile.demo.mapper
 *Time:2017年9月4日下午1:10:52
 *Description:
 */
public interface AccountMapper {
	/**
	 * 
	 * @return List<Account>
	 */
	public List<Account> selectAll();

}
