/**
 * 
 */
package com.clps.mobile.demo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clps.mobile.demo.mapper.AccountMapper;
import com.clps.mobile.demo.pojo.Account;
import com.clps.mobile.demo.service.AccountService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 *@author Ellis.Liu
 *Package_name:com.clps.mobile.demo.service.impl
 *Time:2017年9月4日下午1:11:51
 *Description:
 */
@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountMapper accountMapper;

	/* (non-Javadoc)
	 * @see com.clps.mobile.demo.service.AccountService#findAll(int, int)
	 */
	@Override
	public Map<String, Object> findAll(int page, int rows) {
		PageHelper.startPage(page, rows);
		List<Account> list= accountMapper.selectAll();
		PageInfo<Account> pageInfo= new PageInfo<Account>(list);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("page", pageInfo.getPages());
		map.put("rows", pageInfo.getList());
		map.put("start", pageInfo.getStartRow());
		map.put("total", pageInfo.getTotal());
		return map;

	}

}
