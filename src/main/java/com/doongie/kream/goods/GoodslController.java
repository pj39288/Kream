package com.doongie.kream.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.doongie.kream.goods.bo.GoodsBO;
import com.doongie.kream.goods.model.Goods;

@Controller
@RequestMapping("/goods")
public class GoodslController {
	
	@Autowired
	private GoodsBO goodsBO;
	
	@GetMapping("/create/view")
	public String goodsInput() {
		
		return "/goods/create";
	}
	
	@GetMapping("/list/view")
	public String goodsList(
			@RequestParam(value="category", required=false) String category
			,@RequestParam(value="gender", required=false) String gender
			, Model model) {
		
		List<Goods> goodsList =  goodsBO.getGoodsList(category, gender);
		
		model.addAttribute("goodsList", goodsList);
		
		return "/goods/list";
	}
	
	
	@GetMapping("/detail/view")
	public String goodsDetail(
			@RequestParam("modelId") int modelId
			, @RequestParam(value="size", required=false) String size
			, Model model) {
		
		Goods goods = goodsBO.getGoodsDetail(modelId);
		
		
		
		model.addAttribute("goods", goods);
		// size는 너무 간단한 값이라서 param 어노테이션으로 바로 사용가능하다
		// model.addAttribute("size", size);

		
		return "/goods/detail";
		
	}
	

}
