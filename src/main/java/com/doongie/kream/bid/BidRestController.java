package com.doongie.kream.bid;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.doongie.kream.bid.bo.BidBO;
import com.doongie.kream.bid.model.Deal;

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
	
	
	
	@GetMapping("/deal")
	public Map<String, String> dealCreate(
			@RequestParam("modelId") int modelId
			, @RequestParam("act") String act
			, @RequestParam("price") int price
			, @RequestParam("size") String size
			, @RequestParam("userId") int userId
			, HttpSession session){
		
		
		int buyerId;
		int sellerId;
		
		
		if(act.equals("구매")) {
			
			buyerId = (Integer) session.getAttribute("id");
			sellerId = userId;
			
		} else {
			
			buyerId = userId;
			sellerId = (Integer) session.getAttribute("id");
			
		}
		
		
		int count = bidBO.addDeal(buyerId, sellerId, modelId, price, size);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	
	@GetMapping("/dealList")
	public List<Deal> getDeal(
			@RequestParam("modelId") int modelId
			, @RequestParam("size") String size){
		
		List<Deal> dealList = new ArrayList<>();

		dealList = bidBO.getDeal(modelId, size);
		
		return dealList;
		
		
		
	}
	


}
