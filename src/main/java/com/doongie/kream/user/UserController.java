package com.doongie.kream.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	// 회원가입 페이지
	@GetMapping("/signup/view")
	public String signupInput() {
		
		return "/user/signup"; 
		
	}
	
	// 로그인 페이지
	@GetMapping("/login/view")
	public String loginInput() {
		
		return "/user/login";
	}
	
	// 로그아웃 기능 (단순해서 여기에 그냥 넣은듯?)
	@GetMapping("/logout/view")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("email");
		session.removeAttribute("userName");
		
		return "redirect:/user/login/view";

	}
	
	// 회원정보 편집 페이지
	@GetMapping("/edit/view")
	public String editInput(HttpServletRequest request) {
		return "/user/edit";
	}

}
