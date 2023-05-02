package com.doongie.kream.bid.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doongie.kream.bid.dao.BidDAO;
import com.doongie.kream.bid.model.Bid;

@Service
public class BidBO {
	
	@Autowired
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
	
	
	
	public Bid getBid(
			int modelId
			, String act
			, String size) {
		
		return bidDAO.selectBid(modelId, act, size);

	}
	

}
