package com.doongie.kream.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.doongie.kream.user.bo.UserBO;
import com.doongie.kream.user.model.User;

@RestController
@RequestMapping("/user")
public class UserRestController {
	
	@Autowired
	private UserBO userBO;
	
	@PostMapping("/signup")
	public Map<String, String> signup(
			@RequestParam("is_manager") boolean is_manager
			, @RequestParam("email") String email
			, @RequestParam("password") String password
			, @RequestParam("userName") String userName){
		
		
		int count = userBO.addUser(is_manager, email, password, userName);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
	
	
	
	@PostMapping("/login")
	public Map<String, String> login(
			@RequestParam("email") String email
			, @RequestParam("password") String password
			, HttpServletRequest request ){
		
		User user = userBO.getUser(email, password);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(user != null) {
			resultMap.put("result", "success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", user.getId());
			session.setAttribute("email", email);
			session.setAttribute("userName", user.getUserName());
			
		} else {
			resultMap.put("result", "fail");
		}
		
		// model.addAttribute("user", user);
		
		return resultMap;
	}
	
	
	
	@PostMapping("/edit")
	public Map<String, String> edit(
			@RequestParam("email") String email
			, @RequestParam("password") String password
			, @RequestParam("userName") String userName
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("address") String address
			, HttpSession session){
		
		int id = (Integer) session.getAttribute("id");
		
		int count = userBO.editUser(email, password, userName, phoneNumber, address, id);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	

}
