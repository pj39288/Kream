package com.doongie.kream.bid.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.doongie.kream.bid.model.Bid;

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
	

}
