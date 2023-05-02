package com.doongie.kream.bid;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.doongie.kream.bid.bo.BidBO;
import com.doongie.kream.bid.model.Bid;

@RestController
@RequestMapping("/bid")
public class BidRestController {
	
	@Autowired
	private BidBO bidBO;
	
	@GetMapping("/create")
	public Map<String, String> bidCreate(
			HttpSession session
			, @RequestParam("modelId") int modelId
			, @RequestParam("act") String act
			, @RequestParam("price") int price
			, @RequestParam("size") String size
			, @RequestParam(value = "address", required=false) String address
			, @RequestParam(value = "account", required=false) String account) {
		
		int userId = (Integer) session.getAttribute("id");
				
		int count = bidBO.addBid(userId, modelId, act, price, size, address, account);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
	


}
