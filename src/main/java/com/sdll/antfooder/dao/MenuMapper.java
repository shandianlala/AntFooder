package com.sdll.antfooder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.vo.PageConfig;

public interface MenuMapper {
    int deleteByPrimaryKey(String menuId);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(String menuId);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
    
    List<Menu> selectMenu();
    
    List<Menu> selectMenuByPage(@Param("pageIndex") int pageIndex , @Param("pageSize")int pageSize,
    		@Param("menuType")String menuType , @Param("menuName")String menuName);
    
    Integer countMenu(@Param("menuType")String menuType , @Param("menuName")String menuName);
}