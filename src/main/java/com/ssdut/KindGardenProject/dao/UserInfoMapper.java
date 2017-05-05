package com.ssdut.KindGardenProject.dao;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.UserInfo;

public interface UserInfoMapper {
	List<UserInfo> getAllUsers();
	
	UserInfo getUserByName(String username);
	
    int deleteByPrimaryKey(Integer id);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);
}