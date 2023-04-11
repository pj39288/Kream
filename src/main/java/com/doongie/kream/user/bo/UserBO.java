package com.doongie.kream.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doongie.kream.common.EncryptService;
import com.doongie.kream.user.dao.UserDAO;
import com.doongie.kream.user.model.User;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;
	
	public int addUser(boolean is_manager, String email, String password, String userName) {
		
		String encryptPassword = EncryptService.md5(password);		
		
		return userDAO.insertUser(is_manager, email, encryptPassword, userName);
		
	}
	
	public User getUser(String email, String password) {
		
		String encryptPassword = EncryptService.md5(password);
		
		return userDAO.selectUser(email, encryptPassword);
	}

}
