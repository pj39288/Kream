package com.doongie.kream.bid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.doongie.kream.bid.bo.BidBO;
import com.doongie.kream.bid.model.Bid;
import com.doongie.kream.goods.bo.GoodsBO;
import com.doongie.kream.goods.model.Goods;

@Controller
@RequestMapping("/bid")
public class BidController {
	
	@Autowired
	private BidBO bidBO;	
	
	@Autowired
	private GoodsBO goodsBO;
	
	@GetMapping("/create/view")
	public String bidInput(
			@RequestParam("modelId") int modelId
			, @RequestParam("act") String act
			, @RequestParam("size") String size
			, Model model) {
		
		Bid bid = bidBO.getBid(modelId, act, size);
		
		model.addAttribute("bid", bid);
		
		
		Goods goods = goodsBO.getGoodsDetail(modelId);
		
		model.addAttribute("goods", goods);
		
		
		return "/goods/bid";
	}

}
