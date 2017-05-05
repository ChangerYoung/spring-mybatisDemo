package com.ssdut.KindGardenProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssdut.KindGardenProject.pojo.UserInfo;
import com.ssdut.KindGardenProject.service.impl.UserInfoServiceImpl;






@Controller
@RequestMapping("/user")
public class UserInfoController {
	@Autowired
	private UserInfoServiceImpl userInfoService;
	
	@RequestMapping("/getAllUsers")
	public ModelAndView  getList() {
		List<UserInfo> list = userInfoService.getAllUsers();
		//System.out.println(list);
		ModelAndView modelAndView=new ModelAndView("userManage");
		modelAndView.addObject("users", list);
		return modelAndView;
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String resSTR="";
		boolean res=userInfoService.checkLogin(username, password);
		if(res==true){
			resSTR="redirect:getAllUsers";
		}else{
			resSTR="error";
		}
		return resSTR;
	}
	@RequestMapping("add")
	public String add(){
		return "userEdit";
	}
	@RequestMapping(value = "/edit",method = RequestMethod.GET)
	public String edit(HttpServletRequest request){
		String id=request.getParameter("id");
		UserInfo user=userInfoService.selectByPrimaryKey(Integer.valueOf(id));
		request.setAttribute("user", user);
		
		return "userEdit";
	}
	@RequestMapping(value = "/editsubmit",method = RequestMethod.POST)
	public String saveOrUpdate(UserInfo user){
		System.out.println(user);
		if(user.getId()==null){
			userInfoService.insert(user);
		}else{
			userInfoService.updateByPrimaryKey(user);
		}
		return "redirect:getAllUsers";
	}
	@RequestMapping(value = "/delete",method = RequestMethod.GET)
	public String delete(HttpServletRequest request){
		String id=request.getParameter("id");
		int res=userInfoService.deleteByPrimaryKey(Integer.valueOf(id));
		
		return "redirect:getAllUsers";
	}
}
