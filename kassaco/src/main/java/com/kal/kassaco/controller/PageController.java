package com.kal.kassaco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index (){
		ModelAndView mv =new ModelAndView("page");
	    mv.addObject("title", "Dashboard");
	    mv.addObject("userClickHome", true);
		return mv;
		
		
		
	}
	@RequestMapping(value="/profile")
	public ModelAndView profile (){
		ModelAndView mv =new ModelAndView("page");
	    mv.addObject("title", "Profile");
	    mv.addObject("userClickProfile", true);
		return mv;
		
		
		
	}
	@RequestMapping(value="/users")
	public ModelAndView users (){
		ModelAndView mv =new ModelAndView("page");
	    mv.addObject("title", "Users");
	    mv.addObject("userClickUsers", true);
		return mv;
		
		
		
	}

}
