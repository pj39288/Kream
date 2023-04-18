package com.doongie.kream.model.bo;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.doongie.kream.common.FileManagerService;
import com.doongie.kream.model.dao.ModelDAO;
import com.doongie.kream.model.model.Model;

@Service
public class ModelBO {
	
	@Autowired
	private ModelDAO modelDAO;
	
	// BO는 file을 받아서 DAO에 imagePath를 전달한다
	public int addModel(
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
		
		return modelDAO.insertModel(brand, modelNumber, modelEnglishName, modelKoreanName, launchDate, mainColor, launchPrice, imagePath, category, gender);
	}
	
	public List<Model> getModelList() {
		 
		return modelDAO.selectModelList();
	}

}
