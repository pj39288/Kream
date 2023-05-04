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
		
		
		Bid bidBuy = bidBO.getBid(modelId, "구매", size);		
		
		Bid bidSell = bidBO.getBid(modelId, "판매", size);
		
		model.addAttribute("bidBuy", bidBuy);
		
		model.addAttribute("bidSell", bidSell);
		
	
		Goods goods = goodsBO.getGoodsDetail(modelId);
		
		model.addAttribute("goods", goods);
		
		
		return "/goods/bid";
	}

}
