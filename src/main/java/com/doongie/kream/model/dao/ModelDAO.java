package com.doongie.kream.model.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ModelDAO {
	
	public int insertModel(
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

}
