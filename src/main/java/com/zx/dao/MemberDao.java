package com.zx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zx.common.page.Page;
import com.zx.entity.Member;

public interface MemberDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer id);
    
    List<Member> selectChildren(Integer id);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);

	List<Member> selectAll(@Param("query")Member query, Page<Member> page);

	Member selectByPhone(String phone);
}