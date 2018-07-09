package com.sesoc.projectTwo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PrController {
	
	@RequestMapping(value = "/prMain", method = RequestMethod.GET)
	public String pr(){
		return "PR/prMain";
	}

	@RequestMapping(value = "/prGomin", method = RequestMethod.GET)
	public String prGomin(Model model)
	{
		int godong = (int)(Math.random()*10 +1);
		model.addAttribute("godong", godong);	
		return "PR/prGomin";
	}
}
