package com.doongie.kream.bid.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.doongie.kream.bid.model.Bid;
import com.doongie.kream.bid.model.Deal;

@Repository
public interface BidDAO {
	
	public int insertBid(
			@Param("userId") int userId
			, @Param("modelId") int modelId
			, @Param("act") String act
			, @Param("price") int price
			, @Param("size") String size
			, @Param("address") String address
			, @Param("account") String account);
	
	public Bid selectBid(
			@Param("modelId") int modelId
			, @Param("act") String act
			, @Param("size") String size);
	
	public int insertDeal(		
			@Param("buyerId") int buyerId
			, @Param("sellerId") int sellerId
			, @Param("modelId") int modelId
			, @Param("price") int price
			, @Param("size") String size);
	
	public int deleteBid(
			@Param("modelId") int modelId
			, @Param("price") int price
			, @Param("size") String size);
	
	public List<Deal> selectDeal(
			@Param("modelId") int modelId
			, @Param("size") String size);
	
	

}
