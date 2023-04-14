package com.doongie.kream.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.doongie.kream.model.bo.ModelBO;

@RestController
@RequestMapping("/model")
public class ModelRestController {
	
	@Autowired	
	private ModelBO modelBO;
	
	@PostMapping("/create")
	public Map<String, String> modelCreate(
			@RequestParam("brand") String brand
			, @RequestParam("modelNumber") String modelNumber
			, @RequestParam("modelEnglishName") String modelEnglishName
			, @RequestParam("modelKoreanName") String modelKoreanName
			, @RequestParam("launchDate") Date launchDate
			, @RequestParam("maincolor") String mainColor
			, @RequestParam("launchPrice") int launchPrice
			, @RequestParam(value="file", required=true) MultipartFile file
			, @RequestParam("category") String category
			, @RequestParam("gender") String gender
			, HttpSession session) {
		
		Map<String, String> resultMap = new HashMap<>();
		
		int count = modelBO.addModel(brand, modelNumber, modelEnglishName, modelKoreanName, launchDate, mainColor, launchPrice, file, category, gender, session);
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}

}
