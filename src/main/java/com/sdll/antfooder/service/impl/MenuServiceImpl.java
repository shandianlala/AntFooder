package com.sdll.antfooder.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdll.antfooder.dao.MenuMapper;
import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.service.IMenuService;
@Service
@Transactional
public class MenuServiceImpl implements IMenuService {

	@Autowired
	private MenuMapper menuMapper;
	
	@Override
	public List<Menu> listMenu() {
		
		return menuMapper.selectMenu();
	}

	@Override
	public Menu getMenuById(String menuId) {
		// TODO Auto-generated method stub
		return menuMapper.selectByPrimaryKey(menuId);
	}
	
	

}
