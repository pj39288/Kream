package com.doongie.kream.bid.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doongie.kream.bid.dao.BidDAO;
import com.doongie.kream.bid.model.Bid;
import com.doongie.kream.bid.model.Deal;

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
	
	
	public int addDeal(		
			int buyerId
			, int sellerId
			, int modelId
			, int price
			, String size) {
		
		bidDAO.deleteBid(modelId, price, size);
		
		return bidDAO.insertDeal(buyerId, sellerId, modelId, price, size);
	}
	
	public List<Deal> getDeal(
			int modelId
			, String size) {
		
		return bidDAO.selectDeal(modelId, size);
		
	}
	
	

}
