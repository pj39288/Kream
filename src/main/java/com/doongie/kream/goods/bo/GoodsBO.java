package com.doongie.kream.goods.bo;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.doongie.kream.common.FileManagerService;
import com.doongie.kream.goods.dao.GoodsDAO;
import com.doongie.kream.goods.model.Goods;

@Service
public class GoodsBO {
	
	@Autowired
	private GoodsDAO goodsDAO;
	
	// BO는 file을 받아서 DAO에 imagePath를 전달한다
	public int addGoods(
			String brand
			, String modelNumber
			, String modelEnglishName
			, String modelKoreanName
			, Date launchDate
			, String mainColor
			, int launchPrice
			, MultipartFile file
			, String category
			, String gender
			, HttpSession session) {
		
		int userId = (Integer) session.getAttribute("id");
		
		String imagePath = FileManagerService.saveFile(userId, file);		
		
		return goodsDAO.insertGoods(brand, modelNumber, modelEnglishName, modelKoreanName, launchDate, mainColor, launchPrice, imagePath, category, gender);
	}
	
	
	
	public List<Goods> getGoodsList(String category, String gender) {
		
		return goodsDAO.selectGoodsList(category, gender);
	}
	
	public Goods getGoodsDetail(int modelId) {
		
		return goodsDAO.selectGoods(modelId);
	}
	

}
