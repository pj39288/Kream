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

}
