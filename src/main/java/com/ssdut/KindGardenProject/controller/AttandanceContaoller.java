package com.ssdut.KindGardenProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssdut.KindGardenProject.pojo.Attendance;
import com.ssdut.KindGardenProject.pojo.UserInfo;
import com.ssdut.KindGardenProject.service.impl.AttendanceServiceImpl;

@Controller
@RequestMapping("/attendance")
public class AttandanceContaoller {
	@Autowired
	AttendanceServiceImpl attendanceService ;
	@RequestMapping("/getAllAttendance")
	public ModelAndView getList(){
		List<Attendance> list = attendanceService.getAllAttendance();
			ModelAndView modelAndView=new ModelAndView("Attendance");
			modelAndView.addObject("attendances", list);
			return modelAndView; 
		
	}
	
	@RequestMapping("/add")
	public String add(){
		return "attendanceEdit";
	}
	@RequestMapping(value = "/editsubmit",method = RequestMethod.POST)
	public String saveOrUpdate(Attendance attendance){
		//System.out.println(attendance);
		if(attendance.getId()==null){
			attendanceService.insert(attendance);
		}else{
			attendanceService.updateByPrimaryKey(attendance);
		}
		return "redirect:getAllAttendance";
	}
	@RequestMapping(value="/edit",method = RequestMethod.GET)
	public ModelAndView editAttendance(HttpServletRequest request){
		int id = Integer.valueOf(request.getParameter("id"));
		Attendance attendance = attendanceService.getAttendanceByID(id);
		//System.out.println(attendance);
		ModelAndView modelandview = new ModelAndView("attendanceEdit");
		modelandview.addObject("attendance", attendance);
		return modelandview;
	}
	
	@RequestMapping(value="/delete",method = RequestMethod.GET)
	public String DeleteAttendanceByID(HttpServletRequest request){
		int id = Integer.valueOf(request.getParameter("id"));
		attendanceService.deleteAttendanceByID(id);
		
		return "redirect:getAllAttendance";
	}
}
