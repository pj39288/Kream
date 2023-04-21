package com.doongie.kream.goods.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.doongie.kream.goods.model.Goods;

@Repository
public interface GoodsDAO {
	
	public int insertGoods(
			@Param("brand") String brand
			, @Param("modelNumber") String modelNumber
			, @Param("modelEnglishName") String modelEnglishName
			, @Param("modelKoreanName") String modelKoreanName
			, @Param("launchDate") Date launchDate
			, @Param("mainColor") String mainColor
			, @Param("launchPrice") int launchPrice
			, @Param("imagePath") String imagePath
			, @Param("category") String category
			, @Param("gender") String gender);
	
	public List<Goods> selectGoodsList(@Param("category") String category);

}
