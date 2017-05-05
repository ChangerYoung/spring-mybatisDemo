package com.ssdut.KindGardenProject.service;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.Attendance;

public interface AttendanceService {

	public List<Attendance> getAllAttendance();
	public void insert(Attendance attendance);
	public void updateByPrimaryKey(Attendance attendance);
	public Attendance getAttendanceByID(int id);
	public int deleteAttendanceByID(int id);
}
