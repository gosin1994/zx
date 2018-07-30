package com.zx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zx.common.page.Page;
import com.zx.entity.Commission;

public interface CommissionDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Commission record);

    int insertSelective(Commission record);

    Commission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Commission record);

    int updateByPrimaryKey(Commission record);

	List<Commission> selectAll(@Param("query")Commission query, Page<Commission> page);

	List<Commission> selectByMemberId(Integer memberId);
	
	List<Commission> selectByOrderId(Integer orderId);
	
	
}