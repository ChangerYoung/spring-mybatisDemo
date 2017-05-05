package com.ssdut.KindGardenProject.service;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.ClassInfo;
import com.ssdut.KindGardenProject.pojo.Teacher;

public interface ClassInfoService{
	
	List<ClassInfo> getAllClassInfo();
	
	int deleteByPrimaryKey(Integer classid);

    int insert(ClassInfo record);

    int insertSelective(ClassInfo record);

    ClassInfo selectByPrimaryKey(Integer classid);

    int updateByPrimaryKeySelective(ClassInfo record);

    int updateByPrimaryKey(ClassInfo record);
    
}