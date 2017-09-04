/**
 * 
 */
package com.clps.mobile.demo.service;

import org.junit.Test;

import com.clps.mobile.demo.service.impl.AccountServiceImpl;

/**
 *@author Ellis.Liu
 *Package_name:com.clps.mobile.demo.service
 *Time:2017年9月4日下午1:31:35
 *Description:
 */
public class AccountServiceTest {
	AccountService as=new AccountServiceImpl();

	/**
	 * Test method for {@link com.clps.mobile.demo.service.AccountService#findAll(int, int)}.
	 */
	@Test
	public void testFindAll() {
		as.findAll(3, 10);
		
	}

}
