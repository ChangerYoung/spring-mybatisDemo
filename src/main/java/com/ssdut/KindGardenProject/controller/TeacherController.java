package com.ssdut.KindGardenProject.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssdut.KindGardenProject.pojo.Teacher;
import com.ssdut.KindGardenProject.service.impl.TeacherServiceIpl;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	@Autowired
	private TeacherServiceIpl teacherServiceIpl;
	
	/*
	 * 根据幼儿园ID，获得教师信息列表*/
	@RequestMapping("/getListByGID")
	public ModelAndView getListByGID(){
		/*HttpServletRequest request;
		request.getSession().getAttribute(name)*/
		int gid=1;
		ModelAndView mav=new ModelAndView("teacherList");
		List<Teacher> list=teacherServiceIpl.getAllTeachersByGID(gid);
		mav.addObject("AllTeacherModel",list);
		return mav;
	}
	
	/*
	 * 根据教师ID，删除教师信息*/
	@RequestMapping("/deleteByTID")
	public String deleteByTID(HttpServletRequest request){
		String tid=request.getParameter("tid");
		int res=teacherServiceIpl.deleteByPrimaryKey(tid);
		if(res<=0){
			return "error";//跳转到处所处理界面
		}
		else{
			return "redirect:/teacher/getListByGID";//跳转到新的controller，重新加载界面
		}
	}
	
	@RequestMapping("/initAddPage")
	public String initAddPage(HttpServletRequest request){
		return "teacherAdd";
	}
	
	@RequestMapping("/initEditPage")
	public String getTeacherByTID(HttpServletRequest request){
		Teacher teacher=new Teacher();
		int tid=Integer.valueOf(request.getParameter("tid"));
		teacher=teacherServiceIpl.selectByPrimaryKey(tid);
		request.setAttribute("teacher", teacher);
		return "teacherEdit";
	}
	
	@RequestMapping("/initViewPage")
	public String initViewPage(HttpServletRequest request){
		Teacher teacher=new Teacher();
		int tid=Integer.valueOf(request.getParameter("tid"));
		teacher=teacherServiceIpl.selectByPrimaryKey(tid);
		request.setAttribute("teacher", teacher);
		return "teacherView";
	}
	
	
	@RequestMapping("/addTeacher")
	public String addTeacher(Teacher teacher){
		teacher.setGid(1);
		int res=teacherServiceIpl.insertSelective(teacher);
		if(res>0){
			return "redirect:/teacher/getListByGID";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/editTeacher")
	public String editTeacher(Teacher teacher){
		int res=teacherServiceIpl.updateByPrimaryKeySelective(teacher);
		if(res>0){
			return "redirect:/teacher/getListByGID";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("backToList")
	public String backToList(){
		return "redirect:/teacher/getListByGID";
	}
}
