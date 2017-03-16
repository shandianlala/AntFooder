package com.sdll.antfooder.dao;

import com.sdll.antfooder.pojo.OrderDetail;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(String detailId);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(String detailId);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);
}