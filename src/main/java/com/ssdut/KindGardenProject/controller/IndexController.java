package com.ssdut.KindGardenProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
}