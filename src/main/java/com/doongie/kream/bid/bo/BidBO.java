package com.doongie.kream.bid.bo;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.doongie.kream.bid.dao.BidDAO;

@Service
public class BidBO {
	
	private BidDAO bidDAO;
	
	public int addBid(
			HttpSession session
			, int modelId
			, String act
			, int price
			, String size
			, String address
			, String account) {
		
		return bidDAO.insertBid(session, modelId, act, price, size, address, account);
		
	}
	

}
