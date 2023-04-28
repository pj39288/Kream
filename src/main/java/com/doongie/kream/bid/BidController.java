package com.doongie.kream.bid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/bid")
public class BidController {
	
	@GetMapping("/create/view")
	public String bidInput(
			@RequestParam("modelId") int modelId
			, @RequestParam("act") String act
			, @RequestParam("size") String size) {
		
		return "/goods/bid";
	}

}
