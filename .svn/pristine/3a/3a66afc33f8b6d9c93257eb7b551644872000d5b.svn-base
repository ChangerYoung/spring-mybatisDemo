package com.ssdut.KindGardenProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssdut.KindGardenProject.pojo.ClassInfo;
import com.ssdut.KindGardenProject.pojo.Teacher;
import com.ssdut.KindGardenProject.service.impl.ClassInfoImpl;

@Controller
@RequestMapping("/class")
public class ClassInfoController {
	@Autowired
	private ClassInfoImpl classinfoImpl;
	
	@RequestMapping(value = "/addClass", method = RequestMethod.POST)
	public String addClass(HttpServletRequest request){
		String classname=request.getParameter("ClassName");
		int classcount=Integer.parseInt(request.getParameter("ClassCount"));
		ClassInfo classinfo=new ClassInfo();
		classinfo.setClassname(classname);
		classinfo.setClasscount(classcount);
		int res=classinfoImpl.insert(classinfo);
		if(res>0){
			return "redirect:/class/getClassInfoList";
		}
		else{
			return "error";
		}	
	}
	
	
	@RequestMapping("/getClassInfoList")
	@ResponseBody
	public ModelAndView getClassInfoList(){
		ModelAndView mav=new ModelAndView("classInfo");
		List<ClassInfo> list=classinfoImpl.getAllClassInfo();
		mav.addObject("AllClassModel",list);
		return mav;
	}
	
	@RequestMapping("/initViewPage")
	public String initViewPage(HttpServletRequest request){
		ClassInfo classinfo=new ClassInfo();
		int cid=Integer.valueOf(request.getParameter("cid"));
		classinfo=classinfoImpl.selectByPrimaryKey(cid);
		request.setAttribute("classinfo", classinfo);
		return "classInfoView";
	}
	
	@RequestMapping("/initAddPage")
	public String initAddPage(HttpServletRequest request){
		return "classAdd";
	}
	
	@RequestMapping("/initEditPage")
	public String getClassInfoByCID(HttpServletRequest request){
		ClassInfo classinfo=new ClassInfo();
		int cid=Integer.valueOf(request.getParameter("cid"));
		classinfo=classinfoImpl.selectByPrimaryKey(cid);
		request.setAttribute("classinfo", classinfo);
		return "classInfoEdit";
	}
	
	@RequestMapping("/editClassInfo")
	public String editClassInfo(ClassInfo classinfo){
//		String classname=request.getParameter("classname");
//		int classcount=Integer.parseInt(request.getParameter("classcount"));
//		classinfo.setClassname(classname);
//		classinfo.setClasscount(classcount);
		int res=classinfoImpl.updateByPrimaryKeySelective(classinfo);
		if(res>0){
			return "redirect:/class/getClassInfoList";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping("/deleteByTID")
	public String deleteByTID(HttpServletRequest request){
		int cid=Integer.valueOf(request.getParameter("cid"));
		int res=classinfoImpl.deleteByPrimaryKey(cid);
		if(res<=0){
			return "error";//跳转到处所处理界面
		}
		else{
			return "redirect:/class/getClassInfoList";//跳转到新的controller，重新加载界面
		}
	}
	
	@RequestMapping("backToList")
	public String backToList(){
		return "redirect:/class/getClassInfoList";
	}
}
