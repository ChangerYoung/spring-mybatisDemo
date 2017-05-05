package com.ssdut.KindGardenProject.service;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.UserInfo;

public interface UserInfoService {
	List<UserInfo> getAllUsers();
	boolean checkLogin(String username,String password);
	 UserInfo selectByPrimaryKey(Integer id);
	 int insert(UserInfo record);
	 int updateByPrimaryKey(UserInfo record);
	 int deleteByPrimaryKey(Integer id);
}
