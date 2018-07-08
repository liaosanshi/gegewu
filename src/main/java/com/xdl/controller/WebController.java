package com.xdl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {

	@RequestMapping("/study/index")
	public String toIndex(){
		return "index";//index.jsp,返回jsp页面名字
	}
	
	@RequestMapping("/study/course")
	public String toCourse(){
		return "course";//index.jsp,返回jsp页面名字
	}
	
	@RequestMapping("/study/search")
	public String toSearch(){
		return "search";//index.jsp,返回jsp页面名字
	}
	
	
	@RequestMapping("/study/course_list")
	public String toCourselist(){
		return "course_list";//index.jsp,返回jsp页面名字
	}
	
	@RequestMapping("/study/video")
	public String toVideo(){
		return "video";//index.jsp,返回jsp页面名字
	}
}
