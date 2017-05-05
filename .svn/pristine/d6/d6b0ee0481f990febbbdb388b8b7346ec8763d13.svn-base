package com.ssdut.KindGardenProject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssdut.KindGardenProject.dao.TeacherMapper;
import com.ssdut.KindGardenProject.pojo.Teacher;
import com.ssdut.KindGardenProject.util.PublicMethod;

@Service
public class TeacherServiceIpl {
	@Autowired
	private TeacherMapper teacherMapper;
    public List<Teacher> getAllTeachersByGID(Integer gid){
    	return teacherMapper.getAllTeachersByGID(gid);
    }
	
    public int deleteByPrimaryKey(String tid){
    	if(PublicMethod.isNumeric(tid)){
    		Integer id=Integer.valueOf(tid);
    		return teacherMapper.deleteByPrimaryKey(id);
    	}
    	return -1;
    }

    public int insert(Teacher record){
    	return teacherMapper.insert(record);
    }

    public int insertSelective(Teacher record){
    	return teacherMapper.insertSelective(record);
    }

    public Teacher selectByPrimaryKey(Integer tid){
    	return teacherMapper.selectByPrimaryKey(tid);
    }

    public int updateByPrimaryKeySelective(Teacher record){
    	return teacherMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Teacher record){
    	return teacherMapper.updateByPrimaryKey(record);
    }
	
}
