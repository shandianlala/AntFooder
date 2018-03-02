package com.sdll.antfooder.service.impl;

import java.util.List;
import java.util.UUID;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdll.antfooder.dao.MenuMapper;
import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.service.IMenuService;
import com.sdll.antfooder.util.Conts;
import com.sdll.antfooder.util.PageUtil;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;
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

	@Override
	public PageVo<Menu> listMenuByPage(Menu menu ,PageConfig page) {
		// TODO Auto-generated method stub
		page.setPageIndex((page.getPageNum()-1)*page.getPageSize());
		List<Menu> list = menuMapper.selectMenuByPage(page.getPageIndex(),page.getPageSize(),menu.getMenuType(),menu.getMenuName());
		Integer rowCount = menuMapper.countMenu(menu.getMenuType(),menu.getMenuName());
		if(rowCount!=null){
			page.setRowCount(rowCount);
		}
		PageVo<Menu> pageList = PageUtil.getPageList(page , list);
		
		return pageList;
	}

	@Override
	public int insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		menu.setMenuId(UUID.randomUUID().toString().replace("-", ""));
		menu.setMenuState(Conts.STATE_OK);
		return menuMapper.insert(menu);
	}

	@Override
	public int updateMenuBymenuId(Menu menu) {
		// TODO Auto-generated method stub
		return menuMapper.updateByPrimaryKey(menu);
	}
	
	

}
