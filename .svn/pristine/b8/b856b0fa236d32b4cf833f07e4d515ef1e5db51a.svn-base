package com.ssdut.KindGardenProject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssdut.KindGardenProject.dao.UserInfoMapper;
import com.ssdut.KindGardenProject.pojo.UserInfo;
import com.ssdut.KindGardenProject.service.UserInfoService;
@Service
public class UserInfoServiceImpl implements UserInfoService{
	@Autowired
	private UserInfoMapper userInfoMapper;
	public List<UserInfo> getAllUsers() {
		// TODO Auto-generated method stub
		return userInfoMapper.getAllUsers();
	}
	public boolean checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		UserInfo user =userInfoMapper.getUserByName(username);
		if(username==null||"".equals(username)||password==null||"".equals(password))
			return false;
		if(user!=null&&password.equals(user.getPassword())){
			return true;
		}
		return false;
	}
	public UserInfo selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return userInfoMapper.selectByPrimaryKey(id);
	}
	public int insert(UserInfo record) {
		// TODO Auto-generated method stub
		return userInfoMapper.insert(record);
	}
	public int updateByPrimaryKey(UserInfo record) {
		// TODO Auto-generated method stub
		return userInfoMapper.updateByPrimaryKey(record);
	}
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return userInfoMapper.deleteByPrimaryKey(id);
	}

}
