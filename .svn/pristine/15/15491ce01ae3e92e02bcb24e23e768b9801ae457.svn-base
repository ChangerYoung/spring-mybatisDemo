package com.ssdut.KindGardenProject.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssdut.KindGardenProject.dao.ClassInfoMapper;
import com.ssdut.KindGardenProject.pojo.ClassInfo;
import com.ssdut.KindGardenProject.service.ClassInfoService;
import com.ssdut.KindGardenProject.util.PublicMethod;

@Service
public class ClassInfoImpl implements ClassInfoService {
	
	@Autowired
	ClassInfoMapper classinfoMapper;

	public List<ClassInfo> getAllClassInfo() {
		// TODO Auto-generated method stub
		return classinfoMapper.getAllClassInfo();
	}

	public int deleteByPrimaryKey(Integer classid) {
		// TODO Auto-generated method stub
		return classinfoMapper.deleteByPrimaryKey(classid);
	}

	public int insert(ClassInfo record) {
		// TODO Auto-generated method stub
		return classinfoMapper.insert(record);
	}

	public int insertSelective(ClassInfo record) {
		// TODO Auto-generated method stub
		return classinfoMapper.insertSelective(record);
	}

	public ClassInfo selectByPrimaryKey(Integer classid) {
		// TODO Auto-generated method stub
		return classinfoMapper.selectByPrimaryKey(classid);
	}

	public int updateByPrimaryKeySelective(ClassInfo record) {
		// TODO Auto-generated method stub
		return classinfoMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(ClassInfo record) {
		// TODO Auto-generated method stub
		return classinfoMapper.updateByPrimaryKey(record);
	}


	
}
