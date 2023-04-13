package com.doongie.kream.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/model")
public class ModelController {
	
	@GetMapping("/create/view")
	public String modelInput() {
		
		return "/model/create";
		
	}

}
