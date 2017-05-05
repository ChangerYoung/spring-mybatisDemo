package com.ssdut.KindGardenProject.dao;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.Attendance;

public interface AttendanceMapper {
	
	List<Attendance> getAllAttendance();
	
    int deleteByPrimaryKey(Integer id);

    int insert(Attendance record);

    int insertSelective(Attendance record);

    Attendance selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Attendance record);

    int updateByPrimaryKey(Attendance record);
}