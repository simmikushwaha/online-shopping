package net.sim.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index()
	{
		
		ModelAndView mv=new ModelAndView("page");
		
		//mv.addObject("greeting","hey all");
		mv.addObject("title","Home");
		mv.addObject("userclickHome",true);
		return mv;
		
	}

	@RequestMapping(value= "/about")
	public ModelAndView about()
	{
		
		ModelAndView mv=new ModelAndView("page");
		
		mv.addObject("title","About us");
		mv.addObject("userClickAbout",true);
		return mv;
		
	}
	
	
	
	@RequestMapping(value= "/contact")
	public ModelAndView contact()
	{
		
		ModelAndView mv=new ModelAndView("page");
		
		mv.addObject("title","Contact us");
		mv.addObject("userClickcontact",true);
		return mv;
		
	}
	
	/*@RequestMapping(value= "/test")
	public ModelAndView index1(@RequestParam(value="greeting" ,required=false) String greeting)
	{
		if(greeting==null)
		{
			greeting="hey not good";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting", greeting);
		return mv;
		*/
	
	@RequestMapping(value= "/test/{greeting}")
	public ModelAndView index1(@PathVariable("greeting") String greeting)
	{
		if(greeting==null)
		{
			greeting="hey not good";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting", greeting);
		return mv;
	}

	
}
