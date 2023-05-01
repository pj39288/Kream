package com.doongie.kream.bid.bo;

import org.springframework.stereotype.Service;

import com.doongie.kream.bid.dao.BidDAO;

@Service
public class BidBO {
	
	private BidDAO bidDAO;
	
	public int addBid(
			int userId
			, int modelId
			, String act
			, int price
			, String size
			, String address
			, String account) {
		
		return bidDAO.insertBid(userId, modelId, act, price, size, address, account);
		
	}
	

}
