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
	
	
	public int editUser(String email, String password, String userName, String phoneNumber, String address, int id) {
		
		User user = getUserById(id);
		
		String encryptPassword = "";
		
		if(password.equals("")) {
			encryptPassword = user.getPassword();
		} else {			
			encryptPassword = EncryptService.md5(password);
		}
		
		return userDAO.updateUser(email, encryptPassword, userName, phoneNumber, address, id);
	}
	
	public User getUserById(int id) {
		
		return userDAO.selectUserById(id);
	}
	
	

}
