package com.ssdut.KindGardenProject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssdut.KindGardenProject.dao.AttendanceMapper;
import com.ssdut.KindGardenProject.pojo.Attendance;
import com.ssdut.KindGardenProject.service.AttendanceService;
@Service
public class AttendanceServiceImpl implements AttendanceService{
	@Autowired
	private AttendanceMapper attendancemapper ;
	public List<Attendance> getAllAttendance(){
		return attendancemapper.getAllAttendance();
	}
	public void insert(Attendance attendance){
		attendancemapper.insert(attendance);
	}
	public void updateByPrimaryKey(Attendance attendance){
		attendancemapper.updateByPrimaryKey(attendance);
	}
	public Attendance getAttendanceByID(int id){
		return attendancemapper.selectByPrimaryKey(id);
	}
	public int deleteAttendanceByID(int id){
		return attendancemapper.deleteByPrimaryKey(id);
	}
}
