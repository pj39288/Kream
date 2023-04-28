package com.doongie.kream.bid.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BidDAO {
	
	public int insertBid(
			HttpSession session
			, @Param("modelId") int modelId
			, @Param("act") String act
			, @Param("price") int price
			, @Param("size") String size
			, @Param("address") String address
			, @Param("account") String account);
	

}
