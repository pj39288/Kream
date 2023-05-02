package com.doongie.kream.goods.model;

import java.util.Date;

public class Goods {
	
	private int id;
	private String brand;
	private String modelNumber;
	private String modelEnglishName;
	private String modelKoreanName;
	private Date launchDate;
	private String mainColor;
	private int launchPrice;
	private String imagePath;
	private String category;
	private String gender;
	private Date createdAt;
	private Date updatedAt;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModelNumber() {
		return modelNumber;
	}
	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}
	public String getModelEnglishName() {
		return modelEnglishName;
	}
	public void setModelEnglishName(String modelEnglishName) {
		this.modelEnglishName = modelEnglishName;
	}
	public String getModelKoreanName() {
		return modelKoreanName;
	}
	public void setModelKoreanName(String modelKoreanName) {
		this.modelKoreanName = modelKoreanName;
	}
	public Date getLaunchDate() {
		return launchDate;
	}
	public void setLaunchDate(Date launchDate) {
		this.launchDate = launchDate;
	}
	public String getMainColor() {
		return mainColor;
	}
	public void setMainColor(String mainColor) {
		this.mainColor = mainColor;
	}
	public int getLaunchPrice() {
		return launchPrice;
	}
	public void setLaunchPrice(int launchPrice) {
		this.launchPrice = launchPrice;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	

}
